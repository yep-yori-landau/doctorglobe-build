package com.dg.drgdataloader.container;

import java.io.BufferedReader;
import java.io.FileReader;

import java.util.HashMap;


import com.dg.drgdataloader.model.AhaHospitalEntry;

/*
 * Initialized with AHA hospital entries from a file.
 */
public class AhaHospitalContainer {
	HashMap<String, AhaHospitalEntry> ahaHospitalEntries;

	public AhaHospitalContainer() {
		ahaHospitalEntries = loadAhaFromFile();
	}
	
	public AhaHospitalEntry get(String key) {
		return ahaHospitalEntries.get(key);
	}

	private static HashMap<String, AhaHospitalEntry>  loadAhaFromFile() {
		String			fileName = "./aha_list_3.csv";
		BufferedReader 	br 		 = null;

		HashMap<String, AhaHospitalEntry>  entries = new HashMap<String, AhaHospitalEntry> ();

		try {
			br = new BufferedReader(new FileReader(fileName));
			String	line = br.readLine(); // Skip the first header line

			line = br.readLine();
			while (line != null) {
				AhaHospitalEntry ahaHospitalEntry = new AhaHospitalEntry();
				
				ahaHospitalEntry.init(line, "|");
				entries.put(ahaHospitalEntry.getDrgId(), ahaHospitalEntry);
				line = br.readLine();
			}
		}
		catch (Exception e) {
			System.out.println("aha file: " + e.toString());
			System.exit(1);
		}
		finally {
			try {
				br.close();
			}
			catch (Exception e) {
				e.toString();
			}
		}
		
		return entries;
	}
}
