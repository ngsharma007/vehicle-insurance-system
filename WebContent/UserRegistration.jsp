
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>


<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />






<script>
function AgeValidate(dob){
	var today= new Date();
	var nowyear= today.getFullYear();
	var nowmonth=today.getMonth();
	var nowday=today.getDate();
	
	var b=document.getElementById('dob').value;
	var birth=new Date(b);
	var birthyear=birth.getFullYear();
	var birthmonth=birth.getMonth();
	var birthday=birth.getDate();
	
	var age=(nowyear-birthyear) ;
	var age_month=(nowmonth-birthmonth);
	var age_day=(nowday-birthday);
	if(age>90){
		window.location="UserRegistration.jsp" ;
		window.alert("Age cannot be more than 90 Years");
		
		return false;
	}
	 else if (birth>today)
     { 
     //something else is wrong
       window.alert('You cannot enter a date in the future!');
       window.location="UserRegistration.jsp" ;
       return false;
     }
	return true;
		
	}

/*****************************************************************************************/

    function checkform()
    {
    var dateString = document.purchase.txndt.value;
    var myDate = new Date(dateString);
    var today = new Date();
         if (document.purchase.txndt.value == "")
          { 
          //something is wrong
          alert('REQUIRED FIELD ERROR: Please enter date in field!')
          return false;
          }
          else if (myDate>today)
          { 
          //something else is wrong
            alert('You cannot enter a date in the future!')
            return false;
          }
          // if script gets this far through all of your fields
          // without problems, it's ok and you can submit the form
          return true;
    }
</script>



<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
	</SCRIPT>
</head>

<body onload="noBack();" 
onpageshow="if (event.persisted) noBack();" onunload="">
<div class="container" >
<div class="row">
        <div class="col-sm-2">
            <img src="images/logo.png" />
        </div>

       <div class="col-sm-10">
       <div class="page-header ">         
         <h1>Vehicle Insurance System <br />
         <small> User Registration</small></h1>
       </div>
       </div>
       
       
       
       
       
       
       
       
       
       

    
</div>
    <div class="row">
        <div class="col-xs-8  col-sm-8  col-md-8 col-lg-8">
            
            <div class="container">

    <form class="form-horizontal" role="form" action ="URegController" method="post">
         
        <br />
        <br />
        <br />
        <div class="form-group">

            <label class="col-sm-2 col-md-3 control-label " >Name</label>
            <div class="col-sm-4 col-md-3 ">
                <input type="text" class="form-control" name="username" id="nm" placeholder="Name" pattern="^[a-zA-Z ]+$"required>
            </div>
        </div>

        <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >Password</label>
            <div class="col-sm-4 col-md-3">
                <input type="password"  class="form-control" name="password" id="pwd" placeholder="Password" pattern= "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,12}$" required>
            </div>
        </div>
   <!-- "^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).*$" -->
        <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >Address</label>
            <div class="col-sm-4 col-md-3">
                <input type="text" class="form-control" name="address" id="add" placeholder="Address" pattern="^[a-zA-Z0-9 ]+$" required >
            </div>
        </div>

 <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >Country</label>
            <div class="col-sm-4 col-md-3">
            <select class="form-control" name="country" id="cr" placeholder="Country" required>
<option value="">------------Select Country------------</option>
<option value="India">India</option>
</select>
               <!--  <input type="text" class="form-control" name="country" id="cr" placeholder="Countery"> -->
            </div>
        </div>
         
          <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >State</label>
            <div class="col-sm-4 col-md-3">
            
            <!-- <input type="text" class="form-control" name="state"id="st" placeholder="State"> -->
            
            <select class="form-control" name="state"id="st" placeholder="State" required>
<option value="">------------Select State------------</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
</select> 
            
            
            
                
            </div>
        </div>

         
         
        <div class="form-group">

            <label class="col-sm-2 col-md-3  control-label" >City</label>
            <div class="col-sm-4 col-md-3">
                <input type="text" class="form-control" name="city" id="ct" placeholder="City name" required>
            </div>
        </div>

       

       
        <div class="form-group">
         <label class="col-sm-2 col-md-3  control-label" >Pincode</label>
            <div class="col-sm-4 col-md-3">
                <input type="text" class="form-control" name="pincode" maxlength="6" Sid="pc" placeholder="Pincode"  required  pattern="^[0-9]{6,6}$" >
            </div>
        </div>
        
        <div class="form-group">
         <label class="col-sm-2 col-md-3  control-label" >Email</label>
            <div class="col-sm-4 col-md-3">
                <input type="email" class="form-control" name="email" id="em" placeholder="Email@example.com"   pattern="^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"  required>
            </div>
        </div>

        <div class="form-group">
         <label class="col-sm-2 col-md-3  control-label" >Gender</label>
            <div class="col-sm-4 col-md-3">
                <input type="text" class="form-control" name="gender" id="gd" maxlength="1" placeholder="Gender" pattern="[M F m f]{1}"required>
            </div>
        </div>    

        <div class="form-group">
         <label class="col-sm-2 col-md-3  control-label" >Contact no</label>
            <div class="col-sm-4 col-md-3">
                <input type="text" class="form-control" name="contact_no" id="cn" maxlength="10" placeholder="+91" " pattern="^[0-9]{10,10}$"required>
            </div>
        </div>

        <div class="form-group">
         <label class="col-sm-2 col-md-3  control-label" >Date of birth</label>
            <div class="col-sm-4 col-md-3">
                <input type="date" class="form-control" name="dob" id="dob" onchange="AgeValidate()" required >
            </div>
        </div>

        <div class="form-group">
            <div class="row">
                  <div class="col-sm-offset-3 col-sm-10 col-md-4 ">
        
                <button type="submit" class="btn btn-default">Register</button> 
                      <button type="reset" class="btn btn-default">Reset</button><br />  <br />
                <p>Go back <a href="Login.jsp">Click here...</a></p>              
            </div>
               
            </div>
            
        </div>
        
    </form>
</div>
</div>

          <div class="col-sm-2  col-md-3 ">
              <h3>Instruction</h3>
                <ul class="list-group">
                <li class="list-group-item"> <b>Name</b> should container only alphabets and Space</li>
                <li class="list-group-item"> <b>Password</b> should container atleast an UpperCase,a LowerCase & a Digit, minimum 8 characters </li>
                <li class="list-group-item"> <b>Country</b> Only INDIA</li>
                <li class="list-group-item"> <b>Pincode</b> equal to 6 digits</li>
                <li class="list-group-item"> <b>Gender</b> M-Male   F-Female</li>
                <li class="list-group-item"> <b>Contact no</b> equal to 10 digits</li>
                <li class="list-group-item"> <b>Date of birth</b> Age must be less than 90years</li>
                  </ul>
            

        </div>
</div>
</div>



    <div>
    </div>
</body>
</html>

