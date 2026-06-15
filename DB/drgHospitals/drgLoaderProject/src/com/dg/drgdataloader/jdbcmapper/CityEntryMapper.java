package com.dg.drgdataloader.jdbcmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dg.drgdataloader.model.CityEntry;

public class CityEntryMapper implements RowMapper<CityEntry> {

	@Override
	public CityEntry mapRow(ResultSet rs, int rowNum) throws SQLException {
		CityEntry cityEntry = new CityEntry();
		
		cityEntry.setCityId(rs.getInt("cityId"));
		cityEntry.setCityName(rs.getString("cityName"));
		cityEntry.setStateId(rs.getInt("stateId"));
		cityEntry.setStateCode(rs.getString("stateCode"));
		cityEntry.setCountryId(rs.getInt("countryId"));
		cityEntry.setCountryName(rs.getString("countryName"));
		
		return cityEntry;
	}
	
}
