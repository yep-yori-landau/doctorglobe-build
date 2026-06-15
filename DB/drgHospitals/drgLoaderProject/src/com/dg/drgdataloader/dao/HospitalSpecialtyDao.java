package com.dg.drgdataloader.dao;

import java.util.List;
import javax.sql.DataSource;

import com.dg.drgdataloader.model.HospitalSpecialtyEntry;;

public interface HospitalSpecialtyDao {
	/** 
	 * This is the method to be used to initialize database resources ie. connection.
	 */
	public void setDataSource(DataSource ds);
	   
	/** 
	 * This is the method to be used to create a record in the healthcareprovider_specialty table. 
	 * Returns the id.
	 */
	public int addHospitalSpecialty(HospitalSpecialtyEntry hospitalSpecialty);

	/** 
	 * This is the method to be used to pull all records from the healthcareprovider_specialty table.
	 */
	public List<HospitalSpecialtyEntry> pullAll();
}
