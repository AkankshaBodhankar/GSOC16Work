<!DOCTYPE html>
<html>
<head>
  <title>FirstAide</title>
  <link rel="stylesheet" type="text/css" href="css files/gethelpnow-style.css"/>
  <script type="text/javascript" src="javascripts/twilio-sms.js"></script>
  <form method="POST"/>
</head>
<body>
<?php
     include('menu.php');
?>
<center>
<div class="window">
  <div>
    <h1 class="text">Send Message</h1>
    <hr class="line">
    <input id="input" value="<?php echo $_GET['phone']; ?>" readonly>
  </div>

  <div> 
    <textarea id="SMS-body" name="SMS-body" placeholder="Type your message here" required></textarea>
  </div>

  <div>
  <input type="submit" value="Send SMS" class="small-button" id="bt-SMS" name="bt-SMS">
  </div>

</div>     
</center>
</body>
</html>
<?php

if(isset($_POST['SMS-body'])&&!empty($_POST['SMS-body']))
{
  // ==== Control Vars =======
  $strFromNumber = "";//phone number provided by twilio 
  $strToNumber = "+".$_GET['phone'];//get number from the twilio-sms.js file
  $strMsg = $_POST['SMS-body']; 

  $aryResponse = array();
 
   //include the Twilio PHP library 
  require_once ("Services/Twilio.php");
 
    // set your AccountSid and AuthToken - from www.twilio.com/user/account
   $AccountSid = "";
   $AuthToken = "";
 
    // avoid tinyhttp exception
    $http = new Services_Twilio_TinyHttp('https://api.twilio.com', array('curlopts' => array(
    CURLOPT_SSL_VERIFYPEER => false
)));

  $objConnection = new Services_Twilio($AccountSid, $AuthToken, '2010-04-01', $http); 

    // Send a new outgoinging SMS by POSTing to the SMS resource */
    $bSuccess = $objConnection->account->sms_messages->create(
        
        $strFromNumber,     
        $strToNumber,         
        $strMsg         // the sms body
    );

        
    echo "<script type='text/javascript'>alert('SMS Sent Successfully');</script>";
  }


