package com.dg.drgdataloader.jdbcmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dg.drgdataloader.model.HeaSpeTreMetEntry;

public class HeaSpeTreMetEntryMapper implements RowMapper<HeaSpeTreMetEntry> {

	@Override
	public HeaSpeTreMetEntry mapRow(ResultSet rs, int rowNum) throws SQLException {
		HeaSpeTreMetEntry entry = new HeaSpeTreMetEntry();

		entry.setId(rs.getInt("id"));
		entry.setHospitalSpecialtyId(rs.getInt("healthcareprovider_specialty"));
		entry.setTreatmentId(rs.getInt("treatment"));
		entry.setMethodId(rs.getInt("method"));
		entry.setPrice(rs.getDouble("healthcareprovider_price"));

		return entry;
	}
}

