<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
p{
margin-left: 5%;}

#op{
align: center;
padding-left:400px;
}
.div1{
align: center;
width:520px;
padding: 10px;
font-size: 20px;
border-sytle:double;
border-width:20px;
border-color: purple;
font-family:serif;

}


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>





<%!int flag=0; %>
<%@page import="javax.servlet.http.HttpSession" %>
<%HttpSession session1=request.getSession();
//System.out.println("hello");
if(session1.getAttribute("cid")==null && session1.getAttribute("uid")==null){
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
                    <li ><a href="HomePage.jsp">Home<span class="sr-only"></span></a></li>
                    
                    <li><a href="AboutUs.jsp">About Us</a></li>
                </ul>
               
               
               
               
               
               
               
               
               
               
               
               
               
         <%if(flag==0)
{
	
%>
<ul class="nav navbar-nav navbar-right">
 <li class="active"><a href="ContactUs.jsp">Contact Us</a></li>
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

            <img src="images/4wheeler.png" style="height: 120px; width: 120px;" />
        </div>
        <div class="col-sm-10">
          <h1>Vehicle Insurance System...</h1>
       

        </div>
        </div>

        </div>

        
         </div>
       
            

        
              <h3>Contact Us</h3>
             
             
             


             
    </div>

                        
            
        <div id="op"> <p class="div1">   
        <h3>HEAD OFFICE</h3> <br>
       <h4> KOLKATA:</h4>
        landline: 0612-200012<br>
        mob:  9560970466<br>
        
       <h4>PUNE:</h4> 
        landline:044:2567897<br>
        mob:     4732878274<br>
        <br>
         Have a query? Feel free to email us at best.insure@cts.com.   </p> </div>
                                                 
                           
                         
                         </div>
                    
       
       <%flag=0; %>       
</body>

</html>