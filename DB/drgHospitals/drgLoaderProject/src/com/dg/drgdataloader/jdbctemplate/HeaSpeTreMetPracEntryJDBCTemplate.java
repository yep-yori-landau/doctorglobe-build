package com.dg.drgdataloader.jdbctemplate;

import javax.sql.DataSource;
import java.util.List;

//import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.dg.drgdataloader.dao.HeaSpeTreMetPracDao;
import com.dg.drgdataloader.jdbcmapper.HeaSpeTreMetPracMapper;
import com.dg.drgdataloader.model.HeaSpeTreMetPracEntry;

public class HeaSpeTreMetPracEntryJDBCTemplate implements HeaSpeTreMetPracDao {
	private DataSource dataSource;
//	private JdbcTemplate jdbcTemplateObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
//		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

	@Override
	public int add(HeaSpeTreMetPracEntry entry) {
		String sql = "insert into healthcareprovider_specialty_treatment_method_practitioner (healthcareprovider_specialty_treatment_method, practitioner, " + 
					 "number_performed_last_year, healthcareprovider_price, currency) values (?, ?, ?, ?, ?)";
		JdbcTemplate jdbcTemplateObject = new JdbcTemplate(dataSource);

		jdbcTemplateObject.update(sql, entry.getHeaSpeTreMetId(), entry.getPractitionerId(), entry.getNumLastYear(), entry.getPrice(), "USD");
		
		sql = "select id from healthcareprovider_specialty_treatment_method_practitioner where healthcareprovider_specialty_treatment_method = ? " + 
			  "and practitioner = ? and corporatecompany_insurance is NULL";
		int id = jdbcTemplateObject.queryForObject(sql, Integer.class, entry.getHeaSpeTreMetId(), entry.getPractitionerId());

		return id;
	}	
	
	public List<HeaSpeTreMetPracEntry> pullAll() {
		String sql = "select id, healthcareprovider_specialty_treatment_method as hstm, practitioner, number_performed_last_year, healthcareprovider_price " +
					 "from healthcareprovider_specialty_treatment_method_practitioner where corporatecompany_insurance is NULL";

		JdbcTemplate 	  jdbcTemplateObject = new JdbcTemplate(dataSource);
		List<HeaSpeTreMetPracEntry> entries  = jdbcTemplateObject.query(sql, new HeaSpeTreMetPracMapper());

		return entries;
	}
}
