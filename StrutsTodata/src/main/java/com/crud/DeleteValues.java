package com.crud;

import java.sql.Connection;
import java.sql.SQLException;

import com.tap.database.DataBase;

public class DeleteValues {
		
	public void deletevalues(String id)  {
		DataBase objdb= new DataBase();
		    Connection connection=objdb.getConnection();
		    java.sql.PreparedStatement pstmt = null;		   
		   try {
			   String query = "DELETE from employee where id=?";
			     pstmt =   connection.prepareStatement(query);
			     pstmt.setString(1, id);
			     pstmt.executeUpdate();	
			     

		   
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		   finally{
			 try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}  
		   }
	}
}
