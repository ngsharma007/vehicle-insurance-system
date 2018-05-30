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




<%!int flag=0; %>
<%@page import="javax.servlet.http.HttpSession" %>
<%HttpSession session2=request.getSession();
//System.out.println("hello");
if(session2.getAttribute("cid")==null){
	flag=1;
	System.out.println("hello1");
}
else{
	System.out.println("hello2");
}

%>



<!Session-created not to open page directly!>

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
                <a class="navbar-brand" >Vehicle Insurance System</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li ><a href="HomePage.jsp">Home<span class="sr-only"></span></a></li>
                    <li class="active"><a href="#">User</a></li>
                    
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

else if(flag==1)
{
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

            <img src="images/DirectPay.png" style="height: 120px; width: 120px;" />
        </div>
        <div class="col-sm-10">
          <h1>Direct Pay Premium</h1>
        <p>Vehicle Insurance System</p>  

        </div>
        </div>

        </div>

        
         </div>
       
            
<div class="row">
        <div class="col-xs-8  col-sm-8  col-md-8 col-lg-8">
            
            <div class="container">

    <form class="form-horizontal" action="UserDirectPayController" method="post" role="form">
         
        <br />
        <br />
        <br />
        <div class="form-group">

            <label class="col-sm-2 col-md-3 control-label " >Policy Id</label>
            <div class="col-sm-4 col-md-3 ">
                <input type="text" class="form-control" id="policy_id"name="policy_id" placeholder="ID" maxlength="8" required>
            </div>
        </div>

        <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >Amount</label>
            <div class="col-sm-4 col-md-3">
                <input type="text" class="form-control" id="amount" name="amount"placeholder="Rs." maxlength="8"  pattern="^[0-9]{5,8}$" required>
            </div>
        </div>

        <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >Payment mode</label>
            <div class="col-sm-4 col-md-3">
                    <div class="radio">
                    </br>
                    <img src="images/debitcard.png" style="height: 50px; width: 50px;"/>
                    </br>
                    <label>
                    <input type="radio" name="pay"id="pay"  value="Debit Card"  required>
                    Debit card
                    </label>

                    </br>
                    <img src="images/creditcard.png" style="height: 50px; width: 50px;" />
                    </br>
                    <label>
                    <input type="radio" name="pay"id="pay" value="Credit Card" required>
                    Credit card
                    </label>

                    </br>
                    <img src="images/netbanking.png" style="height: 50px; width: 50px;" /> 
                    </br>
                    <label>
                    <input type="radio" name="pay"id="pay" value="Net Banking" required>
                    Net Banking
                    </label>
                    </div>

            </div>
        </div>

        <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >Contact no</label>
            <div class="col-sm-4 col-md-3">
                <input type="tel" class="form-control" id="number" name="cn_number" maxlength="10" placeholder="+91" " pattern="^[0-9]{10,10}$"required>
            </div>
        </div>



        <div class="form-group">
            <div class="row">
                  <div class="col-sm-offset-3 col-sm-10 col-md-4 ">
        
                <button type="submit" class="btn btn-default">Pay</button> 
                      <button type="reset" class="btn btn-default">Reset</button><br />  <br />
                <p>Go back <a href="UserDashboard.jsp">Click here...</a></p>              
            </div>
               
            </div>
            
        </div>
        
    </form>
</div>

        </div>

      <!--     <div class="col-sm-2  col-md-2 ">
              <h3>Instruction</h3>
            <p>All the instruction to be followed
                Steps are as below:
            </p>

        </div>
    </div> -->

                        
             
                                                 
                           
                         
                         </div>
                    
       
              
</body>
</html>
