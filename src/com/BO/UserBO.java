package com.BO;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.DAO.UserDAO;
import com.VO.URegVO;
import com.VO.UserVO;

public class UserBO {







	public boolean validate(UserVO userVO) throws SQLException{
		boolean x = false;
		UserDAO userDAO=new UserDAO();
		x=userDAO.validate(userVO);
		
		return x;
		
	}

	
	public boolean validateadmin(UserVO userVO) throws SQLException{
		boolean x = false;
		UserDAO userDAO=new UserDAO();
		x=userDAO.validateadmin(userVO);
		
		return x;
		
	}
	
	
	
	
	
	
	public static String cusid1(UserVO userVO) throws SQLException {
	
	String a=UserDAO.validate1(userVO);
	return a;

	}
	
	
	
}
