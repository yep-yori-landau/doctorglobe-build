package com.dg.drgdataloader.container;

import org.springframework.context.ApplicationContext;


import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import com.dg.drgdataloader.jdbctemplate.HospitalSpecialtyEntryJDBCTemplate;
import com.dg.drgdataloader.model.HospitalSpecialtyEntry;

/*
 * Initialized with all entries from healthcareprovider_specialty DB table.
 * Responsible for adding more entries and add them to its list
 */
public class HospitalSpecialtyContainer {
	Hashtable<String, HospitalSpecialtyEntry> entries = new Hashtable<String, HospitalSpecialtyEntry>();
	
	// Various data for statistics
	List<HospitalSpecialtyEntry> entriesToAdd 		  	= new Vector<HospitalSpecialtyEntry>();
	int							 countDBEntries		  	= 0;
	int							 countEntriesAddedtoDB  = 0;
	int							 countDuplicateEntries  = 0;
	
	public HospitalSpecialtyContainer(ApplicationContext context) {
		initFromDB(context);
	}

	public int process (ApplicationContext context, int hospitalId, int specialtyId, String specialtyName) {
		int hospitalSpecialtyId = 0; //dummy value
		HospitalSpecialtyEntry entry = new HospitalSpecialtyEntry(hospitalSpecialtyId, hospitalId, specialtyId, specialtyName);
		
		if (! entryExists(entry)) {
			HospitalSpecialtyEntryJDBCTemplate hospitalSpecialtyJDBCTemplate = (HospitalSpecialtyEntryJDBCTemplate)context.getBean("hospitalSpecialtyEntryJDBCTemplate");

			try {
				hospitalSpecialtyId = hospitalSpecialtyJDBCTemplate.addHospitalSpecialty(entry);
			}
			catch (Exception e) {
				System.out.println("Failed to enter hospital_specialty for hospital, specialty id: " + hospitalId + "," + specialtyId);
				throw e;
			}
			String key = buildKey(entry.getHospitalId(), entry.getSpecialtyId());
			
			entry.setId(hospitalSpecialtyId);
			entries.put(key, entry);

			countEntriesAddedtoDB++;
		}
		else {
			countDuplicateEntries++;
			hospitalSpecialtyId = getHospitalSpecialty(entry).getId();
		}
		
		return hospitalSpecialtyId;
	}

	// Return the CityEntry (from the DB) that matches the given drg hospital's address
	public HospitalSpecialtyEntry getHospitalSpecialty(HospitalSpecialtyEntry entry) {
		String key = buildKey(entry.getHospitalId(), entry.getSpecialtyId());
		
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
		HospitalSpecialtyEntryJDBCTemplate  hospitalSpecialtyJDBCTemplate 	= (HospitalSpecialtyEntryJDBCTemplate)context.getBean("hospitalSpecialtyEntryJDBCTemplate");
		List<HospitalSpecialtyEntry> 	 	hospitalSpecialtyEntryList  	= hospitalSpecialtyJDBCTemplate.pullAll();
		Iterator<HospitalSpecialtyEntry> 	it					   			= hospitalSpecialtyEntryList.iterator();
		
		while (it.hasNext()) {
			HospitalSpecialtyEntry 	entry 	= (HospitalSpecialtyEntry)it.next();
			String	  				key		= buildKey(entry.getHospitalId(), entry.getSpecialtyId());
			
			entries.put(key, entry);
			countDBEntries++;
		}
	}
	
	private String buildKey(int hospitalId, int specialtyId) {
		String key = hospitalId + "_" + specialtyId;
		
		return key.toUpperCase();
	}
	
	// Check if healthcareprovider_specialty is included in the DB
	private boolean entryExists(HospitalSpecialtyEntry entry) {
		String key = buildKey(entry.getHospitalId(), entry.getSpecialtyId());
		
		return entries.containsKey(key);
	}
}
