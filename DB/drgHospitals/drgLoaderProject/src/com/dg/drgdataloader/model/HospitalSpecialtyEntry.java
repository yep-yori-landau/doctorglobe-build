package com.dg.drgdataloader.model;

public class HospitalSpecialtyEntry {
	private int		id;
	private int 	hospitalId;
	private int		specialtyId;
	private String	name;
	
	public HospitalSpecialtyEntry () { }

	public HospitalSpecialtyEntry (int id, int hospitalId, int specialtyId, String name) {
		this.id				= id;
		this.hospitalId 	= hospitalId;
		this.specialtyId	= specialtyId;
		this.name  			= name;
	}

	public int getId() {
		return id;
	}
	public int getHospitalId() {
		return hospitalId;
	}
	public int getSpecialtyId() {
		return specialtyId;
	}
	public String getName() {
		return name;
	}
	
	public void setId(int val) {
		id = val;
	}
	public void setHospitalId(int val) {
		hospitalId = val;
	}
	public void setSpecialtyId(int val) {
		specialtyId = val;
	}
	public void setName(String val) {
		name = val;
	}
}
