package com.DAO;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.VO.*;
public class UserDAO {
	public boolean validate(UserVO userVO) throws SQLException
	{
		
		
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	//Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root"); 
    	
    	
    	String sql="select * from Customer_Registration where U_ID =? and PASSWORD=?";
    	PreparedStatement prepareStatement = connection.prepareStatement(sql);
    	prepareStatement.setString(1, userVO.getUserName());
    	prepareStatement.setString(2, userVO.getPassword());
    	
    	
    	
    	
        ResultSet x=prepareStatement.executeQuery();
			if(x.next())
			{
				return true; 
			}
			else
			{
				return false;
			}
    	
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public boolean validateadmin(UserVO userVO) throws SQLException
	{
		
		
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	//Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root"); 
    	
    	
    	
    	String sql="select * from Admin where U_ID =? and PASSWORD=?";
    	PreparedStatement prepareStatement = connection.prepareStatement(sql);
    	prepareStatement.setString(1, userVO.getUserName());
    	prepareStatement.setString(2, userVO.getPassword());
    	
    	
    	
    	
        ResultSet x=prepareStatement.executeQuery();
			if(x.next())
			{
				return true; 
			}
			else
			{
				return false;
			}
    	
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static String validate1(UserVO userVO) throws SQLException
	{
		
		
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	//Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root"); 
    	
    	System.out.println("Connection Established !!!!!");
    	
    	
    	String sql1="select NAME from Customer_Registration";
    
    	

    	String sql="select NAME from Customer_Registration where U_ID =? and PASSWORD=?";
    	PreparedStatement prepareStatement1 = connection.prepareStatement(sql);
    	prepareStatement1.setString(1, userVO.getUserName());
    	prepareStatement1.setString(2, userVO.getPassword());
    	
    	
    	String name = null;
    	
    	ResultSet x1=prepareStatement1.executeQuery();
    	while(x1.next()){
    		name=x1.getString("NAME");
    	}
    	return name;
    	
    	}

	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


