<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>


table, tr, td {
    border: 1px solid black;
    width:"400%";
    
}
</style>
</head>
<body>
<%@page import="javax.servlet.http.HttpSession" %>
<%HttpSession session1=request.getSession();
if(session1.getAttribute("uid")==null){
	response.sendRedirect("Login.jsp");
}

%>
<h1>Registration Status</h1>
<%@page import ="com.DAO.AdminVRDAO"%>
<%@page import ="java.sql.ResultSet"%>
<%!int flag=0; %>
<%ResultSet rs=AdminVRDAO.insert();

while(rs.next()){
	flag=1;
	String vr_owner_name=rs.getString("vr_owner_name");
	String vr_vehicle_type=rs.getString("vr_vehicle_type");
	String vr_state=rs.getString("vr_state");
	%><table ><tr><td><%=vr_owner_name %></td><td><%=vr_vehicle_type %></td><td><%=vr_state %></td></tr></table>
<%}
%>
<%if(flag==0)
	{%>
	<%="No pending Approvals"%>
	<%}%><br>
<form action="AdminVApproveBO" method="post">
<%if(flag==1){ flag=0;%>
<input type="submit" value="Approve All">

<%} %>

</form>




</body>
</html>