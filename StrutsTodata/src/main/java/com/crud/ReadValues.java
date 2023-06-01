package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.tap.database.DataBase;
import com.tap.database.UserBean;

public class ReadValues {
	
	public static void main(String[] args) {
		ReadValues objrv =	new ReadValues();
		objrv.getValues();	
	}

	public List<UserBean>  getValues() {
		 
		List<UserBean> list= new ArrayList<UserBean>();	
		DataBase objdb = new DataBase();
		    Connection connection=objdb.getConnection();
		    PreparedStatement pstmt = null;		   
		    ResultSet res = null ;
			   
		   
		   try {
			   String query = "select * from employee";
			     pstmt =  (PreparedStatement) connection.prepareStatement(query);
			     res = pstmt.executeQuery();			     
			     while(res.next()) {				    	  
   		        	 
   		        	 UserBean ub=  new UserBean();
   		        	ub.setId(res.getString("id"));
			        ub.setFirst_name(res.getString("first_name"));
			        ub.setLast_name(res.getString("last_name"));
			        ub.setUsername(res.getString("username"));
			        ub.setPassword(res.getString("password"));
			        ub.setAdress(res.getString("adress"));
			        ub.setC_num(res.getString("c_num"));			    	 
			        list.add(ub);  
		     }			     
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
