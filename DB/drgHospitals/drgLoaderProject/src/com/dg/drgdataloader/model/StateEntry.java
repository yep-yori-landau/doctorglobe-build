package com.dg.drgdataloader.model;

public class StateEntry {
	private int 	stateId;
	private String 	stateCode;
	private String 	stateName;
	private int		countryId;
	private String 	countryName;

	public StateEntry () { }

	public StateEntry (int stateId, String stateCode, String stateName, int countryId, String country) {
		this.stateId		= stateId;
		this.stateCode 		= stateCode;
		this.stateName 		= stateName;
		this.countryId		= countryId;
		countryName 		= country;
	}
	
	public int getStateId() {
		return stateId;
	}
	
	public String getStateCode() {
		return stateCode;
	}
	
	public String getSTateName() {
		return stateName;
	}
	
	public int getCountryId() {
		return countryId;
	}
	
	public String getCountryName() {
		return countryName;
	}

	public void setStateId(int id) {
		this.stateId = id;
	}

	public void setStateCode(String code) {
		this.stateCode = code;
	}
	
	public void setStateName(String name) {
		this.stateName = name;
	}

	public void setCountryId(int id) {
		this.countryId = id;
	}

	public void setCountryName(String name) {
		this.countryName = name;
	}
}
