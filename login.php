<?php
   
   require 'dbconnect.php';

   session_start(); 
   if (isset($_POST['email'])) 
   {
      //MYSQL Injection 
      $email = mysqli_real_escape_string($connection, $_POST['email']);
      $password = mysqli_real_escape_string($connection, $_POST['password']);
     
      $email = stripslashes($email);
      $password = stripslashes($password);
      
      $query = mysqli_query($connection,"select * from user where password='$password' AND email='$email'");
      $rows = mysqli_num_rows($query);
       if ($rows == 1) 
       {
          $_SESSION['email_user']=$email; 
          header("location: progressBar.html"); 
       }
       else 
       {
        echo "<script type='text/javascript'>alert('Invalid email or password');</script>";
       }
       mysqli_close($connection); 
    }
?>
<!DOCTYPE html>
<html>
<head>
  <title>FirstAide</title>
  <link rel="stylesheet" type="text/css" href="css files/loginAndRegistration.css">
   <form action="login.php" method="POST"/>
</head>
<body>
<center>
  <div>
    <h1 class="text">First Aide</h1>
    <hr id="line">
    <h2 class="text">A Confidentiality Safety Resource for Peace Corps Volunteers</h2>
  </div>
  <div class="div">
  <table class="tables">
    <tr>
        <th class="text">Email:</th>
         <td><input class="input-box" type="text" id="email" name="email" required/></td>
       </tr>
        <tr>
         <th class="text">Password:</th>
         <td><input class="input-box" type="password" id="password" name="password" required/></td>
       </tr>
  </table>
  </div>
  <div class="div">
       <input class="button" type="submit" id="submit" value="Sign in to Account">
    <br><br>
    <a href="registration.php">Create Account Here</a>
  </div>
</center>
</body>
</html>