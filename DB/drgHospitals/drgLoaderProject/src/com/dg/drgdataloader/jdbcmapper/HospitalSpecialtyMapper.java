package com.dg.drgdataloader.jdbcmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dg.drgdataloader.model.HospitalSpecialtyEntry;

public class HospitalSpecialtyMapper implements RowMapper<HospitalSpecialtyEntry> {

	@Override
	public HospitalSpecialtyEntry mapRow(ResultSet rs, int rowNum) throws SQLException {
		HospitalSpecialtyEntry hospitalSpecialtyEntry = new HospitalSpecialtyEntry();

		hospitalSpecialtyEntry.setId(rs.getInt("id"));
		hospitalSpecialtyEntry.setHospitalId(rs.getInt("healthcareprovider"));
		hospitalSpecialtyEntry.setSpecialtyId(rs.getInt("specialty"));
		hospitalSpecialtyEntry.setName(rs.getString("name"));
		
		return hospitalSpecialtyEntry;
	}
}
