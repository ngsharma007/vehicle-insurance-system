<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
</head>
<body>


 <div class="container">
        <div class="row">
            <div class="col-sm-2">
                <img src="images/logo.png" />
            </div>

            <div class="col-sm-10">
                <div class="page-header ">
                    <h1>Vehicle Insurance System
                        <br />
                        <small>CustomerID Generation</small></h1>
                </div>
            </div>


        </div>



        <div class="container">
            <div class="row">
                <div class="col-xs-8  col-sm-8  col-md-8 col-lg-8">

                    <div class="container">
                        <h2>Customer Registered Successfully....</h2>
                        <h4>Your Customer ID is </h4>
                        <b>Customer ID:    <%=request.getAttribute("cid") %>    </b><p></p>


                        <form class="form-horizontal" role="form" action="Login.jsp">

                            <br />
                            <br />
                            <br />
                            <br />
                            <div class="form-group">

                                <div class="col-sm-offset-3 col-sm-10 col-md-3 ">


                                    <button type="submit" class="btn btn-default">Go to Login Page</button><br />
                                    <br />


                                </div>

                            </div>

                        </form>
                    </div>

                </div>

              <div class="col-sm-2  col-md-3 ">
              <h4>Instructions</h4>
                <ul class="list-group">
                <li class="list-group-item">Please Note down your <b>Customer ID</b> generated</li>
                <li class="list-group-item">Use it for Login at <b>Login Page</b></li>
                
                  </ul>
            

        </div>
            </div>
        </div>
</body>
</html>

    