package com.crud;

import java.sql.Connection;
import java.sql.ResultSet;

import com.tap.database.DataBase;
import com.tap.database.UserBean;

public class EditValues {
		

	public UserBean getValues(String id) {
		DataBase objdb= new DataBase();
		    Connection connection=objdb.getConnection();
		    java.sql.PreparedStatement pstmt = null;		   
		    ResultSet res = null ;
			 UserBean ub = new UserBean();	   
		   try {
			   String query = "select * from employee where id=?";
			     pstmt =   connection.prepareStatement(query);
			     pstmt.setString(1, id);
			     res = pstmt.executeQuery();			     
			     while(res.next()) {				    	  
  		       

			        ub.setId(res.getString("id"));
			        ub.setFirst_name(res.getString("first_name"));
			        ub.setLast_name(res.getString("last_name"));
			        ub.setUsername(res.getString("username"));
			        ub.setPassword(res.getString("password"));
			        ub.setAdress(res.getString("adress"));
			        ub.setC_num(res.getString("c_num"));			    	 
		     }			     
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return  ub;
	}
	public void editUser(UserBean ub) {
		DataBase objdb= new DataBase();
		    Connection connection=objdb.getConnection();
		    java.sql.PreparedStatement pstmt = null;		   
		   try {
			   String query = "UPDATE employee set first_name=?,last_name=?,username=?,password=?,adress=?,c_num=? where id=?";
			     pstmt =  connection.prepareStatement(query);
			     
			     pstmt.setString(1, ub.getFirst_name());
			     pstmt.setString(2, ub.getLast_name());
			     pstmt.setString(3, ub.getUsername());
			     pstmt.setString(4, ub.getPassword());
			     pstmt.setString(5, ub.getAdress());
			     pstmt.setString(6, ub.getC_num());
			     pstmt.setString(7, ub.getId());
			     pstmt.executeUpdate();			     
			       
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
	}
}
