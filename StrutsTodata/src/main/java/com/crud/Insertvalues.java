package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.tap.database.DataBase;

public class Insertvalues {
		

	public void insertValues(String id,String first_name, String last_name, String username, String password,String adress,String c_num) {
		
		DataBase objDB= new DataBase();
		   Connection connection=objDB.getConnection();
		   
		   PreparedStatement pstmt =null;
		   try {
		   
		   String query="insert into employee(id,first_name,last_name,username,password,adress,c_num) values(?,?,?,?,?,?,?)";
		    pstmt=connection.prepareStatement(query); 
		   pstmt.setString(1, id);
		   pstmt.setString(2, first_name);
		   pstmt.setString(3,last_name);
		   pstmt.setString(4,username);
		   pstmt.setString(5, password);
		   pstmt.setString(6, adress);
		   pstmt.setString(7, c_num);

		   pstmt.executeUpdate();
		   }
		   catch(Exception e) {
			  e.printStackTrace();
		   }
		   try {
			pstmt.close();
			   
		} catch (Exception e) {
		e.printStackTrace();
		}
	   }	
}
