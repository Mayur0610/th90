<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Confirmation</title>
    <link rel="stylesheet" type="text/css" href="/spring/URLToReachResourcesFolder/resources/file4.css">
</head>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<style>

h3,h4{ text-align:center;
font-size:25px;

 }
 
table{
 font-family: arial, sans-serif; border-collapse: collapse; width: 50%;
 margin-right: auto;
  }
  #htmlContent
  { text-align: left;
  
  } td, th, button { border: 0px solid #000000;
  text-align: left; padding: 8px;
  } button { border: 1px solid black;
  } tr:nth-child(even) { border: 1px solid #ffffff; background-color: #dddddd;
  }
  tr:nth-child(odd)
  { background-color: #ffffff; }
  </style>
<body>
<h2 style="color:white;font-size:35px" align="center">Successfully Booked</h2>
 <div id="htmlContent">
  <table align="center">
   <tbody>
   <tr>
   <td>PNR</td>
    <td>:</td>
    <td>${pnr}</td>
    </tr>

    <tr>
    <td>Train No</td>
    <td>:</td>
    <td>${trainNo}</td>
    </tr>

    <tr>
    <td>Train Name</td>
    <td>:</td>
    <td>${trainName}</td>
    </tr>
    <tr> <td>From</td>
    <td>:</td>
    <td>${source}</td>
    </tr>

     <tr>
     <td>To</td>
     <td>:</td>
     <td>${destination}</td>
     </tr>
     <tr>
     <td>Travel Date</td>
     <td>:</td>
     <td>${date}</td>
     </tr>

     </tbody>
     </table>

  <h3 style="color:white;">Passengers  </h3>
  <table align="center"> <tr>
  <th>Name</th>
  <th>Age</th>
   <th>Gender</th>
   <th>Fare</th>
   </tr>
   <tr>
   <td> ${name}</td>
   <td>${age}</td>
   <td>${gender}</td>
    <td>${amount}</td>
    </tr>

    </table>
    <h4 style="color:white;">Total Fare : Rs:${amount} </h4>
    </div>

    <div id="editor"></div> <center>
    <p> <button id="generatePDF">Print Ticket</button> </p>
     </center>



     </body>

      <script type="text/javascript"> var doc = new jsPDF();
      var specialElementHandlers = { '#editor': function (element, renderer) { return true;
       } };
       $('#generatePDF').click(function () { doc.fromHTML($('#htmlContent').html(), 15, 15,
{ 'width': 200, 'elementHandlers': specialElementHandlers }); doc.save('${pnr}.pdf'); });
</script>
<div align="center"> Thank you !!!<a href="index.jsp" class="button">HOME</a></div>
</html>