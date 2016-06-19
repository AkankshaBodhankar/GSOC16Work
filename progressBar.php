<?php
   
   session_start();
   if(isset($_SESSION['welcomeopened'])) //session is set in welcome page, to prevent cmng to this page after logging in
   {  
     header("location: welcome.php"); 
   }
   if(!isset($_SESSION['email']))
   {
   	  header("location: login.php"); 
   }
   
?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css files/progress-bar.css"/>
</head>
<body onload="move()">
<center>
  <div>
      <h1 class="text">First Aide</h1>
      <hr id="line">
      <h2 class="text">A Confidentiality Safety Resource for Peace Corps Volunteers</h2>
  </div>

  <div id="Progress">
    <div id="Bar"></div>
  </div>
</center>
<script type="text/javascript" src="javascripts/progressBar.js"></script>
</body>
</html>
