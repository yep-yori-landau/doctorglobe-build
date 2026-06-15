package com.dg.drgdataloader.container;

import org.springframework.context.ApplicationContext;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import org.apache.commons.lang.WordUtils;

import com.dg.drgdataloader.jdbctemplate.CityEntryJDBCTemplate;
import com.dg.drgdataloader.model.*;

/*
 * Initialized with all cities in the database.
 * Responsible for adding more cities and add them to its list
 * Provide information about cities
 */
public class CityContainer {
	Hashtable<String, CityEntry> cityEntries = new Hashtable<String, CityEntry>();
	
	// Various data for statistics
	List<CityEntry> 			 citiesToAdd 		  = new Vector<CityEntry>();
	int							 countDBCities 		  = 0;
	int							 countCityAddedtoDB   = 0;
	int							 countDuplicateCities = 0;
	
	public CityContainer(ApplicationContext context) {
		initFromDB(context);
	}
	
	public int process (ApplicationContext context, DrgHospitalEntry drgEntry, int stateId, int countryId, String countryName) {
		int cityId = 0;
		
		if (! cityExists(drgEntry)) {
			// All the DRG entries are in the US, in which all states are defined. No need to create states in DB 
			CityEntry 	cityEntry  = new CityEntry();

			cityEntry.setCityId(0);  // dummy. will not be used
			cityEntry.setCityName(WordUtils.capitalizeFully(drgEntry.getProviderCity()));
			cityEntry.setStateId(stateId);
			cityEntry.setStateCode(drgEntry.getProviderStateCode());
			cityEntry.setCountryId(countryId);
			cityEntry.setCountryName(countryName);

			CityEntryJDBCTemplate cityEntryJDBCTemplate = (CityEntryJDBCTemplate)context.getBean("cityEntryJDBCTemplate");

			cityId = cityEntryJDBCTemplate.addCity(cityEntry, stateId, countryId);
			String key = buildKey(cityEntry.getCityName(), cityEntry.getStateCode());
			
			cityEntry.setCityId(cityId);
			cityEntries.put(key, cityEntry);

			countCityAddedtoDB++;
			citiesToAdd.add(cityEntry);
		}
		else {
			countDuplicateCities++;
			cityId = getCity(drgEntry).getCityId();
		}
		
		return cityId;
	}
	
	
	public int getCountDBCities() {
		return countDBCities;
	}
	public int getCountCitiesAddedToDB() {
		return countCityAddedtoDB;
	}
	public int getCountDuplicateCity() {
		return countDuplicateCities;
	}

	public void printAll() {
		Enumeration<String> keys = cityEntries.keys();
		int i = 1;
		
		while (keys.hasMoreElements()) {
			String    key   = keys.nextElement();
			CityEntry ce    = cityEntries.get(key);
			String    space = ce.getCityId() < 10 ? "   " : ce.getCityId() < 100 ? "  " : " ";
			
			System.out.println("[" + i++ + "] " + ce.getCityId() + space + "[" + key + "]" + ce.getCityName() + ", " + ce.getStateCode() + ", " + ce.getCountryName());
		}
		
		i = 1;
		Iterator<CityEntry> it = citiesToAdd.iterator();
		while (it.hasNext()) {
			String    space = i < 10 ? "    " : i < 100 ? "   " : i < 1000 ? "  " : " ";

			CityEntry ce = it.next();
			System.out.println("[" + i++ + "] " + space + ce.getCityName() + ", " + ce.getStateCode() + ", " + ce.getCountryName());
		}
	}
	
	// Load all cities from the Database into a hash table <city Name, City information>
	private void initFromDB(ApplicationContext context) {
		CityEntryJDBCTemplate 		 cityEntryJDBCTemplate = (CityEntryJDBCTemplate)context.getBean("cityEntryJDBCTemplate");
		List<CityEntry> 			 cityEntryList  	   = cityEntryJDBCTemplate.pullAll();
		Iterator<CityEntry>			 it					   = cityEntryList.iterator();
		
		while (it.hasNext()) {
			CityEntry cityEntry = (CityEntry)it.next();
			String	  key		= buildKey(cityEntry.getCityName(), cityEntry.getStateCode());
			cityEntries.put(key, cityEntry);
			countDBCities++;
		}
	}
	
	private String buildKey(String cityName, String stateCode) {
		String key = cityName + "_" + stateCode;
		
		return key.toUpperCase();
	}
	
	// Check if city is included in the DB
	private boolean cityExists(DrgHospitalEntry drgEntry) {
		String key = buildKey(drgEntry.getProviderCity(), drgEntry.getProviderStateCode());
		
		return cityEntries.containsKey(key);
	}

	// Return the CityEntry (from the DB) that matches the given drg hospital's address
	public CityEntry getCity(DrgHospitalEntry drgEntry) {
		String key = buildKey(drgEntry.getProviderCity(), drgEntry.getProviderStateCode());
		
		return cityEntries.get(key);
	}
}
