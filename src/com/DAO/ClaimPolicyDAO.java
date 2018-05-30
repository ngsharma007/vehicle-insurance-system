package com.DAO;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.VO.ClaimPolicyVO;

public class ClaimPolicyDAO {
	public boolean insertPolicy(ClaimPolicyVO claimPolicyVO) throws SQLException {

	Driver driver=new oracle.jdbc.driver.OracleDriver();
	DriverManager.registerDriver(driver);
	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","system","password1$");
	
	
  	 
	 Statement stmt=connection.createStatement();		
     String sql = "insert into claim_policy(policy_id,claim_type,claim_status,U_ID) values('"+claimPolicyVO.getPolicy_id()+"','"+claimPolicyVO.getClaim_type()+"','"+claimPolicyVO.getClaim_status()+"',"+claimPolicyVO.getCustomer_ID()+")";
     boolean update=stmt.execute(sql);

	
	if(update)
	 {
		 return true;
	 }else
	 {
		 return false;
	 }
	
	}
}
