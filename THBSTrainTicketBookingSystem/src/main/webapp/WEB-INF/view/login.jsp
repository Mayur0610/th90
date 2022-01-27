<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<style>
      body{
      background-image:url("plat2.jpg");
      margin: 0px;
      padding: 0px;
      text-align:center;
      width: 100%;
      background-color: #e6e6fae8;
      }

      input[type=text], input[type=password]{
      width:20%;
      padding:7px 10px;
      margin: 10px 0;
      display:inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      }

 .button {
     border: 3px solid #0080c0;
  color: #0080c0;
  padding: 5px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 10px 10px;
  cursor: pointer;
  border-radius:5px;
  position: relative;
  z-index:1;
}
.button:hover{
	color:#00ffff;
	cursor: pointer;
}

.button:before{
	transition: 0.5s all ease;
	position: absolute;
	top:0;
	left:50%;
	right:50%;
	bottom:0;
	opacity:0;
	content:"";
	background-color:#0080c0;
}

.button:hover:before{
	transition: 0.5s all ease;
	left:0;
	right:0;
	opacity:1;
	z-index:-1;
	
}

      #un,#ps{
      font-family:'Lato', sans-serif;
      color: gray;
      }

      #container{
          position: absolute;
          top:0;
          bottom: 0;
          left: 0;
          right: 0;
          margin: auto;
          width:600px;
          height: 300px;
          text-align: center;
          background-color:#7F6166;
          border-radius:5px;
      }
   

</style>

<title>LOGIN</title>
<link rel="stylesheet" type="text/css" href="/spring/URLToReachResourcesFolder/resources/file3.css">
</head>
<body>
	<div>
		<form:form action="login-panel" modelAttribute="objUser"  id="flogin">
		<div id="container">
			<h1 align="center" style="color:white;">LOGIN</h1>
			<div class="border-box">
			     <label for="userName" id="un" style="color:white;">Username:</label>
				<form:input path="userName"   placeholder="Enter Username" id="un"/>
				<br>
				<br>
				<label for="userPasswd" id="ps" style="color:white;">Password:</label>
				<form:password path="userPasswd" placeholder="Enter Password" id="ps"/>
				<br> <input type="submit" value="Login" name="action"
					class="button" /> <input type="submit"
					value="Register Now" name="action" class="button" />

			</div>
		</div>
		</form:form>
		<h2>${msg}</h2>
	</div>
</body>
</html>