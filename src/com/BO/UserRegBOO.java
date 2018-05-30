package com.BO;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

import com.DAO.URegDAO;
import com.VO.URegVO;

public class UserRegBOO {
	public static String cusid(URegVO uregVO) throws SQLException {
		java.util.Date date= new Date();
		
    	Calendar cal = Calendar.getInstance();
    	cal.setTime(date);
    	int month = cal.get(Calendar.MONTH);
    	int year=cal.get(Calendar.YEAR);
    	
    	Integer m=new Integer(month);
    	m++;
    	Integer y=new Integer(year);
    	
    	URegDAO uregDAO=new URegDAO();
    	
    	int a=uregDAO.cidgen(uregVO);
    	
    	Integer u=new Integer(a);
    	String cid;
    	if(m<=9)
    	{
    		 cid=y.toString()+"0"+m.toString()+""+u.toString();	
    	}
    	else
    	{
    		 cid=y.toString()+""+m.toString()+""+u.toString();
    	}
    	
    	uregVO.setCid(cid);
    	String x=uregDAO.insert1(uregVO);
    	return x;
	}

}
