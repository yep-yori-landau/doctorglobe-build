package com.dg.drgdataloader.container;

import org.springframework.context.ApplicationContext;


import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import com.dg.drgdataloader.jdbctemplate.HeaSpeTreMetEntryJDBCTemplate;
import com.dg.drgdataloader.model.HeaSpeTreMetEntry;

/*
 * Initialized with all entries from healthcareprovider_specialty_treatment_method DB table.
 * Responsible for adding more entries and add them to its list
 */
public class HeaSpeTreMetContainer {
	Hashtable<String, HeaSpeTreMetEntry> entries = new Hashtable<String, HeaSpeTreMetEntry>();
	
	// Various data for statistics
	List<HeaSpeTreMetEntry> entriesToAdd 		  	= new Vector<HeaSpeTreMetEntry>();
	int						countDBEntries		  	= 0;
	int						countEntriesAddedtoDB   = 0;
	int						countDuplicateEntries   = 0;
	
	public HeaSpeTreMetContainer(ApplicationContext context) {
		initFromDB(context);
	}

	public int process (ApplicationContext context, int hospitalSpecialtyId, int treatmentId, int methodId, double price) {
		int 				id 		= 0; //dummy value
		HeaSpeTreMetEntry 	entry 	= new HeaSpeTreMetEntry(0, hospitalSpecialtyId, treatmentId, methodId, price);
		
		if (! entryExists(entry)) {
			HeaSpeTreMetEntryJDBCTemplate hospitalSpecialtyJDBCTemplate = (HeaSpeTreMetEntryJDBCTemplate)context.getBean("heaSpeTreMetEntryJDBCTemplate");

			try {
				id = hospitalSpecialtyJDBCTemplate.addHospitalSpecialtyTreatmentMethod(entry);
			}
			catch (Exception e) {
				System.out.println("Failed to enter hospital_specialty_treatment_method");
				throw e;
			}
			String key = buildKey(entry.getHospitalSpecialtyId(), entry.getTreatmentId(), entry.getMethodId());
			
			entry.setId(id);
			entries.put(key, entry);

			countEntriesAddedtoDB++;
		}
		else {
			countDuplicateEntries++;
			id = getHospitalSpecialtyTreatmentMethod(entry).getId();
		}
		
		return id;
	}
	
	// Return the HeaSpeTreMetEntry (from the DB) that matches the given drg hospital's address
	public HeaSpeTreMetEntry getHospitalSpecialtyTreatmentMethod(HeaSpeTreMetEntry entry) {
		String key = buildKey(entry.getHospitalSpecialtyId(), entry.getTreatmentId(), entry.getMethodId());
		
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
		HeaSpeTreMetEntryJDBCTemplate  heaSpeTreMetJDBCTemplate = (HeaSpeTreMetEntryJDBCTemplate)context.getBean("heaSpeTreMetEntryJDBCTemplate");
		List<HeaSpeTreMetEntry> 	   heaSpeTreMetEntryList  	= heaSpeTreMetJDBCTemplate.pullAll();
		Iterator<HeaSpeTreMetEntry>    it					   	= heaSpeTreMetEntryList.iterator();
		
		while (it.hasNext()) {
			HeaSpeTreMetEntry 	entry 	= it.next();
			String	  			key		= buildKey(entry.getHospitalSpecialtyId(), entry.getTreatmentId(), entry.getMethodId());
			
			entries.put(key, entry);
			countDBEntries++;
		}
	}
	
	private String buildKey(int hospitalSpecialtyId, int treatmentId, int methodId) {
		String key = hospitalSpecialtyId + "_" + treatmentId + "_" + methodId;
		
		return key.toUpperCase();
	}
	
	// Check if healthcareprovider_specialty_treatment_method is included in the DB
	private boolean entryExists(HeaSpeTreMetEntry entry) {
		String key = buildKey(entry.getHospitalSpecialtyId(), entry.getTreatmentId(), entry.getMethodId());
		
		return entries.containsKey(key);
	}
}