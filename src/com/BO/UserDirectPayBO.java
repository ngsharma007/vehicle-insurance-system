package com.BO;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;

import com.DAO.URegDAO;
import com.DAO.UserDirectPayDAO;
import com.VO.UserDirectPayVO;

public class UserDirectPayBO {

	public static Date validate(String policyid,String cid) throws SQLException, ParseException{
		Date d=UserDirectPayDAO.validate(policyid,cid);
		return d;
	}
	public static boolean update(String policyid,String cid,String x) throws SQLException{
		boolean a=UserDirectPayDAO.update(policyid, cid, x);
		return a;
	}
	
	
	
	
	public static int insertpay(UserDirectPayVO vpayVO) {
		
		UserDirectPayDAO vpayDAO=new UserDirectPayDAO();
    	
    	try {
			int a=vpayDAO.paygen(vpayVO);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
    	return 1;
		
		
	}
}
