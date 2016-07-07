<!DOCTYPE html>
<html>
<head>
  <title>FirstAide</title>
  <link rel="stylesheet" type="text/css" href="css files/gethelpnow-style.css"/>
  <script type="text/javascript" src="javascripts/twilio-call.js"></script>
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
</body>
</html>
<?php
/*

    // Include the Twilio PHP library for making a call
    require_once ("Services/Twilio.php");

    // Twilio REST API version
    $version = "2010-04-01";

    // Set our Account SID and AuthToken
    $sid = 'AC352153773dfb04678b4a875f509169ee';
    $token = '5d310051fdd83757fa6bbb157dbdc90a';

    // A phone number you have previously validated with Twilio
    $fromphonenumber = '+12056240076';
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
        echo '"<script type='text/javascript'>alert('Call started');</script>"';
    } catch (Exception $e) {
        echo 'Error: ' . $e->getMessage();
    }*/
