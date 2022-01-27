<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

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
  border: 1px solid black;
  width: 50%;
  }

  th{
  background-color: #f0fff0;
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


  .button1 {
  border: 3px solid #0080c0;
  color: white;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 2px 2px;
  cursor: pointer;
  border-radius:5px;
  position: relative;
  z-index:1;
}

.button1:hover{
	color:#00ffff;
	cursor: pointer;
}

.button1:before{
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

.button1:hover:before{
	transition: 0.5s all ease;
	left:0;
	right:0;
	opacity:1;
	z-index:-1;
	
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
<h1 style="color:white; font-family:Times New Roman;font-size:40px;">Train Details</h1>


<table border="1">
    <tr>
    <th>Train Number</th>
    <th>Train Name</th>
    <th>Source</th>
    <th>Destination</th>
    <th>Ticket Price</th>
    <th>Update Train</th>
    <th>Delete Train</th>
    </tr>

    <c:forEach var="train" items="${trains}">
    <tr>
    <td>${train.trainNo}</td>
    <td>${train.trainName}</td>
    <td>${train.source}</td>
    <td>${train.destination}</td>
    <td>${train.ticketPrice}</td>
    <td><a href="/spring/update?trainNo=${train.trainNo}" class="button1"> Update</a></td>
    <td><a href="/spring/delete?trainNo=${train.trainNo}" onclick="if(!(confirm('Are you sure you want to delete this train?'))) return false" class="button1"> Delete</a></td>
    </tr>
    </c:forEach>
    </table>

<br>
<form action="add">
<button class="button"> Add</button>
<a href="index.jsp" class="button">Home</a>
</form>
    
</div>
</body>

</html>