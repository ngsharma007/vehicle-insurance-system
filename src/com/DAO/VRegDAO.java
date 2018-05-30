package com.DAO;

import java.io.PrintStream;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import com.VO.URegVO;
import com.VO.VRegVO;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class VRegDAO {

	public VRegDAO() {
		// TODO Auto-generated constructor stub
	}

	public VRegDAO(String pid, float pre_amount, String mat_date) {
		// TODO Auto-generated constructor stub
	}
	
	public int cidgen(VRegVO vregVO)throws SQLException {
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	String sql5="Select U_ID from Customer_Id";
    	PreparedStatement prepareStatement1 = connection.prepareStatement(sql5);
    	ResultSet rs=prepareStatement1.executeQuery();
    	int a=0001;
    	if(rs.next())
    	{
    		a=rs.getInt("U_ID");
    	}
    	
    	String sql6="update Customer_Id set U_ID="+(a+1)+"";	
    	PreparedStatement prepareStatement2 = connection.prepareStatement(sql6);
    	
    	int y4=prepareStatement2.executeUpdate();

    	return a;
		
		
	}
	
	public String insert1(VRegVO vregVO)throws SQLException {
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	String status="pending";
    	

    	String sql="insert into Vehicle_Registration values('"+
    	vregVO.getVr_owner_name()+"','"+vregVO.getVr_state()+"','"+
    	
    	vregVO.getVr_vehicle_type()+"' ,'"+vregVO.getVr_manufacturer()+"','"+
    	
    	vregVO.getVr_model()+"','"+vregVO.getVr_engine_number()+"','"+
    	
    	vregVO.getVr_yom()+"','"+vregVO.getVr_location()+"','"+
    	
    	vregVO.getVr_price()+"','"+vregVO.getVr_dop()+"','"+vregVO.getPid()+"','"+vregVO.getPre_amount()+"','"+vregVO.getMat_date()+"','"+vregVO.getStatus()+"','"+vregVO.getU_ID()+"')";
    	
    	PreparedStatement prepareStatement = connection.prepareStatement(sql);
    	
  
    	   
    	Float pre_amount=new Float(vregVO.getPre_amount());

    	
    	String str = vregVO.getPid().toString()+","+pre_amount.toString()+","+vregVO.getMat_date().toString();
   

        int x=prepareStatement.executeUpdate();
			if(x==1)
			{
				return str;
			}
			else
			{
			return "invalid";
			}
       
	}

	
	}


