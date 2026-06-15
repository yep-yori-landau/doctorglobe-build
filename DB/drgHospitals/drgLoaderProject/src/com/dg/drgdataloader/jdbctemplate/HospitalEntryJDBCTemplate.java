package com.dg.drgdataloader.jdbctemplate;

import java.util.List;

import com.dg.drgdataloader.dao.HospitalEntryDao;
import com.dg.drgdataloader.jdbcmapper.HospitalEntryMapper;
import com.dg.drgdataloader.model.HospitalEntry;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class HospitalEntryJDBCTemplate implements HospitalEntryDao {
//	private JdbcTemplate jdbcTemplateObject;
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
//		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
		this.dataSource = dataSource;
	}

	@Override
	public int addHospital(HospitalEntry hospital) {
		String 		 sql 				= "insert into healthcareprovider(name, address_1, city, zip_code, email, drg_id, hrr_description, " +
										  "aha_id, aha_name, contact_name, admin_title, lat, lon, website) " +
										  "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		JdbcTemplate jdbcTemplateObject = new JdbcTemplate(dataSource);
		
		jdbcTemplateObject.update(sql, hospital.getName(), hospital.getAddress(), hospital.getCityId(), hospital.getZip(), 
								  "dummy@doctorglobe.com", hospital.getDrgId(), hospital.getDrgHRR(),
								  hospital.getAhaId(), hospital.getAhaHospitalName(), hospital.getAdminName(), hospital.getAdminTitle(),
								  hospital.getLat(), hospital.getLong(), hospital.getURL());
		
		sql = "select id from healthcareprovider where name = ? and address_1 = ? and city = ? and zip_code = ?";
		int hospitalId = jdbcTemplateObject.queryForObject(sql, Integer.class, hospital.getName(), hospital.getAddress(), hospital.getCityId(), hospital.getZip());

		return hospitalId;
	}	
	
	public List<HospitalEntry> pullAll() {
		String sql = "select " +
					"healthcareprovider.id as hospitalId, " 					+
					"healthcareprovider.name as hospitalName, " 				+
					"healthcareprovider.address_1 as address, " 				+
					"city.id as cityId, city.name as cityName, " 				+
					"healthcareprovider.zip_code as zip, " 						+
					"state.id as stateId, " 									+
					"state.code as stateCode, " 								+
					"healthcareprovider.drg_id as drgId, " 						+
					"healthcareprovider.hrr_description as drgHRRDescription, " +
					"healthcareprovider.aha_id as ahaId, " 						+
					"healthcareprovider.aha_name as ahaHospitalName, " 			+
					"healthcareprovider.contact_name as adminName, " 			+
					"healthcareprovider.admin_title as adminTitle, " 			+
					"healthcareprovider.lat as lat, " 							+
					"healthcareprovider.lon as lon, " 							+
					"healthcareprovider.website as url " 						+
					"from healthcareprovider join city on healthcareprovider.city = city.id join state on state.id = city.state " +
					"join country on city.country = country.id where country.name = 'United States'";

		JdbcTemplate 		jdbcTemplateObject 	= new JdbcTemplate(dataSource);
		List<HospitalEntry> hospitalEntries  	= jdbcTemplateObject.query(sql, new HospitalEntryMapper());

		return hospitalEntries;
	}
	
//	public void pullHospital(String hospitalName) {
//		
//	}
}
