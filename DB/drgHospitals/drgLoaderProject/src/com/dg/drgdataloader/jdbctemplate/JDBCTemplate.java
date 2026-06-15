package com.dg.drgdataloader.jdbctemplate;

import javax.sql.DataSource;

public abstract class JDBCTemplate {
//	private JdbcTemplate jdbcTemplateObject;
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
//		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
	protected DataSource getDataSource() {
		return dataSource;
	}
}
