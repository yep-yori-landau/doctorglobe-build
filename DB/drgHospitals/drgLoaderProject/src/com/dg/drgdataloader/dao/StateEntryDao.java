package com.dg.drgdataloader.dao;

import java.util.List;

import javax.sql.DataSource;
import com.dg.drgdataloader.model.StateEntry;

public interface StateEntryDao {
	/** 
	 * This is the method to be used to initialize database resources ie. connection.
	 */
	public void setDataSource(DataSource ds);
	   
	/** 
	 * This is the method to be used to pull all records from the state table.
	 */
	public List<StateEntry> pullAll();
	
	/** 
	 * This is the method to be used to pull a single state from the state table.
	 */
//	public void pullState(String stateCode, String countryName);

}
