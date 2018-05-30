<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<%@page import="javax.servlet.http.HttpSession" %>
<%HttpSession session1=request.getSession();
if(session1.getAttribute("cid")==null){
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
                <a class="navbar-brand" href="#">Vehicle Insurance System</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li ><a href="HomePage.jsp">Home<span class="sr-only"></span></a></li>
                    <li class="active"><a href="#">User</a></li>
                    
                    <li><a href="AboutUs.jsp">About Us</a></li>
                </ul>
                
                
                
               <ul class="nav navbar-nav navbar-right">
                    <li><a href="LogoutController">LogOut</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="ContactUs.jsp">Contact Us</a></li>
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

            <img src="images/payPremium.png" style="height: 120px; width: 120px;" />
        </div>
        <div class="col-sm-10">
          <h1>Pay Premium</h1>
        <p>Vehicle Insurance System</p>  

        </div>
        </div>

        </div>

        
         </div>
       
            <div class="row">
                
                <h2>Opt Pay</h2>

                    <div class="container">
                     <div class="row">


                         <div class="col-sm-6">
                             <form>
                             <img class="center-block" src="images/DirectPay.png"style="height: 150px; width: 150px;" />
                             </br>
                             <button class="btn btn-default center-block" formaction="UserDirectPay.jsp"><b>Direct Pay</b>  </button>
                             </form>
                         </div>

                         
                        


                        <!--  <div class="col-sm-6">
                           	<form>
                             <img class="center-block" src="images/RegisteredPay.png" style="height: 150px; width: 150px;"/>
                             </br>
                             <button class="btn btn-default center-block " formaction="UserRegisteredPayLogin.jsp"> <b>Registered Pay</b></button>
                             </br> 
                            </form>
                              
                         </div> -->
                     </div>
                    </div>

      
    
 </br></br></br></br>             
</body>
</html>
