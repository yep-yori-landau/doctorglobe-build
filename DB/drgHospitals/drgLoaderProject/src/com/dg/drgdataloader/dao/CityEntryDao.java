package com.dg.drgdataloader.dao;

import java.util.List;

import javax.sql.DataSource;
import com.dg.drgdataloader.model.CityEntry;

public interface CityEntryDao {
	/** 
	 * This is the method to be used to initialize database resources ie. connection.
	 */
	public void setDataSource(DataSource ds);
	   
	/** 
	 * This is the method to be used to create a record in the CityEntry table. 
	 * Returns the city id.
	 */
	public int addCity(CityEntry city, int stateId, int countryId);

	/** 
	 * This is the method to be used to pull all records from the city table.
	 */
	public List<CityEntry> pullAll();
	
	/** 
	 * This is the method to be used to pull a single city from the city table.
	 */
//	public void pullCity(String cityName, String stateName);
}
