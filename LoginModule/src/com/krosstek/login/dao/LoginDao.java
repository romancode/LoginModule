package com.krosstek.login.dao;

import java.sql.*;


public class LoginDao {
	
	String dbUrl = "jdbc:mysql://localhost:3306/hrm?autoReconnect=true&useSSL=false";
	String dbUser = "root";
	String dbPass = "12345678";
	String sql = "Select * from User Where userName=? & password?";
	
	public boolean LoginCheck(String userName, String password) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPass);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, userName);
			statement.setString(2, password);
			ResultSet rs = statement.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}

}
