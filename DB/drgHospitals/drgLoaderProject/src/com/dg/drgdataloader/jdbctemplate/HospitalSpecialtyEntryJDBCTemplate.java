package com.dg.drgdataloader.jdbctemplate;

import java.util.List;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.dg.drgdataloader.dao.HospitalSpecialtyDao;
import com.dg.drgdataloader.model.HospitalSpecialtyEntry;
import com.dg.drgdataloader.jdbcmapper.HospitalSpecialtyMapper;

public class HospitalSpecialtyEntryJDBCTemplate implements HospitalSpecialtyDao {
//	private JdbcTemplate jdbcTemplateObject;
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
//		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
		this.dataSource = dataSource;
	}

	@Override
	public int addHospitalSpecialty(HospitalSpecialtyEntry entry) {
		String sql = "insert into healthcareprovider_specialty (healthcareprovider, specialty, name) values (?, ?, ?)";
		JdbcTemplate jdbcTemplateObject = new JdbcTemplate(dataSource);

		try {
			jdbcTemplateObject.update(sql, entry.getHospitalId(), entry.getSpecialtyId(), entry.getName());
		}
		catch (Exception e) {
			System.out.println("Exception: adding hospital_specialty. Hospial id [" + entry.getHospitalId() + "]");
			throw(e);
		}
		
		sql = "select id from healthcareprovider_specialty where healthcareprovider = ? and specialty = ?";
		int id = jdbcTemplateObject.queryForObject(sql, Integer.class, entry.getHospitalId(), entry.getSpecialtyId());
		
		return id;
	}

	@Override
	public List<HospitalSpecialtyEntry> pullAll() {
//		String sql = "select healthcareprovider_specialty.id as id, healthcareprovider_specialty.healthcareprovider as hospitalId, " +
//					 "healthcareprovider_specialty.specialty as specialtyId, healthcareprovider_specialty.name as specialtyName " +
//					 "from healthcareprovider_specialty";
		String sql = "select id, healthcareprovider, specialty, name from healthcareprovider_specialty";
		JdbcTemplate jdbcTemplateObject = new JdbcTemplate(dataSource);
	
		List<HospitalSpecialtyEntry> entries  = jdbcTemplateObject.query(sql, new HospitalSpecialtyMapper());

		return entries;
	}
}
