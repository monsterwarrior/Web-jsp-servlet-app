/**
 * 
 */
package com.app.connectionUtills;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author sk
 * JDBC Operation
 */
public class MySqlConnectionUtils {

	// Note: Change the connection parameters accordingly.

	public static Connection getMySQLConnection() throws ClassNotFoundException, SQLException {
		String hostName = "localhost";
		String dbName = "servletApp";
		String userName = "root";
		String password = "admin";
		return getMySQLConnection(hostName, dbName, userName, password);
	}

	// URL Connection for MySQL:
	// Example: jdbc:mysql://localhost:3306/servletApp

	public static Connection getMySQLConnection(String hostName, String dbName, String userName, String password)
			throws SQLException, ClassNotFoundException {

		Class.forName("com.mysql.jdbc.Driver");
		String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}
}
