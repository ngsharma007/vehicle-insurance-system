package com.DAO;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import com.VO.UserDirectPayVO;

public class UserDirectPayDAO {
	public static Date validate(String policyid,String cid) throws SQLException, ParseException{
		Date d=null;
		Driver driver=new oracle.jdbc.driver.OracleDriver();
    	DriverManager.registerDriver(driver);
    	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
    	
		String sql="select * from Vehicle_Registration where P_ID=? and U_ID=?";
		PreparedStatement ps=connection.prepareStatement(sql);
		ps.setString(1, policyid);
		ps.setString(2, cid);
		ResultSet rs=ps.executeQuery();
		String dt = null;

		if(rs.next()){
		    dt=rs.getString("MATURITY_DATE");
		    System.out.println("true1");
		}
		System.out.println(policyid);
		System.out.println(cid);
		System.out.println(dt);
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
		if(dt!=null){
			System.out.println("true");
		d=sdf.parse(dt);}
		return d;
	}
public static boolean update(String policyid,String cid,String x) throws SQLException{
	Driver driver=new oracle.jdbc.driver.OracleDriver();
	DriverManager.registerDriver(driver);
	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
	String sql="update  Vehicle_Registration set MATURITY_DATE=? where P_ID=? and U_ID=?";
	PreparedStatement ps=connection.prepareStatement(sql);
	ps.setString(1, x);
	ps.setString(2, policyid);
	ps.setString(3, cid);
	int a=ps.executeUpdate();
	if(a==1){
		return true;
	}
	else{
		return false;
	}
	
	}





public static int paygen(UserDirectPayVO vpayVO)throws SQLException {
	// TODO Auto-generated method stub
	Driver driver=new oracle.jdbc.driver.OracleDriver();
	DriverManager.registerDriver(driver);
	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
	String sql="insert into Direct_Pay_Premium values('"+
	vpayVO.getPolicy_id()+"','"+vpayVO.getAmount()+"','"+
	
	vpayVO.getPay()+"' ,'"+vpayVO.getContact_no()+"')";
	
	PreparedStatement prepareStatement = connection.prepareStatement(sql);
	
    int x=prepareStatement.executeUpdate();

    if(x==1)
	{
		return 1;
	}
    else
    	return 0;
	
	
	
	
	
	
	
	
	
	
}


}
