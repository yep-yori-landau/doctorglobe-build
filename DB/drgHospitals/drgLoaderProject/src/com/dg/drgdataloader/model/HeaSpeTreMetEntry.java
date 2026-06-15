package com.dg.drgdataloader.model;

public class HeaSpeTreMetEntry {
	private int		id;
	private int 	hospitalSpecialtyId;
	private int		treatmentId;
	private int		methodId;
	private double	price;
	
	public HeaSpeTreMetEntry () { }

	public HeaSpeTreMetEntry (int id, int hospitalSpecialtyId, int treatmentId, int methodId, double price) {
		this.id						= id;
		this.hospitalSpecialtyId 	= hospitalSpecialtyId;
		this.treatmentId 			= treatmentId;
		this.methodId 				= methodId;
		this.price 					= price;
	}

	public int getId () {
		return id;
	}
	public int getHospitalSpecialtyId () {
		return hospitalSpecialtyId;
	}
	public int getTreatmentId () {
		return treatmentId;
	}
	public int getMethodId () {
		return methodId;
	}
	public double getPrice () {
		return price;
	}
	
	public void setId (int val) {
		id = val;
	}
	public void setHospitalSpecialtyId (int val) {
		hospitalSpecialtyId = val;
	}
	public void setTreatmentId (int val) {
		treatmentId = val;
	}
	public void setMethodId (int val) {
		methodId = val;
	}
	public void setPrice (double val) {
		price = val;
	}
}
