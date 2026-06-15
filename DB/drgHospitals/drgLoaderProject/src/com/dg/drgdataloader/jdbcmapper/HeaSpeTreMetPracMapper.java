package com.dg.drgdataloader.jdbcmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dg.drgdataloader.model.HeaSpeTreMetPracEntry;

public class HeaSpeTreMetPracMapper implements RowMapper<HeaSpeTreMetPracEntry> {
	
	@Override
	public HeaSpeTreMetPracEntry mapRow(ResultSet rs, int rowNum) throws SQLException {
		HeaSpeTreMetPracEntry heaSpeTreMetPracEntry = new HeaSpeTreMetPracEntry();
		
		heaSpeTreMetPracEntry.setId(rs.getInt("id"));
		heaSpeTreMetPracEntry.setHeaSpeTreMetId(rs.getInt("hstm"));
		heaSpeTreMetPracEntry.setPractitionerId(rs.getInt("practitioner"));
		heaSpeTreMetPracEntry.setNumLastYear(rs.getInt("number_performed_last_year"));
		heaSpeTreMetPracEntry.setPrice(rs.getInt("healthcareprovider_price"));
		
		return heaSpeTreMetPracEntry;
	}
}
