package com.dg.drgdataloader.main;

import java.util.Collection;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Vector;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.*;

import com.dg.drgdataloader.container.*;
import com.dg.drgdataloader.model.AhaHospitalEntry;
import com.dg.drgdataloader.model.DrgHospitalEntry;
import com.dg.drgdataloader.model.StateEntry;
import com.dg.drgdataloader.model.TreatmentEntry;

public class DrgLoader {
	public static void main(String[] args) {
		Scanner reader = new Scanner(System.in);  // Reading from System.in

		System.out.println("Verify Generic practitioner is already in the DB, and enter its id now:");
		System.out.println("In case practitioner is not in DB, use the following format to enter a doctor, re-run the program and use the new doctor's id");
		System.out.println("insert into practitioner (first_name, last_name, email, role, type, password) values ('Generic', 'Doctor', 'no-email@doctorglobe.com', 2, 1, SHA1('Password123'));");
		int practitionerId = reader.nextInt(); // Scans the next token of the input as an int.

		System.out.println("Remember, only non insurnace prices can be handled right now, as the system does not check for insurance when pulling entries ");
		System.out.println("and always inserts NULL for insurnace which means 'no insurance' ");
		System.out.println("Verify Treatment_DRG file match to Database [treatment id, specialty id and method id]. Press 1 if verified, press 0 to abort ");
		int n = reader.nextInt(); // Scans the next token of the input as an int.

		reader.close();
		if (n == 0) 
			System.exit(0);
		
		ApplicationContext 			 context 					= new ClassPathXmlApplicationContext("Beans.xml");
		CityContainer 				 cityContainer 				= new CityContainer(context);
		StateContainer 				 stateContainer 			= new StateContainer(context);
		HospitalContainer			 hospitalContainer 			= new HospitalContainer(context);
		TreatmentContainer			 treatmentContainer 		= new TreatmentContainer();
		HospitalSpecialtyContainer	 hospitalSpecialtyContainer = new HospitalSpecialtyContainer(context);
		HeaSpeTreMetContainer		 heaSpeTreMetContainer 		= new HeaSpeTreMetContainer(context);
		HeaSpeTreMetPracContainer	 heaSpeTreMetPracContainer 	= new HeaSpeTreMetPracContainer(context);
		DrgHospitalContainer		 drgHospitalContainer		= new DrgHospitalContainer();
		AhaHospitalContainer		 ahaHospitalContainer 		= new AhaHospitalContainer();

		Collection<TreatmentEntry> treatmentsToHandle = treatmentContainer.getAllTreatments();
		
		/*
		 * The for loop, for every treatment does the following:
		 * Creates a hash map with DRG hospital id as key, and list of DrgHospitalEntries (found in the Medicare file)
		 * with this DRG hospital id and a DRG code that is part of the treatment DRG group.
		 * In other words, each list within the value includes entries for the same hospital 
		 * and with DRG codes that are related to the current treatment 
		 * 
		 * The next part of the loop, picks up the proper DRG entry per hospital (based on date that was loaded for each TreatmentEntry,
		 * combine all discharges and enter the data to the DB.
		 */
		for (TreatmentEntry treatmentEntry : treatmentsToHandle) {
			// A treatment is based on multiple DRG codes. (among other things, to ensure proper discharges counts)
			List<String> drgCodes = treatmentEntry.getDrgCodes();
			
			// Lists of matching DRG hospital entries for the current DRG code, hashed by their DRG hospital id
			HashMap<String, List<DrgHospitalEntry>> allDrgHospitalsEntrisForTreatment = new HashMap<String, List<DrgHospitalEntry>>();
			
			System.out.println("======================================================================================");
			System.out.println(" Treatment: " + treatmentEntry.getTreatmentName() + "  ===============");
			System.out.println("======================================================================================");
			
			// Create a hash map of hospitals by hospital id for all entries related to the current treatment (which may have group of DRG codes)
			for (String drgCode : drgCodes) {
				// All DRG hospitals for the current code
				Collection<DrgHospitalEntry> allDrgHospitalsForDrgCode = drgHospitalContainer.getDrgHospitalsForDrgCode(drgCode);
				
				// Enter each hospital found for the DRG code, into its hospital related list.
				for (DrgHospitalEntry drgHospitalEntry : allDrgHospitalsForDrgCode) {
					// Get the drgHospitalEntry list for this specific hospital (so we can add this drgHospitalEntry into this list) 
					List<DrgHospitalEntry> thisHospitalDrgEntriesForTreatment = allDrgHospitalsEntrisForTreatment.get(drgHospitalEntry.getProviderId());

					// If the list does not exist yet, create it, and add it to the master structure that holds all those lists.
					if (thisHospitalDrgEntriesForTreatment == null) {
						thisHospitalDrgEntriesForTreatment = new Vector<DrgHospitalEntry>();
						allDrgHospitalsEntrisForTreatment.put(drgHospitalEntry.getProviderId(), thisHospitalDrgEntriesForTreatment);
					}
					// Add the specific drg hospital to the hospital list for the current drg codes.
					thisHospitalDrgEntriesForTreatment.add(drgHospitalEntry);
				}
			}

//			drgHospitalContainer.addForDebugging(treatmentEntry, allDrgHospitalsEntrisForTreatment); // For debugging only
			
			// Each list in the collection holds entries for the same hospital. All entries are related to the given treatment
			Collection<List<DrgHospitalEntry>> 	drgHospitalsLists = allDrgHospitalsEntrisForTreatment.values();
			
			// For each hospital, pick up the list of entries in the DRG for the current treatment
			for (List<DrgHospitalEntry> drgHospitalsList : drgHospitalsLists) {
				DrgHospitalEntry drgEntry 	= drgHospitalsList.get(0);	// All hospitals in this list are the same. So just pickup the first one for generic data
				
				if (! hospitalContainer.isIgnoreHospital(drgEntry)) {
					double 	providerChargesForLeadingDrg  = 0; // This represents the price of the leading DRG code for that treatment
					int		providerDischarges  		  = 0; // this represents the sum of all discharges for the DRG group
					String	selectedDRG					  = null; // For debugging only
					boolean leadingDrgEntryFound		  = false;
					
					System.out.println("...");
					System.out.println("Combining " + drgHospitalsList.size() + " DRG entries for hospital: " + drgEntry.getProviderId() + ", " + drgEntry.getProviderName() + ", " + drgEntry.getProviderCity() + ", " + drgEntry.getProviderStateCode());

					// Only one of the grouped DRG entries should be entered to the DB. However, all discharges should be summed together.
					for (DrgHospitalEntry drgHospitalEntry : drgHospitalsList) {
						System.out.println("... Entry DRG code, price, discharges: [" + drgHospitalEntry.getDrgCode() + ", " + drgHospitalEntry.getProviderCoveredCharged() + ", " + drgHospitalEntry.getProviderDischarges() + "]");

						// Check if this is the Drg entry (within all DRG entries of this hospital for this treatment) with the leading drg code for this treatment
						if (treatmentEntry.getLeadingDrgCode().equals(drgHospitalEntry.getDrgCode())) {
							providerChargesForLeadingDrg  = drgHospitalEntry.getProviderCoveredCharged();
							selectedDRG					  = drgHospitalEntry.getDrgCode(); 	// For debugging only
							leadingDrgEntryFound		  = true;
						}
						providerDischarges += drgHospitalEntry.getProviderDischarges();
					}
					
					if (leadingDrgEntryFound) {
						// insert city and hospital if needed. Get back their IDs
						StateEntry		 		 stateEntry 		 = stateContainer.getState(drgEntry.getProviderStateCode(), "United States");
						int 			 		 cityId 			 = cityContainer.process(context, drgEntry, stateEntry.getStateId(), stateEntry.getCountryId(), "United States");
						AhaHospitalEntry		 ahaHospitalEntry    = ahaHospitalContainer.get(drgEntry.getProviderId());
						int  hospitalId = hospitalContainer.process(context, drgEntry, cityContainer.getCity(drgEntry), ahaHospitalEntry);
						
						// insert an entry into hospital_spcialty table if needed (for the given DRG hospital and the treatment of the given DRG code). Get back its Id.
						int hospitalSpecialtyId = hospitalSpecialtyContainer.process(context, hospitalId, treatmentEntry.getSpecialtyId(), treatmentEntry.getSpecialtyName());
						
						// insert an entry into hospital_spcialty_treatment_method table if needed. Get back its Id.
						int heaSpeTreMetId = heaSpeTreMetContainer.process(context, hospitalSpecialtyId, treatmentEntry.getTreatmentId(), treatmentEntry.getMethodId(), providerChargesForLeadingDrg);

						heaSpeTreMetPracContainer.process(context, heaSpeTreMetId, practitionerId, providerDischarges, providerChargesForLeadingDrg);

						System.out.println("---> Selecting [DRG code, Price, Discharge]: [" + selectedDRG + ", " + providerDischarges + ", " + providerChargesForLeadingDrg + "]. Done");
					}
					else
						System.out.println("---> No leading DRG code found - We will not offer this hospital for this treatment");
				}
			}
			System.out.println("");
	    }
		printStats(cityContainer, hospitalContainer, hospitalSpecialtyContainer, heaSpeTreMetContainer, heaSpeTreMetPracContainer, drgHospitalContainer);
	}
	
	private static void printStats(CityContainer cc, HospitalContainer hc, HospitalSpecialtyContainer hsc, HeaSpeTreMetContainer hstm, 
								   HeaSpeTreMetPracContainer hstmp, DrgHospitalContainer drgc) {
		System.out.println("");
		System.out.println("Found " + cc.getCountDBCities() 	+ " Cities in the Database");
		System.out.println("Found " + hc.getCountDBHospitals() 	+ " Hospitals in the Database");
		System.out.println("Found " + drgc.numOfEntries() 		+ " entries in the DRG file");
		System.out.println("Found " + hsc.getCountDBEntres() 	+ " Hospital_specialties in the database");
		System.out.println("Found " + hstm.getCountDBEntres() 	+ " Hospital_specialties_treatment_method in the database");
		System.out.println("Found " + hstmp.getCountDBEntres() 	+ " Hospital_specialties_treatment_method_practitioner with insurance [Null] in the database");
		System.out.println("");
		
		System.out.println("Added " + cc.getCountCitiesAddedToDB() 		+ " new cities to the DB");
		System.out.println("Added " + hc.getCountHospitalsAddedToDB() 	+ " new hospitals to the DB");
		System.out.println("Added " + hsc.getCountEntriesAddedToDB() 	+ " new hospital_specialty to the DB");
		System.out.println("Added " + hstm.getCountEntriesAddedToDB() 	+ " new hospital_specialty_treatment_method to the DB");
		System.out.println("Added " + hstmp.getCountEntriesAddedToDB() 	+ " new hospital_specialty_treatment_method_practitioner with insurance [NULL] to the DB");
		System.out.println("");

		System.out.println("Found " + cc.getCountDuplicateCity() 	   + " duplicated cities that were already in the DB");
		System.out.println("Found " + hc.getCountDuplicateHospital()   + " duplicated hospitals that were already in the DB");
		System.out.println("Found " + hsc.getCountDuplicateEntries()   + " duplicated hospital_specialty that were already in the DB");
		System.out.println("Found " + hstm.getCountDuplicateEntries()  + " duplicated hospital_specialty_treatment_method that were already in the DB");
		System.out.println("Found " + hstmp.getCountDuplicateEntries() + " duplicated hospital_specialty_treatment_method_practitioner that were already in the DB");
	}
}
