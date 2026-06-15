package com.dg.drgdataloader.container;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Collection;
import java.util.Vector;
import java.util.List;
import java.util.Iterator;

import com.dg.drgdataloader.model.DrgHospitalEntry;
import com.dg.drgdataloader.model.TreatmentEntry;

/*
 * Initialized with treatments from a file including their DRG codes.
 */
public class TreatmentContainer {
	Collection<TreatmentEntry> treatmentEntries;

	// Processing will look at all drg entries for the treatment.
	// If entry has the right DRG code, and hospital is not in the DB with this treatment and the dummy doctor, 
	//	then enter the entry to the hospital, specialty, treatment, method, doctor table (and all realted needed tables).

	public TreatmentContainer() {
		treatmentEntries = loadTreatmentDataFromFile();
	}
	
	public Collection<TreatmentEntry> getAllTreatments() {
		return treatmentEntries;
	}
	
	public int process (DrgHospitalEntry drgEntry) {
		return 0;
	}
	
	private static Collection<TreatmentEntry> loadTreatmentDataFromFile() {
		String			fileName = "./treatments_to_handle.csv";
		BufferedReader 	br 		 = null;
		Collection<TreatmentEntry> treatmentEntries = new Vector<TreatmentEntry>();

		try {
			br = new BufferedReader(new FileReader(fileName));
			String	line = br.readLine(); // Skip the first header line

			line = br.readLine();
			while (line != null) {
				TreatmentEntry treatmentEntry = new TreatmentEntry();
				
				treatmentEntry.init(line, "|");
				treatmentEntries.add(treatmentEntry);
				line = br.readLine();
			}
		}
		catch (Exception e) {
			System.out.println("Treatment file: " + e.toString());
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
		
		return treatmentEntries;
	}
}
