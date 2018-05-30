package com.BO;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

import com.DAO.URegDAO;
import com.DAO.VRegDAO;
import com.VO.URegVO;
import com.VO.VRegVO;

public class VRegBOO {
	public static String cusid(VRegVO vregVO) throws SQLException {
//		java.util.Date date= new Date();
//    	Calendar cal = Calendar.getInstance();
//    	cal.setTime(date);
//    	int month = cal.get(Calendar.MONTH);
//    	int year=cal.get(Calendar.YEAR);
//    	
//    	Integer m=new Integer(month);
//    	m++;
//    	Integer y=new Integer(year);
//    	URegDAO uregDAO=new URegDAO();
//    	int a=uregDAO.cidgen(uregVO);
//    	
//    	Integer u=new Integer(a);
//    	String cid;
//    	if(m<=9)
//    	{
//    		 cid=y.toString()+"0"+m.toString()+""+u.toString();	
//    	}
//    	else
//    	{
//    		 cid=y.toString()+""+m.toString()+""+u.toString();
//    	}
//    	
//    	uregVO.setCid(cid);
//    	String x=uregDAO.insert1(uregVO);
//    	return x;
		String v_type=vregVO.getVr_vehicle_type();
    	
    	//calculation_of_Policy_ID
    	
    	java.util.Date date= new Date();
    	Calendar cal = Calendar.getInstance();
    	cal.setTime(date);
    	int year=cal.get(Calendar.YEAR);
    	Integer y1=new Integer(year);
    	int y=y1%100;
    	Integer y2=new Integer(y);
    	
    	VRegDAO vregDAO=new VRegDAO();
    	int a=vregDAO.cidgen(vregVO);
   	    Integer u=new Integer(a);
   	    
   	 String pid;
 	
 	pid=v_type.toString()+y2.toString()+u.toString();
 	vregVO.setPid(pid);
 	
 	//maturity_date_calulation	
	
	int my=year+1;
	Integer my1=new Integer(my);
	
	
	int day=cal.get(Calendar.DAY_OF_MONTH);
	Integer day1=new Integer(day);
	
	int month=cal.get(Calendar.MONTH);
	month++;
	Integer month1=new Integer(month);
	String mat_date="";
	if(month<=9)
	{
	mat_date=day1.toString()+"-"+"0"+month1.toString()+"-"+my1.toString();
	}
	else
	{
		mat_date=day1.toString()+"-"+month1.toString()+"-"+my1.toString();	
	}
    //premium_amount_calculation
	float pov=vregVO.getVr_price();
	float pre_amount1=(float) (pov * (6.5/100));
	Float pre_amount=new Float(pre_amount1);
	
	vregVO.setMat_date(mat_date);
	vregVO.setPre_amount(pre_amount);
	String x=vregDAO.insert1(vregVO);
	return x;
	}
}
