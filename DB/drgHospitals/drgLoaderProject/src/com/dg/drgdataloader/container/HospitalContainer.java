package com.dg.drgdataloader.container;

import org.apache.commons.lang.WordUtils;
import org.springframework.context.ApplicationContext;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Hashtable;
import java.util.HashSet;

import com.dg.drgdataloader.jdbctemplate.HospitalEntryJDBCTemplate;
import com.dg.drgdataloader.model.AhaHospitalEntry;
import com.dg.drgdataloader.model.CityEntry;
import com.dg.drgdataloader.model.DrgHospitalEntry;
import com.dg.drgdataloader.model.HospitalEntry;

/*
 * Initialized with all hospitals in the database.
 * Responsible for adding more hospitals and add them to its list
 * Provide information about hospitals
 */
public class HospitalContainer {
	Hashtable<String, HospitalEntry> hospitalEntries 		= new Hashtable<String, HospitalEntry>();
	HashSet<String> 				 hospitalIdsToIgnore 	= new HashSet<String>();

	// Various data for statistics
	int countDuplicateHospitals = 0;
	int countHospitalAddedtoDB  = 0;
	int countInitial			= 0;
	
	public HospitalContainer(ApplicationContext context) {
		initFromDB(context);
		initDrgIdsToIgnore();
		countInitial = hospitalEntries.size();
	}
	
	public void printAll() {
		Enumeration<String> keys = hospitalEntries.keys();
		int i = 1;
		
		while (keys.hasMoreElements()) {
			String    		key		= keys.nextElement();
			HospitalEntry 	he    	= hospitalEntries.get(key);
			
			System.out.println("[" + i++ + "] " + he.getName());
		}
	}
	
	public int process(ApplicationContext context, DrgHospitalEntry drgEntry, CityEntry cityEntry, AhaHospitalEntry ahaHospitalEntry) {
		int hospitalId = 0;

		// Check if the hospital in the DRG/Medicare file already exists in the DB. 
		if (! hospitalExists(drgEntry)) {
			// All the DRG entries are in the US. No need to check hotels outside of the US 
			HospitalEntry 	hospitalEntry  = new HospitalEntry();
			
			hospitalEntry.setName(WordUtils.capitalizeFully(drgEntry.getProviderName()));
			hospitalEntry.setAddress(WordUtils.capitalizeFully(drgEntry.getProviderAddress()));
			hospitalEntry.setCityId(cityEntry.getCityId());
			hospitalEntry.setCityName(cityEntry.getCityName());  	// Not really needed as we use the city id.
			hospitalEntry.setZip(drgEntry.getProviderZip());
			hospitalEntry.setStateId(cityEntry.getStateId());  		// Not really needed as we use the city id.
			hospitalEntry.setStateCode(cityEntry.getStateCode());  	// Not really needed as we use the city id.
			hospitalEntry.setDrgId(drgEntry.getProviderId());		// The DRG hospital id
			hospitalEntry.setDrgHRR(drgEntry.getProviderHRR());

			// If the hospital exists in the aha file, augment the data with data from that entry
			if (ahaHospitalEntry != null) {
				hospitalEntry.setLat(ahaHospitalEntry.getLat());
				hospitalEntry.setLong(ahaHospitalEntry.getLon());
				hospitalEntry.setAdminName(ahaHospitalEntry.getAdminName());
				hospitalEntry.setAdminTitle(ahaHospitalEntry.getAdminTitle());
				hospitalEntry.setURL(ahaHospitalEntry.getHospitalURL());
				hospitalEntry.setAhaHospitalName(ahaHospitalEntry.getName());
				hospitalEntry.setAhaId(ahaHospitalEntry.getAhaId());
			}

			HospitalEntryJDBCTemplate hospitalEntryJDBCTemplate = (HospitalEntryJDBCTemplate)context.getBean("hospitalEntryJDBCTemplate");

			hospitalId = hospitalEntryJDBCTemplate.addHospital(hospitalEntry);
			String key = buildKey(hospitalEntry.getName(), hospitalEntry.getZip());

			hospitalEntry.sethospitalId(hospitalId);
			hospitalEntries.put(key, hospitalEntry);

			countHospitalAddedtoDB++;
		}
		else {
			countDuplicateHospitals++;
			HospitalEntry entry = getHospital(drgEntry);
			hospitalId = entry.getHospitalId();

		}
		
		return hospitalId;
	}
	
	public boolean isIgnoreHospital(DrgHospitalEntry drgEntry)
	{
		if (hospitalIdsToIgnore.contains(drgEntry.getProviderId()))
			return true;
		
		return false;
	}

	// Return the HospitalEntry (from the DB) that matches the given drg hospital's name and zip
	public HospitalEntry getHospital(DrgHospitalEntry drgEntry) {
		String key = buildKey(drgEntry.getProviderName(), drgEntry.getProviderZip());
		
		return hospitalEntries.get(key);
	}
	
	public int getCountHospitalsAddedToDB() {
		return countHospitalAddedtoDB;
	}
	public int getCountDuplicateHospital() {
		return countDuplicateHospitals;
	}
	public int getCountDBHospitals () {
		return countInitial;
	}
	
	private boolean hospitalExists(DrgHospitalEntry drgEntry) {
		String key = buildKey(drgEntry.getProviderName(), drgEntry.getProviderZip());
		
		return hospitalEntries.containsKey(key);
	}
		
	// Load all hospitals from the Database into a hash table <hospital Name, Hospital information>
	private void initFromDB(ApplicationContext context) {
		HospitalEntryJDBCTemplate 		 hospitalEntryJDBCTemplate 	= (HospitalEntryJDBCTemplate)context.getBean("hospitalEntryJDBCTemplate");
		List<HospitalEntry> 			 hospitalEntryList  	   	= hospitalEntryJDBCTemplate.pullAll();
		Iterator<HospitalEntry>			 it					   		= hospitalEntryList.iterator();
		
		while (it.hasNext()) {
			HospitalEntry 	hospitalEntry 	= (HospitalEntry)it.next();
			String	  		key				= buildKey(hospitalEntry.getName(), hospitalEntry.getZip());
			hospitalEntries.put(key, hospitalEntry);
		}
	}
	
	private String buildKey(String name, String zip) {
		String key = name + "_" + zip;
		
		return key.toUpperCase();
	}
	
	/*
	 *  We ignore all Kaiser hospitals as well as closed hospitals (those that we know of 
	 *  at the time of loading as the Medicare/DRG file is from 2013).
	 */
	private void initDrgIdsToIgnore() {
		// Ignore Kaiser
		hospitalIdsToIgnore.add("050070");	// KAISER FOUNDATION HOSPITAL - SOUTH SAN FRANCISCO
		hospitalIdsToIgnore.add("050071");	// KAISER FOUNDATION HOSPITAL-SANTA CLARA
		hospitalIdsToIgnore.add("050072");	// KAISER FOUNDATION HOSPITAL - WALNUT CREEK
		hospitalIdsToIgnore.add("050073");	// KAISER FOUNDATION HOSPITAL AND REHAB CENTER
		hospitalIdsToIgnore.add("050075");	// KAISER FOUNDATION HOSPITAL OAKLAND/RICHMOND
		hospitalIdsToIgnore.add("050076");	// KAISER FOUNDATION HOSPITAL - SAN FRANCISCO
		hospitalIdsToIgnore.add("050137");	// KAISER FOUNDATION HOSPITAL - PANORAMA CITY
		hospitalIdsToIgnore.add("050138");	// KAISER FOUNDATION HOSPITAL - LOS ANGELES
		hospitalIdsToIgnore.add("050139");	// KAISER FOUNDATION HOSPITAL - DOWNEY
		hospitalIdsToIgnore.add("050140");	// KAISER FOUNDATION HOSPITAL FONTANA
		hospitalIdsToIgnore.add("050411");	// KAISER FOUNDATION HOSPITAL - SOUTH BAY
		hospitalIdsToIgnore.add("050425");	// KAISER FOUNDATION HOSPITAL - SACRAMENTO
		hospitalIdsToIgnore.add("050510");	// KAISER FOUNDATION HOSPITAL
		hospitalIdsToIgnore.add("050512");	// KAISER FOUNDATION HOSPITAL FREMONT/HAYWARD
		hospitalIdsToIgnore.add("050515");	// KAISER FOUNDATION HOSPITAL - SAN DIEGO
		hospitalIdsToIgnore.add("050541");	// KAISER FOUNDATION HOSPITAL - REDWOOD CITY
		hospitalIdsToIgnore.add("050561");	// KAISER FOUNDATION HOSPITAL - WEST LA
		hospitalIdsToIgnore.add("050604");	// KAISER FOUNDATION HOSPITAL-SAN JOSE
		hospitalIdsToIgnore.add("050609");	// KAISER FOUNDATION HOSPITAL- ORANGE COUNTY- ANAHEIM
		hospitalIdsToIgnore.add("050674");	// KAISER FOUNDATION HOSP SO SACRAMENTO
		hospitalIdsToIgnore.add("050677");	// KAISER FOUNDATION HOSPITAL - WOODLAND HILLS
		hospitalIdsToIgnore.add("050686");	// KAISER FOUNDATION HOSPITAL, RIVERSIDE
		hospitalIdsToIgnore.add("050690");	// KAISER FOUNDATION HOSPITAL-SANTA ROSA
		hospitalIdsToIgnore.add("050710");	// KAISER FOUNDATION HOSPITAL - FRESNO
		hospitalIdsToIgnore.add("050723");	// KAISER FOUNDATION HOSPITAL - BALDWIN PARK
		hospitalIdsToIgnore.add("050748");	// KAISER FOUNDATION HOSPITAL MANTECA
		hospitalIdsToIgnore.add("050760");	// KAISER FOUNDATION HOSPITAL - ANTIOCH
		hospitalIdsToIgnore.add("050765");	// KAISER FOUNDATION HOSPITAL-MORENO VALLEY
		hospitalIdsToIgnore.add("050767");	// KAISER FOUNDATION HOSPITAL - VACAVILLE
		hospitalIdsToIgnore.add("050772");	// KAISER FOUNDATION HOSPITAL - ROSEVILLE
		hospitalIdsToIgnore.add("120011");	// KAISER FOUNDATION HOSPITAL
		hospitalIdsToIgnore.add("380091");	// KAISER SUNNYSIDE MEDICAL CENTER
		hospitalIdsToIgnore.add("380103");	// Kaiser Foundation Hospital - Westside
		hospitalIdsToIgnore.add("050777");	// Kaiser Foundation Hospital - San Leandro
		
		// Closed hospitals
		hospitalIdsToIgnore.add("040042");	// CRITTENDEN MEMORIAL HOSPITAL
		hospitalIdsToIgnore.add("050385");	// PALM DRIVE HOSPITAL
		hospitalIdsToIgnore.add("050079");	// DOCTORS MEDICAL CENTER - SAN PABLO
		hospitalIdsToIgnore.add("100239");	// EDWARD WHITE HOSPITAL
		hospitalIdsToIgnore.add("180117");	// PARKWAY REGIONAL HOSPITAL
		hospitalIdsToIgnore.add("670002");	// SOUTH HAMPTON COMMUNITY HOSPITAL
		hospitalIdsToIgnore.add("110183");	// Emory-adventist Hospital
	}
}
