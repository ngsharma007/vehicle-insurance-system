package com.controller;

import java.io.IOException;
import com.BO.*;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.VO.UserVO;


public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw=response.getWriter();
		
		boolean x = false;
		boolean y=false;
		response.setContentType("text/html");
		
		String username=request.getParameter("name");
		String password=request.getParameter("password");
		 
		
	
				UserVO userVO=new UserVO(username,password);
				
				//UserDAO userDAO=new UserDAO();
				UserBO userBO=new UserBO();
				
				try {
					//x=userDAO.insert(userVO);
					
					x=userBO.validate(userVO);
					
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
		
				try {
					//x=userDAO.insert(userVO);
					
					 y = userBO.validateadmin(userVO);
					
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
				
				
				
				
		
				
				if(y)
				{
					
					
					//session-created------------
					HttpSession session=request.getSession();
					session.setAttribute("uid", username);
					response.sendRedirect("AdminDashboard.jsp");
				}
				else if(x)
				{
					String name = null;
					//session-created------------
                   UserBO ubo=new UserBO();
                   try {
					name=ubo.cusid1(userVO);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
					HttpSession session=request.getSession();
					session.setAttribute("cid", username);
					session.setAttribute("name",name);
					session.setAttribute("pass", password);
					response.sendRedirect("UserDashboard.jsp");
				}
				else
				{
					//pw.print("<center><h3>Invalid Id or Password combination</h3></center>");
					request.setAttribute("check", "check");
					RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");  
	
					//servlet2 is the url-pattern of the second servlet  
					  
					rd.include(request, response);
				}
	}

}
