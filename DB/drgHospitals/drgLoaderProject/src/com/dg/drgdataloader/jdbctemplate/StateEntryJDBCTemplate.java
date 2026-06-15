package com.dg.drgdataloader.jdbctemplate;

import java.util.List;

import com.dg.drgdataloader.dao.StateEntryDao;
import com.dg.drgdataloader.jdbcmapper.StateEntryMapper;
import com.dg.drgdataloader.model.StateEntry;

import javax.sql.DataSource;

//import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class StateEntryJDBCTemplate extends JDBCTemplate {
//	private JdbcTemplate jdbcTemplateObject;
//	private DataSource dataSource;

//	public void setDataSource(DataSource dataSource) {
//		this.dataSource = dataSource;
//		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
//	}

	public List<StateEntry> pullAll() {
		String sql = "select state.id as stateId, state.code as stateCode, state.name as stateName,  " +
				     "country.id as countryId, country.name as countryName " +
					 "from state join country on state.country = country.id where country.name = 'United States'";
		JdbcTemplate jdbcTemplateObject = new JdbcTemplate(getDataSource());
		
		List<StateEntry> stateEntries  = jdbcTemplateObject.query(sql, new StateEntryMapper());

		return stateEntries;
	}
}
