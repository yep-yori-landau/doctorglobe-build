package com.dg.drgdataloader.jdbcmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dg.drgdataloader.model.StateEntry;

public class StateEntryMapper implements RowMapper<StateEntry> {
	@Override
	public StateEntry mapRow(ResultSet rs, int rowNum) throws SQLException {
		StateEntry stateEntry = new StateEntry();
		
		stateEntry.setStateId(rs.getInt("stateId"));
		stateEntry.setStateCode(rs.getString("stateCode"));
		stateEntry.setStateName(rs.getString("stateName"));
		stateEntry.setCountryId(rs.getInt("countryId"));
		stateEntry.setCountryName(rs.getString("countryName"));
		
		return stateEntry;
	}
}
