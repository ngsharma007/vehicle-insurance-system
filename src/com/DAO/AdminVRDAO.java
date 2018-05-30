package com.DAO;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;



public class AdminVRDAO {
	
	
	
	public static ResultSet insert() throws SQLException 
	{
		
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	
    	
    	

    	String sql3="select * from Vehicle_Registration where vr_status_report='pending'";
    	PreparedStatement prepareStatement3 = connection.prepareStatement(sql3);

    	ResultSet rs=prepareStatement3 .executeQuery();
    	
    	
		return rs;
		
		
	}
	
	public static void approve(String id)throws SQLException{
		
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	
    	
    	

    	String sql4="update  Vehicle_Registration set vr_status_report=? where p_id='"+id+"'";
    	
    	PreparedStatement prepareStatement3 = connection.prepareStatement(sql4);
          prepareStatement3.setString(1, "Approved");
    	int a =prepareStatement3 .executeUpdate();
    	 	
    	
	}
	
	

}

