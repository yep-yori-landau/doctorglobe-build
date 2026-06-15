package com.dg.drgdataloader.model;

public class HeaSpeTreMetPracEntry {
	private int		id; 
	private int 	heaSpeTreMetId;
	private int		practitionerId;
	private int 	numLastYear;
	private double	price;
	
	public HeaSpeTreMetPracEntry() { }

	public HeaSpeTreMetPracEntry(int id, int heaSpeTreMetId, int practitionerId, int numLastYear, double price) {
		this.id 			= id; 
		this.heaSpeTreMetId = heaSpeTreMetId;
		this.practitionerId	= practitionerId;
		this.numLastYear	= numLastYear;
		this.price			= price;
	}
	
	public int getId() {
		return id;
	}
	public int getHeaSpeTreMetId() {
		return heaSpeTreMetId;
	}
	public int getPractitionerId() {
		return practitionerId;
	}
	public int getNumLastYear() {
		return numLastYear;
	}
	public double getPrice() {
		return price;
	}
	
	public void setId(int val) {
		this.id = val;
	}
	public void setHeaSpeTreMetId(int val) {
		this.heaSpeTreMetId = val;
	}
	public void setPractitionerId(int val) {
		this.practitionerId = val;
	}
	public void setNumLastYear(int val) {
		this.numLastYear = val;
	}
	public void setPrice(double val) {
		this.price = val;
	}
}
