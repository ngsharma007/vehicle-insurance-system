<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style>
        .jumbotron {
            background-image: url("images/wall.jpg");
            color: white;
        }

    </style>
</head>
<body>
<%!int flag=0; %>
<%@page import="javax.servlet.http.HttpSession" %>
<%HttpSession session1=request.getSession();
//System.out.println("hello");
if(session1.getAttribute("cid")==null   && session1.getAttribute("uid")==null){
	flag=1;
	System.out.println("hello1");
}
else{
	System.out.println("hello2");
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
                    <li class="active"><a href="HomePage.jsp">Home<span class="sr-only"></span></a></li>


                    <li><a href="AboutUs.jsp">About Us</a></li>
                </ul>
<%if(flag==0)
{
	
%>
<ul class="nav navbar-nav navbar-right">
 <li><a href="ContactUs.jsp">Contact Us</a></li>
 <li><a href="LogoutController">Logout</a></li>
                   
                </ul>
<%
}
else if(flag==1){
	%>
	<ul class="nav navbar-nav navbar-right">
                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="ContactUs.jsp">Contact Us</a></li>
                </ul>
	<%
}
	%>
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

                        <img src="" />
                    </div>
                    <div class="col-sm-10">
                        <h1>Welcome</h1>
                        <p>Vehicle Insurance is all you need</p>

                    </div>
                </div>

            </div>


        </div>

 </div>


    <h3 style="text-align:center;">Vehicle Insurance System allows end user to manage policies with ease.</h3>
                        <br />
        <div class="row">

              

            <div class="container">

                <div class="row">


                    <div class="col-sm-4">
                         
                        <div class="panel panel-primary">
                            <div class="panel-heading"><h4>We Provide:</h4></div>
                            <div class="panel-body">
                               
                        <br />
                        <p><b>Customer Registration</b></p>
                        <p><b>Vehicle Registration</b></p>
                        <p><b>Pay Premium</b></p>
                        <p><b>Claim Policy</b></p>
                        <p><b>Cancel Policy</b></p>
                            </div>
                        </div>


                    </div>

                    <div class="col-sm-4">


                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4>We Care</h4>
                            </div>
                            <div class="panel-body">

                                <br />
                                <p><b>Accidential Claim</b></p>
                                <p><b>Theft Claim</b></p>

                            </div>
                        </div>

                    </div>



                    <div class="col-sm-4 ">

                         <div class="panel panel-primary">
                            <div class="panel-heading"><h4>Access</h4></div>
                            <div class="panel-body">
                                 
                    <br />
                                
                    <p><a href="AdminDashboard.jsp">Administrator Dashboard</a></p>
                    <p><a href="UserDashboard.jsp">User Dashboard</a></p>
                    <p><a href="UserRegistration.jsp">New Registeration</a></p>
                     <p><a></b></p>
                            </div>
                        </div>

                  
                    </div>


                </div>
            </div>
    </br></br></br></br>  
            <%flag=0; %>
</body>

</html>

​

