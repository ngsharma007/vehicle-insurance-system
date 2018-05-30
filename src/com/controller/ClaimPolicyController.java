package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BO.ClaimPolicyBO;
import com.VO.ClaimPolicyVO;


/**
 * Servlet implementation class ClaimPolicyController
 */
public class ClaimPolicyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClaimPolicyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		ClaimPolicyVO claimPolicyVO=new ClaimPolicyVO(); 
		
		claimPolicyVO.setPolicy_id(request.getParameter("policy_id"));
				
		claimPolicyVO.setClaim_type(request.getParameter("claim_type"));
	
		claimPolicyVO.setClaim_status("Pending");
		
		//Get_Session**************************************************************
		//String policyid=request.getParameter("policy_id");
		HttpSession session=request.getSession();
		String cid=(String)session.getAttribute("cid");
		 //int customer_ID=(Integer) session.getAttribute("cid");
		//int customer_ID=Integer.parseInt(customer_ID1);
		//***************************************************************************
		 System.out.println(cid);
		 claimPolicyVO.setCustomer_ID(cid);
	
		
		
		
		ClaimPolicyBO claimPolicyBO = new ClaimPolicyBO();
		boolean update = false;
		try {
			update = claimPolicyBO.insertPolicy(claimPolicyVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(update)
		{
			out.print("Unsuccessful");				
			
		}else
		{   
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("ClaimPolicySuccess.jsp");
			requestDispatcher.forward(request, response);
		}
	}

}
