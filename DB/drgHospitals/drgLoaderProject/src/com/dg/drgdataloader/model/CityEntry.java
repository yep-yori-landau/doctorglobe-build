package com.dg.drgdataloader.model;

public class CityEntry {
	private int 	cityId;
	private String 	cityName;
	private int		stateId;
	private String 	stateCode;
	private int		countryId;
	private String 	countryName;
	
	public CityEntry () { }

	public CityEntry (int cityId, String city, int stateId, String stateCode, int countryId, String country) {
		this.cityId 		= cityId;
		cityName 			= city;
		this.stateId		= stateId;
		this.stateCode 		= stateCode;
		this.countryId		= countryId;
		countryName 		= country;
	}
	
	public int getCityId() {
		return cityId;
	}
	
	public String getCityName() {
		return cityName;
	}
	
	public int getStateId() {
		return stateId;
	}
	
	public String getStateCode() {
		return stateCode;
	}
	
	public int getCountryId() {
		return countryId;
	}
	
	public String getCountryName() {
		return countryName;
	}

	public void setCityId(int id) {
		this.cityId = id;
	}

	public void setCityName(String name) {
		this.cityName = name;
	}

	public void setStateId(int id) {
		this.stateId = id;
	}

	public void setStateCode(String code) {
		this.stateCode = code;
	}
	
	public void setCountryId(int id) {
		this.countryId = id;
	}

	public void setCountryName(String name) {
		this.countryName = name;
	}
}
