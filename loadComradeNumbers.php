<?php
   
   require 'dbconnect.php';
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    }
   $useremail = $_SESSION['email'];

   if(!isset($_SESSION['email']))
   {  
      header("location: login.php"); 
   }

   $phnos = array('','','','','','');

   for($i=1;$i<=6;$i++)
   {
      $id = 'comrade'.$i;
      $result = mysqli_query($connection,"SELECT phonenumber FROM comrade WHERE email ='$useremail' AND comradeid=$i");
      if($result->num_rows > 0)
      {
        while($row = mysqli_fetch_assoc($result))
        {
          $phnos[$i] = $row["phonenumber"];
        }
      }
      $connection -> next_result(); 
   }
   mysqli_close($connection);

?>

