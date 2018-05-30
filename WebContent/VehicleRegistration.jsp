<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
	</SCRIPT>
</head>
<body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">


<!-- session created -->

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
                    
                    <li><a href="#">About Us</a></li>
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
                        <h1>Register Vehicle</h1>
                        <p>Vehicle Insurance System</p>

                    </div>
                </div>

            </div>


        </div>


        <div class="row">
            <div class="col-xs-8  col-sm-8  col-md-8 col-lg-8">

                <div class="container">

                    <form class="form-horizontal"   action="VRegController" method="post"  role="form">

                        <br />
                        <br />
                        <br />
                        <div class="form-group">
                        
                        





                            <label class="col-sm-2 col-md-3 control-label ">Owner Name</label>
                            <div class="col-sm-4 col-md-3 ">
                                <input type="text" class="form-control" id="vr_nm" value=<%=(String)session1.getAttribute("name") %> name="vr_owner_name" disabled>
                            </div>
                        </div>

                        <div class="form-group">

                            <label class="col-sm-2 col-md-3  control-label">State</label>
                            <div class="col-sm-4 col-md-3">

                                <select class="form-control" name="slist" id="slist" onchange="copyValue()" required>
                                    <option value="">Select State</option>
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

                            <label class="col-sm-2 col-md-3  control-label">Vehicle Type</label>
                            <div class="col-sm-4 col-md-3">
                                <select  class="form-control" name='List1' id="List1" onchange="fillSelect(this.value,this.form['List2'])" required  >
                                <option value="">Make a selection</option>
                                
                                   
                                    
                                    
                                </select>
                            </div>
                        </div>

                        <div class="form-group">

                            <label class="col-sm-2 col-md-3  control-label">Manufacturer</label>
                            <div class="col-sm-4 col-md-3">
                                <select class="form-control" name='List2' id="List2" onchange="fillSelect(this.value,this.form['List3'])" class="DDlist" required >
                                <option value="">Make a selection</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">

                            <label class="col-sm-2 col-md-3  control-label">Model</label>
                            <div class="col-sm-4 col-md-3">
                                <select class="form-control" name='List3' id="List3" onchange="fillSelect(this.value,this.form['List4'])" class="DDlist"  required>
                                <option value="">Make a selection</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">

                            <label class="col-sm-2 col-md-3  control-label">Engine Number</label>
                            <div class="col-sm-4 col-md-3">
                                <input type="text" class="form-control" id="vr_en" name="vr_engine_number" maxlength="6" placeholder="Engine no.." pattern="^[0-9]{6,6}$" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 col-md-3  control-label">Year of make</label>
                            <div class="col-sm-4 col-md-3">
                                <input type="text" class="form-control" id="vr_yom" name="vr_yom" placeholder="year"onchange="return checkyearofmake();"maxlength="4" size="4" pattern="^[0-9]{4,4}$"required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 col-md-3  control-label">Registering location</label>
                            <div class="col-sm-4 col-md-3">

                                <input type="text" class="form-control" name="vr_location" id="rlocation" disabled />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 col-md-3  control-label">Price</label>
                            <div class="col-sm-4 col-md-3">
                                <input type="text" class="form-control" id="vr_prc" name="vr_price" placeholder="Rs." maxlength="8"  pattern="^[0-9]{5,8}$" required>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-2 col-md-3  control-label">Date Of Purchase</label>
                            <div class="col-sm-4 col-md-3">
                                <input type="date" class="form-control" id="vr_dop"  onchange="checkform()"  name="vr_dop" placeholder="dd/mm/yy" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-offset-3 col-sm-10 col-md-4 ">

                                    <button type="submit" class="btn btn-default">Register</button>
                                    <button type="reset" class="btn btn-default">Reset</button><br />
                                    <br />
                                    <p>Go back <a href="UserDashboard.jsp">Click here...</a></p>
                                </div>

                            </div>

                        </div>

                    </form>
                </div>

            </div>

            <div class="col-sm-2  col-md-2 ">
                <h1>Instruction</h1>
                <p>
                    All the instruction to be followed
                Steps are as below:

                    
                    <h3>Conventions:</h3><br />
                    <h4>Vehicle Type</h4>
                    <p>TW: Two Wheeler</p>
                    <p>FW: Four Wheeler</p>
                    <p>OT: Other</p>
                    <br />
                    <b>Note:</b>
                    <p>State and Registering name should be same </p>
                    <br />
                    <p>Date of Purchase should not be Greater than the current Date </p>
                </p>

            </div>
        </div>

    </div>
                    
       
    <script type="text/javascript"  ">

/****************/

var categories = [];

categories["vehicleType"] = ["TW","FW",'OT']; //Level 1

categories["TW"] = ["Honda", "TVS", "Mahindra","BAJAJ"];   // Level 2
categories["Honda"] = ['Splendar', 'Splendar plus', 'Passion Plus','Activa']; // Level 3
categories["TVS"] = ['Victor GLX', 'Sport', 'Apache','XL Super','Heavy Duty','Scooty pep']; // Level 3
categories["Mahindra"] = ['Duro']; // Level 3
categories["BAJAJ"] = ['Pulsar', 'Discover', 'Boxer']; // Level 3

categories["FW"] = ["HONDA", "TOYOTA", "HYUNDAI","MAHINDRA","CHEVROLET","SKODA","VOLKSWAGEN"];// Level 2
categories["HONDA"] = ['Accord','City','Amaze'];// Level 3
categories["TOYOTA"] = ['Etios','Venture','Accent'];// Level 3
categories["HYUNDAI"] = ['Venture','Accent'];// Level 3
categories["MAHINDRA"] = ['Scorpio','XUV'];// Level 3
categories["CHEVROLET"] = ['Tavera','Spark'];// Level 3
categories["SKODA"] = ['Fabia'];// Level 3
categories["VOLKSWAGEN"] = ['Punto'];

categories['OT'] = ['auto rickshaw']; 


 
var nLists = 3; // number of lists in the set

function fillSelect(currCat,currList){
  var step = Number(currList.name.replace(/\D/g,""));
  for (i=step; i<nLists+1; i++) {
    document.forms[0]['List'+i].length = 1;
    document.forms[0]['List'+i].selectedIndex = 0;
    document.getElementById('List'+i).style.display = 'none';
  }
  var nCat = categories[currCat];
  if (nCat != undefined) { 
    document.getElementById('List'+step).style.display = 'inline';
    for (each in nCat) 
{
      var nOption = document.createElement('option'); 
      var nData = document.createTextNode(nCat[each]); 
      nOption.setAttribute('value',nCat[each]); 
      nOption.appendChild(nData); 
      currList.appendChild(nOption); 
    }
  } 
}



function init() { fillSelect('vehicleType',document.forms[0]['List1']); }

navigator.appName == "Microsoft Internet Explorer"
   ? attachEvent('onload', init, false) 
  : addEventListener('load', init, false);
 
   /************/
   
   function copyValue(){

  var dropboxvalue = document.getElementById('slist').value;
  document.getElementById('rlocation').value = dropboxvalue;

}

   
  
   
   
   
   
  function Validate(vr_yom){
	   	var today= new Date();
	   	var nowyear= today.getFullYear();
	//   	var nowmonth=today.getMonth();
	//   	var nowday=today.getDate();
	   	
	   	var b=document.getElementById('vr_yom').value;
	   	
	//   	var birth=new Date(b);
	//   	var birthyear=birth.getFullYear();
	 //  	var birthmonth=birth.getMonth();
	//   	var birthday=birth.getDate();
	   	
	   	var age=(nowyear-b) ;
	   //	var age_month=(nowmonth-birthmonth);
	 //  	var age_day=(nowday-birthday);
	   	if(age<0 ){
	   		//window.location="UserRegistration.jsp" ;
	   		alert("Date Of Purchase cannot be greator than Current Date");
	   		return false;
	   		
	   	}
	   	else{}
   
   } 
   /***********/
   
   function AgeValidate(vr_dop){
   	var today= new Date();
   	var nowyear= today.getFullYear();
   	var nowmonth=today.getMonth();
   	var nowday=today.getDate();
   	
   	var b=document.getElementById('vr_dop').value;
   	var birth=new Date(b);
   	var birthyear=birth.getFullYear();
   	var birthmonth=birth.getMonth();
   	var birthday=birth.getDate();
   	
   	var age=(nowyear-birthyear) ;
   	var age_month=(nowmonth-birthmonth);
   	var age_day=(nowday-birthday);
   	if(age<0 ){
   		//window.location="UserRegistration.jsp" ;
   		alert("Date Of Purchase cannot be greator than Current Date");
   		
   	}
   	else if(age=0 ){
   		
   			               if(age_month<0){
   			                alert("month is greator");
   			                 }
   	                        else if(age_month=0){
   							            if(age_day<0){
   							            alert("day is greator");
   										}
   							            else if(age_day=0){}
   							            	
   							                               
   							            else{}
   							           }
   			                 else{}
   
   	     }
   	
   	
   	else{}
   }
   /****************************************************/
   
   
    function checkform()
    {
    	var b=document.getElementById('vr_yom').value;
    	var y=new Date(b);
  
    	var b=document.getElementById('vr_dop').value;
    	var d=new Date(b);
  
    var today = new Date();
         
           if (d>today)
          { 
            
               window.alert('You cannot enter a date in the future!')
               window.location="VehicleRegistration.jsp";
            return false;
          }
           
           else if(d<y){ 
            
               window.alert('You cannot enter a date less than year of make')
               window.location="VehicleRegistration.jsp";
            return false;
          }
          return true;
    }
   
   
   /*******************************************************************************/
   
    function checkyearofmake()
    {
	   
    	var b=document.getElementById('vr_yom').value;
    	var d=new Date(b);
  
    var today = new Date();
         
           if (d>today)
          { 
            
               window.alert('You cannot enter a date in the future!')
               window.location="VehicleRegistration.jsp";
            return false;
          }
          return true;
    }
   
   
</script>          
</body>
</html>
