<html>

   <head>
      <title>Payment </title>
      <link rel="stylesheet" type="text/css" href="/spring/URLToReachResourcesFolder/resources/file4.css">
      <style>
             @import url('https://fonts.googleapis.com/css?family=IM+Fell+French+Canon+SC|Josefin+Sans');
         
         #checkOut{
           background-color: #C4F3CB;
           margin: 3% 15% 3% 15%;
           border: 1px solid #000;
           padding: 2%;
           box-shadow: 5px 10px 20px;
           overflow: hidden;
         }
         h1, h4 {
           font-family: 'IM Fell French Canon SC', serif;
           text-align: center;
           padding-bottom: 1%;
         }
         button {
           float: right;
           font-family: 'Josefin Sans', sans-serif;
         }
         form {
           font-family: 'Josefin Sans', sans-serif;
         }
         #cardName , #cardNum, #cVV{
             padding:8px;
             white-space: 3px;
         }
      </style>

   </head>
   <body>
      <div id="checkOut">

      <h1></h1>

      <h4>Payment Details</h4>

      <form>

         <table>

         <div class="form-row">

            <div class="form-group col-md-6">

               <tr>

                  <td><label for="cardName">Card Holder Name</label></td>

                  <td><input type="text" class="form-control" id="cardName" placeholder="Card holder name" required></td>

               </tr>

            </div>

            <div class="form-group col-md-6">

               <tr>

                  <td> <label for="cardNum">Card Number</label></td>

                  <td><input type="password" class="form-control" id="cardNum" placeholder="1234567890098765" required></td>

               </tr>

            </div>

            <div class="form-row">

               <div class="form-group col-md-4">

                  <tr></tr>

                  <td><label for="endDate">Expiration Date: Month</label></td>

                  <td>
                     <select id="endDate" class="form-control" required>

                        <option selected>01</option>

                        <option>2</option>

                        <option>3</option>

                        <option>4</option>

                        <option>5</option>

                        <option>6</option>

                        <option>7</option>

                        <option>8</option>

                        <option>9</option>

                        <option>10</option>

                        <option>11</option>

                        <option>12</option>

                     </select>

               </div>
                   </tr>

               <div class="form-group col-md-4">

                  <tr>

                     <td><label for="endDate">Year</label></td>

                     <td>
                        <select id="endDate" class="form-control" required>

                           <option selected>2018</option>

                           <option>2021</option>

                           <option>2022</option>

                           <option>2023</option>

                           <option>2024</option>

                           <option>2025</option>

                           <option>2026</option>

                           <option>2027</option>

                        </select>
                     </td>

                  </tr>

               </div>

               <div class="form-group col-md-4">

                  <tr>

                     <td><label for="cVV">CVV</label></td>

                     <td><input type="text" class="form-control" id="cVV" placeholder="123" required></td>

                  </tr>


               </div>

            </div>
               <br>

            <tr>

               <td>

               </td>

               <td>

               </td>
               <td><a href="javascript:history.back()">Go Back</a></td>
               <td><button onclick="myFunction()">submit </button></td>
               
            </tr>

      </form>
        </div>
   </body>

   <script>
   function myFunction() {
     alert("Payment Successful");
   }
   </script>



</html>