package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BO.UserRegBOO;
import com.DAO.URegDAO;
import com.VO.URegVO;

/**
 * Servlet implementation class URegController
 */
public class URegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URegController() {
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
		PrintWriter pw=response.getWriter();
	    String b2;
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
	    String pinc=request.getParameter("pincode");
		int pincode=Integer.parseInt(pinc);
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String contact_no=request.getParameter("contact_no");
		//Long c=Long.parseLong(contact);
		//Integer contact_no=Integer.parseInt(contact);
		
		String dob=request.getParameter("dob");
		String cid="";
		URegVO uregVO=new URegVO(username,password,address,city,state,country,pincode,email,gender,contact_no,dob,cid);
		
		//URegDAO uregDAO=new URegDAO();
		UserRegBOO uregBOO=new UserRegBOO();
		try {
			b2=uregBOO.cusid(uregVO);
			request.setAttribute("cid", b2);
			RequestDispatcher rd=request.getRequestDispatcher("IdGeneration.jsp");
			
			rd.forward(request,response);
		} catch (SQLException e) {
		
			e.printStackTrace();
		}

	}

}
