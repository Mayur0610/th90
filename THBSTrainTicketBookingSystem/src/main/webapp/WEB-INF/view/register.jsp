<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIGNUP</title>
<link rel="stylesheet" type="text/css" href="/spring/URLToReachResourcesFolder/resources/file3.css">
<style>
body{
margin: 100px;
text-align: center;
align: center;
background-color: #e6e6fae8;
}

.input{
width: 20%;
margin: 8px 0;
padding: 7px 10px;
display: inline-block;
border:0px solid #ccc;
box-sizing: border-box;
}

.button{

width: 30%;
padding: 9px 5px;
margin:5px 0;
cursor:pointer;
border:3px solid #0080c0;
color: #0080c0;
margin-left: 80px;
}
.button:hover{
	color:black;
	cursor: pointer;
}

.button:hover:before{
	transition: 0.5s all ease;
	left:0;
	right:0;
	opacity:1;
	z-index:-1;
	
}


#contain{
          position: absolute;
          top:0;
          bottom: 0;
          left: 0;
          right: 0;
          margin: auto;
          width:600px;
          height: 250px;
          text-align: center;
          background-color:#7F6166;
          border-radius:5px;
      }

.fn{
font-family:'Lato', sans-serif;
color: gray;
}

#em{
margin-left:30px;
}




$white: #fff;
$google-blue: #4285f4;
$button-active-blue: #1669F2;.google-btn {
width: 184px;
height: 42px;
background-color: $google-blue;
border-radius: 2px;
box-shadow: 0 3px 4px 0 rgba(0,0,0,.25);
.google-icon-wrapper {
position: absolute;
margin-top: 1px;
margin-left: 1px;
width: 40px;
height: 40px;
border-radius: 2px;
background-color: $white;
}
.google-icon {
position: absolute;
margin-top: 11px;
margin-left: 11px;
width: 18px;
height: 18px;
}
.btn-text {
float: right;
margin: 11px 11px 0 0;
color: $white;
font-size: 14px;
letter-spacing: 0.2px;
font-family: "Roboto";
}
&:hover {
box-shadow: 0 0 6px $google-blue;
}
&:active {
background: $button-active-blue;
}
}@import url(https://fonts.googleapis.com/css?family=Roboto:500);


</style>

</head>
<body>

	<form:form action="processRegistration" modelAttribute="objReg">
	<div id="contain">
				<h1 align="center" style="color:white;">USER REGISTRATION</h1>

				<div class="fn">
					<form:label path="userName" class="input" style="color:white;">Name</form:label>
					<form:input path="userName" class="input" />
				
						
				
					<form:label path="userEmail" class="input" style="color:white;">User Email</form:label>
					<form:input path="userEmail" class="input"/>
				
    				
				
					<form:label path="password" class="input" style="color:white;">User Password</form:label>
					<form:password path="password" class="input" />
				
						
				
					<form:label path="country" class="input" style="color:white;">City</form:label>
					<form:select path="country" class="input">
						<form:option value="None" label="--Select--" />
						<form:options items="${countryList}" />
					</form:select>
				
					
				
					<form:label path="gender" class="input" style="color:white;">Gender</form:label>
					<form:radiobutton path="gender"  value="M" label="Male" />
					<form:radiobutton path="gender" value="F" label="Female" />
					<form:radiobutton path="gender" value="O" label="Other" />
	
					 
				<div>
					<input type="submit" value="Register Now"
						class="button" />
                </div>
               
			</form:form>
			</div></div>
			<h2>${objReg.msg}</h2>
</body>
</html>