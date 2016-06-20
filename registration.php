<?php

   session_start();
   if(isset($_SESSION['email']))
   {  
      header("location: welcome.php"); 
   }
   require 'dbconnect.php';
   if(isset($_POST['email'])&&isset($_POST['uname'])&&isset($_POST['password'])&&isset($_POST['host_country']))
   {
    
      $sql="CALL dupemail('$_POST[email]')";
      $result = mysqli_query($connection,$sql);
      $connection -> next_result(); //used when there are multiple procedure calls, use after ecah procedure call

      if(mysqli_num_rows($result)>=1) //check if it is a duplicate email
      {
         echo "<script type='text/javascript'>alert('User with this email already exists');</script>";
      }
      else
      {
      
        $newUser="CALL registration('$_POST[email]','$_POST[uname]','$_POST[password]','$_POST[host_country]')"; //inserts into the user table
        if(mysqli_query($connection,$newUser))//if successfully added user
            header('Location: login.php');
        else
          echo "<script type='text/javascript'>alert('Error in adding user');</script>";
      }
      mysqli_close($connection); 
   }
   
?>
<!DOCTYPE html>
<html>
<head>
  <title>FirstAide</title>
  <link rel="stylesheet" type="text/css" href="css files/loginAndRegistration.css">
  <form action="registration.php" method="POST" onsubmit="return validate()" />
  <script type="text/javascript" src="javascripts/validation.js"></script>
</head>
<body>
<center>
  <div>
    <h1 class="text">First Aide</h1>
    <hr id="line">
    <h2 class="text">A Confidentiality Safety Resource for Peace Corps Volunteers</h2>
  </div>

  <div class="div-reg">
    <table class="tables">
       <tr>
         <th class="text">Username:</th>
         <td><input class="input-box" type="text" id="uname" name="uname" placeholder="xyz123" required/></td>
       </tr>
        <tr>
         <th class="text">Password:</th>
         <td><input class="input-box" type="password" id="password" name="password" required/></td>
       </tr>
        <tr>
         <th class="text">Host Country:</th>
         <td><input class="input-box" type="text" id="host_country" name="host_country" placeholder="India" required/></td>
       </tr>
       <tr>
         <th class="text">Email:</th>
         <td><input class="input-box" type="text" id="email" name="email" placeholder="xyz@gmail.xom" required /></td>
       </tr>
    </table>
  </div>

  <div class="div-reg">
     <input class="button" type="submit" value="Create Account">
    <br><br>
    <img src="images/secure.png" style="width: 20px; height: 20px;"/>
    <a href="#">This is a secure portal</a>
  </div>
</center>
</body>
</html>