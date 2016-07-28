<!DOCTYPE html>
<html>
<head>
  <title>FirstAide</title>

  <link rel="stylesheet" type="text/css" href="css files/circle-of-trust.css"/>
  <link rel="stylesheet" href="css files/sweetalert.css">

  <script src="javascripts/sweetalert.min.js"></script>
  <script src="javascripts/sweetalert.js"></script>

  <form method="POST">
</head>
<body>
<?php
     include('menu.php');
     include('loadComradeNumbers.php'); 
?>
<center>
<div class="window">
  <div>
    <h1 class="text">Circle of Trust</h1>
    <hr class="line">
    <h2 class="text">My Trustees</h2>
    <h3 class="text">Add the Comrade Numbers here</h3>
  </div>

  <div id="bw-arrow">
    <a href="circleOfTrust.php">
      <img src="images/bw-arrow.png" style="height: 50px; width: 50px;">
    </a>
  </div>

  <?php
   
   require 'dbconnect.php'; 
   
   if(!isset($_SESSION)) 
     session_start(); 
   if(!isset($_SESSION['email']))
   {  
      header("location: login.php"); 
   }
    $useremail = $_SESSION['email'];
    $formphnos = array('p1','p2','p3','p4','p5','p6');
   
    if(isset($_POST['comrade1'])||isset($_POST['comrade2'])||isset($_POST['comrade3'])||isset($_POST['comrade4'])||isset($_POST['comrade5'])||isset($_POST['comrade6']))
    {
      for($i=1;$i<=6;$i++)
      {
        $id = 'comrade'.$i;
        if(!empty($_POST[$id]))
          $formphnos[$i] = $_POST[$id]; 
      }
      if(count(array_unique($formphnos))<count($formphnos))
      {
          echo "<script>salert('Duplicate Phone Number','Please enter again!','error');</script>";
      }
      else
      {
          for($i=1;$i<=6;$i++)
          {
            $id = 'comrade'.$i;
            $phno = $_POST[$id];
            
            if(empty($phno))
            {
              $query = mysqli_query($connection,"CALL updatecomrade($i,'$useremail',NULL)");
            }
            else 
            {
              $query = mysqli_query($connection,"CALL updatecomrade($i,'$useremail','$phno')");
            }
            $connection -> next_result(); 
          }
          $nochange = 0;
          $empty = 0;
          for($i=1;$i<=6;$i++)
          {
            $id = 'comrade'.$i;
            $phno = $_POST[$id];
      
            if($phno==$phnos[$i])
              $nochange++;
            if($phno==NULL)
              $empty++;
          }
          if($empty==6)
            echo "<script>salert('No Phone numbers registered','Please enter data','');</script>";
          else if($nochange==6)
            echo "<script>salert('No changes Detected','Data was not updated','error');</script>";
          else
            echo "<script>salert('Success','Data was updated','success');</script>";

      }
      
    }
    mysqli_close($connection);
    include('loadComradeNumbers.php'); 
?>
  <div class="inputs">
    <input type="text" value="<?php echo htmlentities($phnos[1]); ?>" name="comrade1"  id="comrade1" placeholder="Comrade 1" />
    <input type="text" value="<?php echo htmlentities($phnos[2]); ?>" name="comrade2" id="comrade2" placeholder="Comrade 2"/>
    <input type="text" value="<?php echo htmlentities($phnos[3]); ?>" name="comrade3" id="comrade3" placeholder="Comrade 3"/>
    <input type="text" value="<?php echo htmlentities($phnos[4]); ?>" name="comrade4" id="comrade4" placeholder="Comrade 4"/>
    <input type="text" value="<?php echo htmlentities($phnos[5]); ?>" name="comrade5" id="comrade5" placeholder="Comrade 5"/>
    <input type="text" value="<?php echo htmlentities($phnos[6]); ?>" name="comrade6" id="comrade6" placeholder="Comrade 6"/>
  </div>
  <input class="small-button" type="submit" value="SAVE"/>
</div>
</center>
</body>
</html>


