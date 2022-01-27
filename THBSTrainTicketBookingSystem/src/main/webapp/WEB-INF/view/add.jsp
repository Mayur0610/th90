<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<title>Train Details</title>
<link rel="stylesheet" type="text/css" href="/spring/URLToReachResourcesFolder/resources/file4.css">
<style>
  body{
  background-color: #ffffff;
  background-attachment: fixed;
  background-size: cover;
   }

  table {
  font-family: arial,sans-serif;
  border-collapse: collapse;
  width: 50%;
  }

  th{
  background-color: #73bffa;
  border: 0px solid #0c1217;
  text-align: left;
  padding: 8px;
  }

   td{
   border: 0px solid #0c1217;
  text-align: center;
  padding: 8px;
  }

  tr:nth-child(even) {
  background-color: #87AAAA;
  }

  tr:nth-child(odd) {
  background-color: #C8E3D4;
  }

  mark{
  background-color:#73bffa;
  color:black;
  }


  .button {

border: 3px solid #0080c0;
color: #0080c0;
padding: 15px 20px;
text-align: center;
text-decoration: none;
display: inline-block;
font-size: 15px;
margin: 4px 2px;
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

  input{
  padding:5px;
  }
</style>
</head>
<body>
<div align="center">

<h1 style="color:white;">Add Train</h1>
<form:form action="save" modelAttribute="train" method="GET">

</br>
<table>

<tr>
<td><label>Train Number : </label></td>
<td><form:input path="trainNo"/></td>
</tr>

<tr>
<td><label>Train Name : </label></td>
<td><form:input path="trainName"/></td>
</tr>

<tr>
<td><label>Source : </label></td>
<td><form:input path="source"/></td>
</tr>

<tr>
<td><label>Destination : </label></td>
<td><form:input path="destination"/></td>
</tr>

<tr>
<td><label>Ticket price: </label></td>
<td><form:input path="ticketPrice"/></td>
</tr>

</table>

</br>
<input type="submit" value="submit" class="button">
</form:form>
</div>
</body>
</html>
