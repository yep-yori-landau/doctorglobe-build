package com.dg.drgdataloader.dao;

import java.util.List;

import javax.sql.DataSource;
import com.dg.drgdataloader.model.HeaSpeTreMetPracEntry;

public interface HeaSpeTreMetPracDao {
	/** 
	 * This is the method to be used to initialize database resources ie. connection.
	 */
	public void setDataSource(DataSource ds);

	/** 
	 * This is the method to be used to create a records in the relevant DB table. 
	 * Returns the new record id.
	 */
	public int add(HeaSpeTreMetPracEntry entry);

	/** 
	 * This is the method to be used to pull all records from the table.
	 */
	public List<HeaSpeTreMetPracEntry> pullAll();
}
