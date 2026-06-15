package com.dg.drgdataloader.container;

import org.springframework.context.ApplicationContext;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

import com.dg.drgdataloader.jdbctemplate.StateEntryJDBCTemplate;
import com.dg.drgdataloader.model.StateEntry;

/*
 * Initialized with all US states which are in the database.
 */
public class StateContainer {
	Hashtable<String, StateEntry> stateEntries = new Hashtable<String, StateEntry>();

	public StateContainer(ApplicationContext context) {
		initFromDB(context);
	}
	
	// Load all states from the Database into a hash table <state code, state information>
	private void initFromDB(ApplicationContext context) {
		StateEntryJDBCTemplate 		 stateEntryJDBCTemplate = (StateEntryJDBCTemplate)context.getBean("stateEntryJDBCTemplate");
		List<StateEntry> 			 stateEntryList  	   = stateEntryJDBCTemplate.pullAll();
		Iterator<StateEntry>			 it					   = stateEntryList.iterator();
		
		// Put in hash for performances
		while (it.hasNext()) {
			StateEntry stateEntry = (StateEntry)it.next();
			String	   key		 = buildKey(stateEntry.getStateCode(), stateEntry.getCountryName());
			stateEntries.put(key, stateEntry);
		}
	}
	
	private String buildKey(String stateCode, String countryName) {
		String key = stateCode + "_" + countryName;
		
		return key.toUpperCase();
	}
	
	public void printAll() {
		Enumeration<String> keys = stateEntries.keys();
		int i = 1;
		
		while (keys.hasMoreElements()) {
			String     key   = keys.nextElement();
			StateEntry se    = stateEntries.get(key);
			String     space = i < 10 ? "  " :  " ";
			
			System.out.println("[" + i++ + "] " + space + se.getStateCode() + ", " + se.getSTateName() + ", " + se.getCountryName());
		}
	}
	
	public StateEntry getState(String stateCode, String countryName) {
		String key = buildKey(stateCode, countryName);
		
		return stateEntries.get(key);
	}
}
