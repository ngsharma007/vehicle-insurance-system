package com.BO;

import java.sql.SQLException;

import com.DAO.ClaimPolicyDAO;
import com.VO.ClaimPolicyVO;

public class ClaimPolicyBO {
	public boolean insertPolicy(ClaimPolicyVO claimPolicyVO) throws SQLException{
    ClaimPolicyDAO claimPolicyDAO=new ClaimPolicyDAO();
	
	boolean update=claimPolicyDAO.insertPolicy(claimPolicyVO);
	return update;

}
	}
