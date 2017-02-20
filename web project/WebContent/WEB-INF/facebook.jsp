<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready( function(){
	/* $("#btnlogin").click(function(){

 var username=$("#maill").val();
 	  var Password=$("#Password").val();
 	  //alert(Password);
  $.ajax(
    { 
      'url':'http://services.trainees.baabtra.com/LoginService/login.php',
      'DataType':'jsonp',
      'data':{email:username, password:Password},
      success:function(data)
      {
      var obj = $.parseJSON(data);
          
      $("#contact").html(obj[0].ResponseCode);
      if(obj[0].ResponseCode==200)
      {
      	window.location.href="home.jsp";
      }
       else if(obj[0].ResponseCode==500)
       {
       	window.location.href="passwrong.jsp";
       }
      else
      {
      	window.location.href="emailwrong.jsp";
      }
      },

      error:function()
      {
        alert("error");
      }


    });
});*/
 });
</script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>  
<header>
<div class="container_fluid">
    <div style="background: #3b5998">
        <div class="row">
        <form:form name="loginform" method="POST" action="/web_project/login" modelAttribute="Loginbean">

        
           <div class="col-md-5 ">
            <div style="color: white;font-family:verdana ;font-size: 70px">
                 <label>facebook</label>
            </div>
           </div>

           <div class="col-md-3">
             <div style="color: white">
               <label>Email</label><br>
                <input type="text" id="maill" name="ema" >
               

              </div>
           </div>
           <div class="col-md-3">
             <div style="color: white">
               <label>Password</label><br>
                <input type="Password" id="Password" name="word"><br>
                <label style="color: white"><u style="color: white">forgotten password?</u></label>
              </div>
           </div>
           <div class="col-md-1">
         
   <input type="submit" class="btn btn-primary" style="margin-height: -12px" id="btnlogin" value="login">

           
           </div>

    </form:form>
             </div>    
           </div>
        </div>
  

     </div>
     
</div>
</header>




<div class="container_fluid" style=" font-family: times new roman">
    <div style="background: #c1d1f0">
        <div class="row">
        
        <form:form name="submitForm" method="POST" action="/web_project/facebook" modelAttribute="Userbean">
           <div class="col-md-6">
           <label><h4> <b>connect with friends and the world around you on facebook </b></label></h4><br>
            <img src="images/images9.jpg" width="400">
           </div>
        <div class="col-md-6">
         <label><h3 style="font-family: bold"><b>create an account</b></h3></label><br>
         <label><h4><b>it's free and always will be</b></h4></label><br>

         <input type="text" placeholder="first name" id="firstname" size="48" name="fname"><br>
         <label Id= "errormessage" style="color: red"></label><br>
     <input type="text" id="lastname" placeholder="last name" size="48" name="lname"><br>
              <label Id= "errormessage1" style="color: red"></label><br>
    <input type="text" Id="phonenumber" placeholder="mobilenumber" name="phno" size="48" maxlength="10"><br>
    <label Id= "errormessage2" style="color: red"></label><br>

     <input type="text"  Id="email" placeholder="email" size="48"  name="email"><br>
     <label Id= "errormessage3" style="color: red" ></label><br>

     <input type="password" Id="pass" placeholder="password" size="48" name="pword"><br><br>
<label Id= "errormessag4" style="color: red" ></label><br>

            <h3 style="font-family: times new roman"><b>Birthday</b></h3>
            

       
            <select id="Day" >    
                 <option value="">Date</option>
                    <option value="sun">Sunday</option>
                    <option value="mon">Monday</option>
                    <option value="tue">Tuesday</option>
                    <option value="wed">Wednesday</option>
                    <option value="thu">Thursday</option>
                    <option value="fri">Friday</option>
                    <option value="sat">Saturday</option>
                </select>
                  <select id="Month">
                    <option value="">Month</option>
                    <option value="jan">Jan</option>
                    <option value="feb">feb</option>
                    <option value="march">March</option>
                    <option value="april">april</option>
                    <option value="may">may</option>
                    <option value="june">june</option>
                    <option value="july">july</option>
                </select>
                  <select id="Year">
                    <option value="">Year</option>
                    <option value="90">1990</option>
                    <option value="91">1991</option>
                    <option value="92">1992</option>
                    <option value="93">1993</option>
                    <option value="94">1994</option>
                    <option value="89">1989</option>
                    <option value="88">1988</option>
                </select>
              
                  <font size="2" color="blue">Why do I need to provide my date of birth</font> <br>
              <input type="Radio" id="gender" value="female"> Female
              <input type="Radio" name="gender" value="male"> Male<br>
              <font size="2" color="grey">By Clicking Create an account,you agree to our <a href="#">Terms </a> </font><br>
              <font size="2" color="grey">and that you have read our <a href="#"> Data Policy</a>,including our cookie use</font> <br>
              <hr>
              <input type="submit"   value="Create an account"  id="account" align="center" style="color:white; background-color:green; button-radius:6px"> 

               
            </div></div>  
            </form:form>
 

	</div></div>
</section>
</body>
</html>
