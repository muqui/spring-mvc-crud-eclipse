package com.alberto.config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
    public DriverManagerDataSource connection() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql//localhost:3306/person");
		dataSource.setUsername("root");
        dataSource.setPassword("Fedora12$");
        return dataSource;
    }
}

