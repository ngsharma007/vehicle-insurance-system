package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BO.UserDirectPayBO;
import com.BO.VRegBOO;
import com.VO.UserDirectPayVO;
import com.VO.VRegVO;

public class UserDirectPayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserDirectPayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		PrintWriter pw=response.getWriter();
		

		
		
		
		
		
		
		
		
		//validation of u_id and policy_id
		
		String policyid=request.getParameter("policy_id");
		HttpSession session=request.getSession();
		String cid=(String)session.getAttribute("cid");
		Date d = null;
		try {
			d=UserDirectPayBO.validate(policyid,cid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		if(d==null){
			System.out.println("true2");
			response.sendRedirect("fail.jsp");
		}
		
		
		
		else{
		      Date d1=new Date();
		      int diffInDays = (int) ((d1.getTime() - d.getTime()) / (1000 * 60 * 60 * 24));
		      System.out.println(diffInDays);
		      
                if(diffInDays>0){
        	    response.sendRedirect("fail.jsp");
                 }
	            else if(diffInDays>-365 ){
	        	SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
	        	String x=sdf.format(d.getTime());
	        	String val[]=x.split("-");
	        	Integer year=Integer.parseInt(val[2]);
	        	year++;
	        	String newdate=val[0]+"-"+val[1]+"-"+year.toString();
        	    try {
				boolean a=UserDirectPayBO.update(policyid, cid, newdate);
					if(a)
					{
						String policy_id=request.getParameter("policy_id");
						String amount=request.getParameter("amount");
						String pay_mode=request.getParameter("pay");
						String cn_number=request.getParameter("cn_number");
	
	
	
						UserDirectPayVO vpayVO=new UserDirectPayVO(policy_id,amount,pay_mode,cn_number);
						
						UserDirectPayBO uPayBO =new UserDirectPayBO();
						int b2 = uPayBO.insertpay(vpayVO);

					       response.sendRedirect("success.jsp");
					}
				   else
					System.out.println("fail");
			    } 
        	    catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			                 }
            }
                
                
                
         else
	     {
	       response.sendRedirect("success1.jsp");
	     }
		}
		
		
	}

}
