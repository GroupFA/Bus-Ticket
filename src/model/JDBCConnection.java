/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class JDBCConnection {
	public static Connection getJDBCConnection() {

		final String url = "jdbc:mysql://localhost:3306/bus2";
		final String user = "root";
		final String password = "3081999haulu";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(url, user, password);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
		Connection connection = getJDBCConnection();
		if (connection != null) {
			System.out.println("Successful");
		} else
			System.out.println("Error");

	}
  public static void main(String[] args) {
	 Connection cone = getJDBCConnection();
	if(cone!=null) {
		System.out.println("true");
	}else {
		System.out.println("fail");
	}
}
}
