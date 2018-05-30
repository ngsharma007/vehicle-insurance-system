<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<%@page import="javax.servlet.http.HttpSession" %>
<%HttpSession session1=request.getSession();
if(session1.getAttribute("uid")==null){
	response.sendRedirect("Login.jsp");
}

%>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="HomePage.jsp">Vehicle Insurance System</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li ><a href="HomePage.jsp">Home<span class="sr-only"></span></a></li>
                    <li class="active"><a href="AdminDashboard.jsp">Admin</a></li>
                    
                    <li><a href="AboutUs.jsp">About Us</a></li>
                </ul>
               
               
               <ul class="nav navbar-nav navbar-right">
                    <li><a href="LogoutController">LogOut</a></li>
                </ul>
               
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <div class="container-fluid">

       


         <div class="jumbotron">
            <div class="container">
        <div class="row">
        <div class="col-sm-2">

            <img src="images/4wheeler.png" style="height: 120px; width: 120px;" />
        </div>
        <div class="col-sm-10">
          <p>Vehicle Insurance System</p> 
          <h2>Vehicle Approval board...</h2>
       

        </div>
        </div>

        </div>

        
         </div>
       
            
<div class="row">
        <div class="col-xs-8  col-sm-8  col-md-8 col-lg-8">
            
            <div class="container">
    
    <h1>Registration Status</h1>
<%@page import ="com.BO.AdminVApproveBOO"%>
<%@page import ="java.sql.ResultSet"%>
<%!int flag=0; %>
<%ResultSet rs=AdminVApproveBOO.fetch();

while(rs.next()){
	flag=1;
	String vr_owner_name=rs.getString("vr_owner_name");
	String vr_vehicle_type=rs.getString("vr_vehicle_type");
	String vr_state=rs.getString("vr_state");
	String p_id=rs.getString("p_id");
	%>
	
	<div class="container">
	<table class="table">
	<thead> <tr> <th>Owner name</th> <th>Vehicle type</th> <th>Vehicle State</th> <th></th> </tr> </thead>
	<tbody>
	<tr >
	<td><%=vr_owner_name %></td>
	<td><%=vr_vehicle_type %></td>
	<td><%=vr_state %></td>
	<td><form action="AdminVApproveController" method="post" id="myForm">
		<button class="btn btn-success" name="approve" type="submit" value="<%=p_id %>">Approve</button>
		</form>
	</td>
	
	</tr>
	</tbody>
	</table>
	</div>
	
<%}
%>
<%if(flag==0)
	{%>
	<%="No pending Approvals"%>
	<%}%><br>
<form action="AdminVApproveController" method="post">
<%if(flag==1)
    { flag=0;%>

<!-- <input type="submit" value="Approve All"> -->

<%} %>

</form>
             </div>

              </div>

<!--           <div class="col-sm-2  col-md-2 ">
              <h3>Instruction</h3>
            <p>All the instruction to be followed
                Steps are as below:
            </p>

        </div> -->
    </div>

                        
             
                                                 
                           
                         
                         </div>
                    
     <style>


table, tr, td {
    border: 1px solid black;
    width:"400%";
    
}
</style>  
              
</body>

</html>