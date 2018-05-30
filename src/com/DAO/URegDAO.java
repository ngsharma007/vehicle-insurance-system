package com.DAO;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

import com.VO.URegVO;

public class URegDAO {
	
	public int cidgen(URegVO uregVO)throws SQLException {
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	
		String sql1="Select U_ID from Customer_Id";
    	System.out.println("sql1");
    	PreparedStatement prepareStatement1 = connection.prepareStatement(sql1);
    	ResultSet rs=prepareStatement1.executeQuery();
    	
    	int a=0001;
    	if(rs.next())
    	{
    		a=rs.getInt("U_ID");
    	}
    	String sql2="update Customer_Id set U_ID="+(a+1)+"";	
    	PreparedStatement prepareStatement2 = connection.prepareStatement(sql2);
    	int y1=prepareStatement2.executeUpdate();
    	return a;
		
	}
	
	public String insert1(URegVO uregVO)throws SQLException {
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	String sql="insert into Customer_Registration values('"+
    	uregVO.getName()+"','"+uregVO.getPassword()+"','"+
    	
    	uregVO.getAddress()+"' ,'"+uregVO.getCity()+"','"+
    	
    	uregVO.getState()+"','"+uregVO.getCountry()+"','"+
    	
    	uregVO.getPincode()+"','"+uregVO.getEmail()+"','"+
    	
    	uregVO.getGender()+"','"+uregVO.getContact_no()+"','"+
    	
    	uregVO.getDob()+"','"+uregVO.getCid()+"' )";
    	
    	PreparedStatement prepareStatement = connection.prepareStatement(sql);
    	
    	

        int x=prepareStatement.executeUpdate();
			if(x==1)
			{
				return uregVO.getCid();
			}
			else
			{
				return "invalid entry";
			}
	}

	

}
