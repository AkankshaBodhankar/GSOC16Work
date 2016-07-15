<?php
    
    require "Services/Twilio.php";
    include 'loadComradeNumbers.php';
    $toNos = array();//comrade numbers will be added here
    foreach ($phnos as $num) 
    {
      if($num!=NULL)
      {
         array_push($toNos,$num);
      }
    }

   foreach ($toNos as &$value) {
    $value = '+91'.$value; //Add +91 country code for India, for any other country add here
   }
   unset($value);

    if( $_REQUEST["msg"] ) //getting the body of the msg
    {

      $msg = $_REQUEST['msg'];
    }

    //set AccountSid and AuthToken from www.twilio.com/user/account
    $AccountSid = "";
    $AuthToken = "";

    // avoid tinyhttp exception
    $http = new Services_Twilio_TinyHttp('https://api.twilio.com', array('curlopts' => array(
    CURLOPT_SSL_VERIFYPEER => false
    )));

    //instantiate a new Twilio Rest Client
    $client = new Services_Twilio($AccountSid, $AuthToken, '2010-04-01', $http);

    //Loop over all comrades. $number is a phone number above, and 
    // $name is the name next to it
    foreach ($toNos as $number) {

        $sms = $client->account->messages->sendMessage(
        // Change the 'From' number below to be a valid Twilio number 
        // that you've purchased, or the (deprecated) Sandbox number
            "", 
            // the number we are sending to - Any phone number
            $number,
            // the sms body
            $msg
        );

        // Display a confirmation message on the screen
        echo "Sent message";
    }