package com.dg.drgdataloader.dao;

import java.util.List;

import javax.sql.DataSource;
import com.dg.drgdataloader.model.HospitalEntry;

public interface HospitalEntryDao {
	/** 
	 * This is the method to be used to initialize database resources ie. connection.
	 */
	public void setDataSource(DataSource ds);
	   
	/** 
	 * This is the method to be used to create a record in the healthcareprovider table. 
	 * Returns the healthcareprovider id.
	 */
	public int addHospital(HospitalEntry hospital);

	/** 
	 * This is the method to be used to pull all records from the heathcareprovider table.
	 */
	public List<HospitalEntry> pullAll();
	
	/** 
	 * This is the method to be used to pull a single hospital from the healthcareprovider table.
	 */
//	public void pullHospital(String hospitalName);
}
