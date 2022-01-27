<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Passenger Details</title>
    <link rel="stylesheet" type="text/css" href="/spring/URLToReachResourcesFolder/resources/file1.css">
<style>
  body{
  background-color: #ffffff;
  background-attachment: fixed;
  background-size: cover;
   }

  table {
  font-family: arial,sans-serif;
  border: 1px solid black;
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
  padding: 10px;
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


  .button1 {
  background-color: #1c87c9;
  border: none;
  color: white;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 2px 2px;
  cursor: pointer;
  border-radius:15px;
  }


.button {
border: 3px solid #0080c0;
color: #0080c0;
padding: 15px 20px;
text-align: center;
text-decoration: none;
display: inline-block;
font-size: 25px;
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
<form action="take">
<div align="center">
<br>
<br>
<br>
<h2 style="color:white; font-family:Times New Roman;font-size:40px;">Enter Your Details</h2>
<table>
<tr>
<td><label for="num1">Enter the Train Number</label></td>
<td>
<input name="trainNo" value="<%=request.getAttribute("num")%>" readonly/>
</td>
</tr>
<br/>

<tr>
<td><label for="date">Enter the Travel Date</label></td>
<td><input type ="date" name="date" id="date" min="2021-12-09" required></td>
</tr>

<tr>
<td><label>Name</label></td>
<td><input type="text" name="name" id="name" required></td></tr>

<tr>
<td><label>Age</label></td>
<td><input type="text" name="age" id="age" required></td></tr>
<tr>
<td><label>Enter Gender</label></td>
<td>
<select name="gender" id="gender" required>
   <option></option>
  <option value="M">Male</option>
  <option value="F">Female</option>
</td>
</select>
</tr>



</table>



<br>
<br>
<button class="button">Submit</button>
</div>
</form>


</body>
</html>
