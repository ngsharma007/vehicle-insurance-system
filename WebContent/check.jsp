<center>hello<center>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
div class="container">
        <div class="row">
        <div class="col-xs-8  col-sm-8  col-md-8 col-lg-8">
            
            <div class="container">

    <form class="form-horizontal" role="form" action="UserController" method="post">
         
        <br />
        <br />
        <br />
        <div class="form-group">

            <label class="col-sm-2 col-md-3 control-label " >Login ID</label>
            <div class="col-sm-4 col-md-3 ">
                <input type="text" class="form-control" id="Text1" name="name" placeholder="CustomerID"required>
            </div>
        </div>

         <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >Password</label>
            <div class="col-sm-4 col-md-3">
                <input type="password" class="form-control" id="password1" name="password" placeholder="Password"required>
            </div>
        </div>
        <br />

           <div class="form-group">
            <div class="col-sm-offset-3 col-sm-10 col-md-3 ">
                
                <button type="submit" class="btn btn-default">Login</button><br />  <br />
                
                <p>New User? <a href="UserRegistration.jsp">Register here...</a></p>
                
            </div>
            
        </div>
        
    </form>
</div>

        </div>

          <div class="col-sm-2  col-md-2 ">
              <h3>Instruction</h3>
            <p>All the instruction to be followed
                Steps are as below:
            </p>

        </div>
    </div>
    </div>

</body>
</html>