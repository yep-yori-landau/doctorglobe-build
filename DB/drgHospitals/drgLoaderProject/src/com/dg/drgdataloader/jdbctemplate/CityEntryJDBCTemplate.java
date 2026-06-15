package com.dg.drgdataloader.jdbctemplate;

import java.util.List;

import com.dg.drgdataloader.dao.CityEntryDao;
import com.dg.drgdataloader.jdbcmapper.CityEntryMapper;
import com.dg.drgdataloader.model.CityEntry;

import javax.sql.DataSource;


//import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class CityEntryJDBCTemplate implements CityEntryDao {
	private DataSource dataSource;
//	private JdbcTemplate jdbcTemplateObject;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
//		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

	@Override
	public int addCity(CityEntry city, int stateId, int countryId) {
		String 		 sql 				= "insert into city (name, state, country) values (?, ?, ?)";
		JdbcTemplate jdbcTemplateObject = new JdbcTemplate(dataSource);

		jdbcTemplateObject.update(sql, city.getCityName(), stateId, countryId);
		
		sql = "select id from city where name = ? and state = ? and country = ?";
		int cityId = jdbcTemplateObject.queryForObject(sql, Integer.class, city.getCityName(), stateId, countryId);

		return cityId;
	}	
	
	public List<CityEntry> pullAll() {
		String sql = "select city.id as cityId, city.name as cityName, state.id as stateId, state.code as stateCode, " +
				     "country.id as countryId, country.name as countryName " +
					 "from city join state on city.state = state.id join country on city.country = country.id where country.name = 'United States'";
		
		JdbcTemplate 	jdbcTemplateObject 	= new JdbcTemplate(dataSource);
		List<CityEntry> cityEntries  		= jdbcTemplateObject.query(sql, new CityEntryMapper());

		return cityEntries;
	}
//	
//	public void pullCity(String cityName, String stateName) {
//		
//	}
}
