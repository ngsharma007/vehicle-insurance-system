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






<%!int flag=0; %>
<%@page import="javax.servlet.http.HttpSession" %>
<%HttpSession session1=request.getSession();
//System.out.println("hello");
if(session1.getAttribute("cid")==null &&  session1.getAttribute("uid")==null){
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
                    
                    <li  class="active"><a href="AboutUs.jsp">About Us</a></li>
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

            <img src="images/4wheeler.png" style="height: 120px; width: 120px;" />
        </div>
        <div class="col-sm-10">
          <h1>Vehicle Insurance System...</h1>
       

        </div>
        </div>

        </div>

        
         </div>
        </div>
            

        <div class="container">
              <h3>About Us</h3>
             
             <p>We stay awake and alive because Insurance helps families in financial distress, during the times of death, disability, disease, and accidents, and when families need help most. One incident can destroy a family future and development. We hope no one ever faces such a situation, but the truth is millions of people do. Unlike European countries we have poor social security. The rich can still recover from the financial loss, but the poor cannot recover from such a loss easily. Thus we believe we do a noble act by building awareness about such a product.</p>
             <p>We are against miss selling. Millions of people every year buy Insurance policies without understanding as they are usually told just a few things to sell the product. Many times these are lies or half-truths; as such commitments are rarely documented or recorded. Thus customers start hating insurance and its sellers hurting persistency and growth. This is no way to build a sustainable business. We believe everyone must fully understand what they are buying, and know both the positives and the negatives. They should know the options, and choose what is best for them and their needs.</p>
    		<p>The true value of any insurance policy lies in the payment of a claim, and we will fight the corner of a customer very hard indeed, at the point of claim, and ensure he gets a fair deal from the insurance company.</p>
            <p>Finally we believe companies must make a profit too, else how can they continue to service customers. Thus we are against customer side fraud. We like customers to make truthful declarations, and not try to cheat the system.</p>
    		<p>All in all, Insurance has a huge role in supporting families in distress, and we will make it viable for every participant, as we said, fairly, transparently, and sustainably.</p>
   
</div>
                        
             
                                                 
                           
                         
                         
                    
       
              
</body>

</html>