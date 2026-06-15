package com.dg.drgdataloader.dao;

import java.util.List;
import javax.sql.DataSource;

import com.dg.drgdataloader.model.HeaSpeTreMetEntry;

public interface HeaSpeTreMetDao {
	/** 
	 * This is the method to be used to initialize database resources ie. connection.
	 */
	public void setDataSource(DataSource ds);
		   
	/** 
	 * This is the method to be used to create a record in the healthcareprovider_specialty_treatement_method table. 
	 * Returns the id.
	 */
	public int addHospitalSpecialtyTreatmentMethod(HeaSpeTreMetEntry entry);
	
	/** 
	 * This is the method to be used to pull all records from the healthcareprovider_specialty_treatement_method table.
	 */
	public List<HeaSpeTreMetEntry> pullAll();
}
