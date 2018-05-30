package com.BO;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.DAO.AdminVRDAO;

public class AdminVApproveBOO {
	public static void approve(String id) throws SQLException{
		AdminVRDAO advrdao=new AdminVRDAO();
		try {
			AdminVRDAO.approve(id);
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	public static ResultSet fetch() throws SQLException{
		ResultSet rs=AdminVRDAO.insert();
		return rs;
	}

}
