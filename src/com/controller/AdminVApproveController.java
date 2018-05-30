package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BO.AdminVApproveBOO;
import com.DAO.AdminVRDAO;

/**
 * Servlet implementation class AdminVApproveController
 */
public class AdminVApproveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminVApproveController() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AdminVRDAO advrdao=new AdminVRDAO();
		String id = request.getParameter("approve");
		AdminVApproveBOO advrboo=new AdminVApproveBOO();
		try {
			advrboo.approve(id);
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		//for redirecting
		PrintWriter out=response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print( "<script type='text/javascript'>window.location.href ='AdminApproval.jsp?'</script>");
		out.print("</body>");
		out.print("</html>");
	}

}
