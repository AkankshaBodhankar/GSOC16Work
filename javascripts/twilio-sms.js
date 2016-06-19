function send_sms(phonenum)
{
    //load the twilioSMS page and send phonenumber to twilioSMS.php
    window.location.href = "twilioSMS.php?phone=" + phonenum;
}