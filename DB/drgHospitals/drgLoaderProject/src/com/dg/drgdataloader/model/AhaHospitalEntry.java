package com.dg.drgdataloader.model;

public class AhaHospitalEntry {
	private String ahaId;
	private String name;
	private String adminName;
	private String adminTitle;
	private String address;
	private String city;
	private String state;
	private String zip;
	private String drgId;
	private String lat;
	private String lon;
	private String hospitalURL;
	
	public void init(String line, String delim) {
		String[] tokens = line.split("\\|", -1);
		
		ahaId		= tokens[0].trim();
		name		= tokens[1].trim();
		
		// Admin name and role are separated with a comma
		String[] admintokens = tokens[2].trim().split(",");
	
		adminName	= admintokens[0].trim();
		if (admintokens.length == 2)
			adminTitle	= admintokens[1].trim();
		
		address		= tokens[3].trim();
		city		= tokens[4].trim();
		state		= tokens[5].trim();
		zip			= tokens[6].trim();
		drgId		= tokens[7].trim();
		lat			= tokens[8].trim();
		lon			= tokens[9].trim();
		
		setHospitalURL(tokens[10].trim()); // special handling of string that starts with www.
	}
	
	
	public void setAhaId(String val) {
		ahaId = val;
	}
	public void setName(String val) {
		name = val;
	}
	public void setAdminName(String val) {
		adminName = val;
	}
	public void setAdminTitle(String val) {
		adminTitle = val;
	}
	public void setAddress(String val) {
		address = val;
	}
	public void setCity(String val) {
		city = val;
	}
	public void setState(String val) {
		state = val;
	}
	public void setZip(String val) {
		zip = val;
	}
	public void setDrgId(String val) {
		drgId = val;
	}
	public void setLat(String val) {
		lat = val;
	}
	public void setLon(String val) {
		lon = val;
	}
	public void setHospitalURL(String val) {
		if (! val.toLowerCase().startsWith("http://"))
			val = "http://" + val;

		hospitalURL = val;
	}
	
	public String getAhaId() {
		return ahaId;
	}
	public String getName() {
		return name;
	}
	public String getAdminName() {
		return adminName;
	}
	public String getAdminTitle() {
		return adminTitle;
	}
	public String getAddress() {
		return address;
	}
	public String getCity() {
		return city;
	}
	public String getState() {
		return state;
	}
	public String getZip() {
		return zip;
	}
	public String getDrgId() {
		return drgId;
	}
	public String getLat() {
		return lat;
	}
	public String getLon() {
		return lon;
	}
	public String getHospitalURL() {
		return hospitalURL;
	}
}
