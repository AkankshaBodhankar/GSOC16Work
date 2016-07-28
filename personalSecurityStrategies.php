<?php
   
   session_start();
   if(!isset($_SESSION['email']))
   {  
      header("location: login.php"); 
   }
   
?>
<!DOCTYPE html>
<html>
<head>
  <title>PersonalSecurityStrategies</title>
  <link rel="stylesheet" type="text/css" href="css files/safety-tools.css"/>
  
  <script type="text/javascript" src="javascripts/jquery-1.12.4.min.js"></script>
    
     <script type="text/javascript" src="dragscroll.js"></script>
</head>
<body>
<?php
     include('menu.php');
?>
<center>
<div class="window">
  <div>
    <h1 class="text">Personal Security Strategies</h1>
    <hr class="line">
  </div>

  <div class="dragscroll">
  <table class="table">
    <tr>
      <td class="block">
        Content yet to be provided..  
      </td>
      <td class="dragscroll block">
        Content yet to be provided...
      </td>
    </tr>
  </table>
  </div>

</div>     
</center>
</body>
</html>