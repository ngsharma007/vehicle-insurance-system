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

import com.BO.VRegBOO;
import com.DAO.VRegDAO;
import com.VO.VRegVO;

public class VRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public VRegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
	    String b2;
	    
	    HttpSession session1=request.getSession();
	    String name=(String)session1.getAttribute("name");
		
		
		String vr_state=request.getParameter("slist");  //vr_state
		String vr_vehicle_type=request.getParameter("List1"); //vr_vehicle_type
		String vr_manufacturer=request.getParameter("List2"); //vr_manufacturer
		String vr_model=request.getParameter("List3");               //vr_model
		String vr_engine_number=request.getParameter("vr_engine_number");
	    String yom=request.getParameter("vr_yom");
		int vr_yom=Integer.parseInt(yom);
		String vr_location=request.getParameter("slist");     //vr_location
		String price=request.getParameter("vr_price");
		float vr_price=Float.parseFloat(price);
		String vr_dop=request.getParameter("vr_dop");
		
	    String pid="";
	    String mat_date="";
	    float pre_amount = 0;
	    String status="pending";
	    String cid="";
	    //Sending U_ID to Vehicle_Registration table
	    
	    HttpSession session=request.getSession();
	    System.out.println("cid");
    cid=(String) session.getAttribute("cid");

	    
	    
	    
		VRegVO vregVO=new VRegVO(name,vr_state,vr_vehicle_type,vr_manufacturer,vr_model,vr_engine_number,vr_yom,vr_location,vr_price,vr_dop,pid,pre_amount,mat_date,status,cid);
		
		
		try {
			b2=VRegBOO.cusid(vregVO);
			//b2=VRegDAO.insert(vregVO);
			
			request.setAttribute("str", b2);
			RequestDispatcher rd=request.getRequestDispatcher("VehicleRegSuccess.jsp");
			
			rd.forward(request,response);
			
			
			
			
			
			
			
		
			
			
			
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
