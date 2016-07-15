<!DOCTYPE html>
<html>
<head>
  <title>FirstAide</title>
  <link rel="stylesheet" type="text/css" href="css files/gethelpnow-style.css"/>
  <link rel="stylesheet" href="css files/sweetalert.css">
  <form method="POST"/>
</head>
<body>
<?php
     include('menu.php');
?>
<center>
<div class="window">
  <div>
    <h1 class="text">Make Call</h1>
    <hr class="line">
    <input id="input" value="<?php echo $_GET['phone']; ?>" readonly>
  </div>

  <div>
      <input class="small-button" value="Make Call" type="submit" id="submit" name="submit">
  </div>

</div>     
</center>
  <script src="javascripts/sweetalert.min.js"></script>
  <script src="javascripts/sweetalert.js"></script>
  <script src="javascripts/twilio-call.js"></script>
</body>
</html>
<?php
/*
    // Include the Twilio PHP library for making a call
    require_once ("Services/Twilio.php");

    // Twilio REST API version
    $version = "2010-04-01";

    // Set our Account SID and AuthToken
    $sid = '';
    $token = '';

    // A phone number you have previously validated with Twilio
    $fromphonenumber = '';
    $tophonenumber = "+".$_GET['phone'];

     $http = new Services_Twilio_TinyHttp('https://api.twilio.com', array('curlopts' => array(
    CURLOPT_SSL_VERIFYPEER => false
    )));

    // Instantiate a new Twilio Rest Client
    $client = new Services_Twilio($sid, $token, $version, $http);

    try {
        // Initiate a new outbound call
        $call = $client->account->calls->create(
            $fromphonenumber, // The number of the phone initiating the call
            $tophonenumber, // The number of the phone receiving call
            'http://demo.twilio.com/welcome/voice/' // The URL Twilio will request when the call is answered
        );
        echo "<script type='text/javascript'>salert('Success','Call started','success');</script>";
    } catch (Exception $e) {
        echo 'Error: ' . $e->getMessage();
    }*/
