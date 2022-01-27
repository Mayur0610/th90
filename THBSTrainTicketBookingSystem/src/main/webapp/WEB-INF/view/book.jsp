<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
  <title>Ticket Details</title>
<link rel="stylesheet" type="text/css" href="/spring/URLToReachResourcesFolder/resources/file1.css">
  <style>

  body{
  
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
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
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

  #a1:visited { visibility: hidden; }

  </style>

  </head>

<body>

<div align="center">
<form action="confirm">

<h2 style="color:white; font-family:Times New Roman;font-size:40px;">TICKET DETAILS Details</h2>
<table>
     <tr>
     <td>Train no:</td>
     <td><input type="text" value="${find.trainNo}" name="trainNo"readonly></td>
     </tr>
     <tr>
     <td>Train name:</td>
     <td><input type="text" value=${find.trainName} name="trainName" readonly></td>
     </tr>
    <tr>
   <td> Source:</td>
   <td><input type="text" value=${find.source} name="source" readonly></td>
     </tr>
     <tr>
     <td>Destination:</td>
     <td><input type="text" value=${find.destination} name="destination" readonly></td>
     </tr>


      <tr>
       <td><label for="pnr">PNR:</label> </td>
        <td><input type="text" id="pnr" name="pnr" value="${pnr}"> </td>
      </tr>

       <tr>
       <td>Name:</td>
       <td><input type="text" value="${name}" name="name"></td>
       </tr>

       <tr>
       <td>Age:</td>
        <td><input type="text" value="${age}" name="age"></td>
       </tr>

       <tr>
       <td>Gender:</td>
       <td><input type="text" value="${gender}" name="gender"></td>
       </tr>

       <tr>
       <td>Amount:</td>
       <td><input type="text" value="${amount}" name="amount"></td>
       </tr>

       <tr>
        <td>Travel Date:</td>
        <td><input type="text" value="${date}" name="date"></td>
       </tr>
     

</table><br>

</div>

<br>
<div align="center">
 <button class="button"><a id="a1" href="payment">Payment</a></button> 
<button class="button" >Book</button>
 

</div>

</form>

</body>
</html>











