package com.dg.drgdataloader.jdbctemplate;

import java.util.List;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.dg.drgdataloader.dao.HeaSpeTreMetDao;
import com.dg.drgdataloader.model.HeaSpeTreMetEntry;
import com.dg.drgdataloader.jdbcmapper.HeaSpeTreMetEntryMapper;

public class HeaSpeTreMetEntryJDBCTemplate implements HeaSpeTreMetDao {
	private DataSource dataSource;
//	private JdbcTemplate jdbcTemplateObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
//		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

	@Override
	public int addHospitalSpecialtyTreatmentMethod(HeaSpeTreMetEntry entry) {
		String sql = "insert into healthcareprovider_specialty_treatment_method (treatment, method, healthcareprovider_specialty, healthcareprovider_price) values (?, ?, ?, ?)";
		JdbcTemplate jdbcTemplateObject = new JdbcTemplate(dataSource);

		try {
			jdbcTemplateObject.update(sql, entry.getTreatmentId(), entry.getMethodId(), entry.getHospitalSpecialtyId(), entry.getPrice());
		}
		catch (Exception e) {
			System.out.println("Exception: adding hospital_specialty_treatment_method. Hospial_specialty id [" + entry.getHospitalSpecialtyId() + "]");
			throw(e);
		}
		
		sql = "select id from healthcareprovider_specialty_treatment_method where treatment = ? and method = ? and healthcareprovider_specialty = ? and  healthcareprovider_price = ?";
		int id = jdbcTemplateObject.queryForObject(sql, Integer.class, entry.getTreatmentId(), entry.getMethodId(), entry.getHospitalSpecialtyId(), entry.getPrice());
		
		return id;
	}

	@Override
	public List<HeaSpeTreMetEntry> pullAll() {
		String sql = "select id, treatment, method, healthcareprovider_specialty, healthcareprovider_price from healthcareprovider_specialty_treatment_method";
		JdbcTemplate jdbcTemplateObject = new JdbcTemplate(dataSource);
	
		List<HeaSpeTreMetEntry> entries  = jdbcTemplateObject.query(sql, new HeaSpeTreMetEntryMapper());

		return entries;
	}
}
