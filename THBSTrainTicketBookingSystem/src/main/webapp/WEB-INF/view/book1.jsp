<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
  <title>Ticket Details</title>

  <style>

  body{
  background-color: #ffffff;
  background-attachment: fixed;
  background-size: cover;
   }

  table {
  font-family: arial,sans-serif;
  border-collapse: collapse;
  width: 70%;
  }
  th{
  background-color: #73bffa;
  border: 1px solid #0c1217;
  text-align: left;
  padding: 8px;
  }

   td{
   border: 1px solid #0c1217;
  text-align: left;
  padding: 8px;
  }

  tr:nth-child(even) {
  background-color: #ffffff;
  }

  tr:nth-child(odd) {
  background-color: #dddddd;
  }

  mark{
  background-color:#73bffa;
  color:black;
  }


  .button {
  background-color: #1c87c9;
  border: none;
  color: white;
  padding: 15px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 25px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius:25px;
  }

  </style>



  </head>

<body>
<div align="center">
<form action="confirm">

<h2 style="color:#193498; font-family:Times New Roman;font-size:40px;">TICKET DETAILS</h2>
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

</table>
</div>

<br>
<div align="center">
<button class="button">Book Ticket</button>
</div>

</form>
</body>
</html>











