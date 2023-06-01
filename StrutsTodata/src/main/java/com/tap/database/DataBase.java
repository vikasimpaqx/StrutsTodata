package com.tap.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DataBase {
	
	public static void main(String[] args) {
		DataBase objDB= new DataBase();		

	
	System.out.println(objDB.getConnection());
	}
	
	public  Connection getConnection() {
		Connection connection=null;
		ResultSet res =null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			connection  = DriverManager.getConnection("jdbc:mysql://localhost:3306/om", "root", "password");
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return connection;
		
		
	}
	
}
