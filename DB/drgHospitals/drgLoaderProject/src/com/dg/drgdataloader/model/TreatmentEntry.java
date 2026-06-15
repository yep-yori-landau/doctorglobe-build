package com.dg.drgdataloader.model;

import java.util.Arrays;
import java.util.List;
import java.util.StringTokenizer;
import java.util.Vector;

public class TreatmentEntry {
	private int 			treatmentId;
	private String 			treatmentName;
	private int 			specialtyId;
	private String 			specialtyName;
	private int 			methodId;
	private List<String>	drgCodes;
	
	public TreatmentEntry() { }
	
	public TreatmentEntry (int treatmentId, String treatmentName, int speciatyId, String specialtyName, int methodId, String drgCodes) {
		this.treatmentId 		= treatmentId;
		this.treatmentName 		= treatmentName;
		this.specialtyId		= speciatyId;
		this.specialtyName		= specialtyName;
		this.methodId			= methodId;
		this.drgCodes			= extractCodsFromString(drgCodes);
	}
	
	private List<String> extractCodsFromString(String drgCodes) {
		String[] codes = drgCodes.split(",");
		
		return Arrays.asList(codes);
	}

	public void init(String line, String delim) {
		StringTokenizer st = new StringTokenizer(line, delim);
		
		treatmentId 	= new Integer(((String)st.nextElement()).trim()).intValue();
		treatmentName	= ((String)st.nextElement()).trim();
		specialtyId		= new Integer(((String)st.nextElement()).trim()).intValue();
		specialtyName	= ((String)st.nextElement()).trim();
		methodId		= new Integer(((String)st.nextElement()).trim()).intValue();
		drgCodes 		= extractCodsFromString(((String)st.nextElement()).trim());
	}

	public int getTreatmentId() {
		return treatmentId;
	}
	public String getTreatmentName() {
		return treatmentName;
	}
	public int getSpecialtyId() {
		return specialtyId;
	}
	public String getSpecialtyName() {
		return specialtyName;
	}
	public int getMethodId() {
		return methodId;
	}
	public List<String> getDrgCodes() {
		return drgCodes;
	}
	public String getLeadingDrgCode() {
		return drgCodes.get(0);
	}

	public void setTreatmentId(int id) {
		this.treatmentId = id;
	}
	public void setTreatmentName(String name) {
		this.treatmentName = name;
	}
	public void setSpecialtyId(int id) {
		this.specialtyId = id;
	}
	public void setSpecialtyName(String name) {
		this.specialtyName = name;
	}
	public void setMethodId(int id) {
		this.methodId = id;
	}
	public void setDrgCode(List<String> drgCodes) {
		this.drgCodes = drgCodes;
	}
}
