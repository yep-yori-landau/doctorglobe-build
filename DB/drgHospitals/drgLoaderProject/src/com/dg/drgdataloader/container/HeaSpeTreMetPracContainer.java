package com.dg.drgdataloader.container;


import org.springframework.context.ApplicationContext;


import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import com.dg.drgdataloader.jdbctemplate.HeaSpeTreMetPracEntryJDBCTemplate;
import com.dg.drgdataloader.model.HeaSpeTreMetPracEntry;

/*
 * Initialized with all entries from healthcareprovider_specialty_treatment_method_practitioner DB table.
 * Responsible for adding more entries and add them to its list
 */
public class HeaSpeTreMetPracContainer {
	Hashtable<String, HeaSpeTreMetPracEntry> entries = new Hashtable<String, HeaSpeTreMetPracEntry>();
	
	// Various data for statistics
	List<HeaSpeTreMetPracEntry> entriesToAdd 		  	= new Vector<HeaSpeTreMetPracEntry>();
	int							countDBEntries		  	= 0;
	int							countEntriesAddedtoDB   = 0;
	int							countDuplicateEntries   = 0;
	
	public HeaSpeTreMetPracContainer(ApplicationContext context) {
		initFromDB(context);
	}

	public int process (ApplicationContext context, int heaSpeTreMetId, int practitionerId, int numPerformedLastYear, double price) {
		int 					id 		= 0; //dummy value
		HeaSpeTreMetPracEntry 	entry 	= new HeaSpeTreMetPracEntry(0, heaSpeTreMetId, practitionerId, numPerformedLastYear, price);
		
		
		if (! entryExists(entry)) {
			HeaSpeTreMetPracEntryJDBCTemplate hospitalSpecialtyPracJDBCTemplate = (HeaSpeTreMetPracEntryJDBCTemplate)context.getBean("heaSpeTreMetPracEntryJDBCTemplate");

			try {
				id = hospitalSpecialtyPracJDBCTemplate.add(entry);
			}
			catch (Exception e) {
				System.out.println("Failed to enter hospital_specialty_treatment_method_practitioner");
				throw e;
			}
			String key = buildKey(entry.getHeaSpeTreMetId(), entry.getPractitionerId());
			
			entry.setId(id);
			entries.put(key, entry);

			countEntriesAddedtoDB++;
		}
		else {
			countDuplicateEntries++;
			id = getHospitalSpecialtyTreatmentMethodPractitioner(entry).getId();
		}
		
		return id;
	}
	
	// Return the HeaSpeTreMetPracEntry (from the DB) that matches the given entry
	public HeaSpeTreMetPracEntry getHospitalSpecialtyTreatmentMethodPractitioner(HeaSpeTreMetPracEntry entry) {
		String key = buildKey(entry.getHeaSpeTreMetId(), entry.getPractitionerId());
		
		return entries.get(key);
	}

	public int getCountDBEntres() {
		return countDBEntries;
	}
	public int getCountEntriesAddedToDB() {
		return countEntriesAddedtoDB;
	}
	public int getCountDuplicateEntries() {
		return countDuplicateEntries;
	}

	private void initFromDB(ApplicationContext context) {
		HeaSpeTreMetPracEntryJDBCTemplate  heaSpeTreMetPracJDBCTemplate = (HeaSpeTreMetPracEntryJDBCTemplate)context.getBean("heaSpeTreMetPracEntryJDBCTemplate");
		List<HeaSpeTreMetPracEntry> 	   heaSpeTreMetPracEntryList  	= heaSpeTreMetPracJDBCTemplate.pullAll();
		Iterator<HeaSpeTreMetPracEntry>    it					   		= heaSpeTreMetPracEntryList.iterator();
		
		while (it.hasNext()) {
			HeaSpeTreMetPracEntry 	entry 	= it.next();
			String	  				key		= buildKey(entry.getHeaSpeTreMetId(), entry.getPractitionerId());
			
			entries.put(key, entry);
			countDBEntries++;
		}
	}
	
	// Ideally, we include insurance in the key, but since we pull only entries for a single insurnace, this is not a must
	private String buildKey(int heaSpeTreMetId, int practitionerId) {
		String key = heaSpeTreMetId + "_" + practitionerId;
		
		return key.toUpperCase();
	}

	// Check if healthcareprovider_specialty_treatment_method_prac is included in the DB
	private boolean entryExists(HeaSpeTreMetPracEntry entry) {
		String key = buildKey(entry.getHeaSpeTreMetId(), entry.getPractitionerId());
		
		return entries.containsKey(key);
	}
}