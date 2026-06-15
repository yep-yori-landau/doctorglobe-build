package com.dg.drgdataloader.container;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Collection;
import java.util.HashMap;

import com.dg.drgdataloader.model.DrgHospitalEntry;

/*
 * Initialized with DRG entries from a file.
 */
public class DrgHospitalContainer {
	HashMap<String, HashMap<String, DrgHospitalEntry>> drgHospitals; // External has hmap by DRG codes, internal hash map by hospital medicare hospital id 

	public DrgHospitalContainer() {
		drgHospitals = loadDrgFromFile();
	}
	
	// Return a collection of hospital for the given drgCode 
	public Collection<DrgHospitalEntry> getDrgHospitalsForDrgCode(String drgCode) {
		HashMap<String, DrgHospitalEntry> drgHospitalStructureForCode = drgHospitals.get(drgCode);
		
		if (drgHospitalStructureForCode != null)
			return drgHospitalStructureForCode.values();
		else
			// Return an empty list
			return new HashMap<String, DrgHospitalEntry>().values();
	}
	
	private static HashMap<String, HashMap<String, DrgHospitalEntry>>  loadDrgFromFile() {
		String			fileName = "./DRG.csv";
		BufferedReader 	br 		 = null;
		int				numLines = 0; 

		// This is a hash map of DRG codes that holds a hash map of hospitals found for each code. The second hash map key is the hospital DRG id 
		// [key: drgCode --> value: (key: drgHospitalId --> value: DrgHospitalEntry)]
		HashMap<String, HashMap<String, DrgHospitalEntry>>  entries = new HashMap<String, HashMap<String, DrgHospitalEntry>> ();

		try {
			br = new BufferedReader(new FileReader(fileName));
			String	line = br.readLine(); // Skip the first header line

			line = br.readLine();
			while (line != null) {
				numLines++;
				DrgHospitalEntry drgHospitalEntry = new DrgHospitalEntry();
				
				drgHospitalEntry.init(line, "|");
				
				HashMap<String, DrgHospitalEntry> hospitalsForDrgCode = entries.get(drgHospitalEntry.getDrgCode());
				
				// Enters the current DRG hospital into the proper location in the hash map while creating hash maps if not exist yet.
				if (hospitalsForDrgCode == null) {
					hospitalsForDrgCode = new HashMap<String, DrgHospitalEntry>();
					entries.put(drgHospitalEntry.getDrgCode(), hospitalsForDrgCode);
				}
				hospitalsForDrgCode.put(drgHospitalEntry.getProviderId(), drgHospitalEntry);

				line = br.readLine();

			}
		}
		catch (Exception e) {
			System.out.println("Medicare DRG file: " + e.toString());
			System.out.println("Read " + numLines + " lines from Medicare DRG file");
			System.exit(1);
		}
		finally {
			try {
				br.close();
			}
			catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		
		return entries;
	}
	
	public int numOfEntries() {
		return drgHospitals.size();
	}
}
