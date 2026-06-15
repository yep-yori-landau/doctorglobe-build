package com.dg.drgdataloader.model;

public class HospitalEntry {
	private int	   hospitalId;
	private String name;
	private String address;
	private int	   cityId;
	private String cityName;
	private String zip;
	private int	   stateId;
	private String stateCode;
	private String drgId;
	private String drgHRR;
	private String lat;
	private String lon;
	private String url;
	private String adminName;
	private String adminTitle;
	private String ahaId;
	private String ahaHospitalName;

	
	public HospitalEntry() { }
	
	public HospitalEntry (String name) {
		this.name = name;
	}
	
	public int getHospitalId() {
		return hospitalId;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}
	
	public int getCityId() {
		return cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public String getZip() {
		return zip;
	}
	
	public int getStateId() {
		return stateId;
	}
	
	public String getStateCode() {
		return stateCode;
	}
	
	public String getDrgId() {
		return drgId;
	}
	
	public String getDrgHRR() {
		return drgHRR;
	}
	
	public String getLat() {
		return lat;
	}
	public String getLong() {
		return lon;
	}
	public String getURL() {
		return url;
	}
	public String getAdminName() {
		return adminName;
	}
	public String getAdminTitle() {
		return adminTitle;
	}
	public String getAhaId() {
		return ahaId;
	}
	public String getAhaHospitalName() {
		return ahaHospitalName;
	}

	public void sethospitalId(int id) {
		this.hospitalId= id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}

	public void setCityId(int id) {
		this.cityId = id;
	}

	public void setCityName(String name) {
		this.cityName = name;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}
	
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}
	
	public void setStateCode(String stateCode) {
		this.stateCode = stateCode;
	}
	
	public void setDrgId(String val) {
		this.drgId = val;
	}
	
	public void setDrgHRR(String val) {
		this.drgHRR = val;
	}
								
	public void setLat(String val) {
		lat = val;
	}
	public void setLong(String val) {
		lon = val;
	}
	public void setURL(String val) {
		url = val;
	}
	public void setAdminName(String val) {
		adminName = val;
	}
	public void setAdminTitle(String val) {
		adminTitle = val;
	}
	public void setAhaId(String val) {
		ahaId = val;
	}
	public void setAhaHospitalName(String val) {
		ahaHospitalName = val;
	}

}
