package com.sud.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {

	public static Connection getConnection() {
		try {
			// Step 1: load driver
			Class.forName("com.mysql.jdbc.Driver");
			// Step 2: GetConnection here
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "password");
			return conn;
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Connection not establish ?");
		}
		return null;
	}
}
