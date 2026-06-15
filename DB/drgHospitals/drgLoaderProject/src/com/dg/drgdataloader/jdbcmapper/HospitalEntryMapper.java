package com.dg.drgdataloader.jdbcmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dg.drgdataloader.model.HospitalEntry;

public class HospitalEntryMapper implements RowMapper<HospitalEntry> {

	@Override
	public HospitalEntry mapRow(ResultSet rs, int rowNum) throws SQLException {
		HospitalEntry hospitalEntry = new HospitalEntry();
			
		hospitalEntry.sethospitalId(rs.getInt("hospitalId"));
		hospitalEntry.setName(rs.getString("hospitalName"));
		hospitalEntry.setAddress(rs.getString("address"));
		hospitalEntry.setCityId(rs.getInt("cityId"));
		hospitalEntry.setCityName(rs.getString("cityName"));
		hospitalEntry.setZip(rs.getString("Zip"));
		hospitalEntry.setStateId(rs.getInt("stateId"));
		hospitalEntry.setStateCode(rs.getString("stateCode"));
		hospitalEntry.setStateCode(rs.getString("drgId"));
		hospitalEntry.setStateCode(rs.getString("drgHRRDescription"));
		
		hospitalEntry.setStateCode(rs.getString("ahaId"));
		hospitalEntry.setStateCode(rs.getString("ahaHospitalName"));
		hospitalEntry.setStateCode(rs.getString("adminTitle"));
		hospitalEntry.setStateCode(rs.getString("lat"));
		hospitalEntry.setStateCode(rs.getString("lon"));
		hospitalEntry.setStateCode(rs.getString("url"));

		return hospitalEntry;
	}
}
