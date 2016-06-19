function make_call(phonenum)
{
    //load the twilioCall page and send phonenumber to twilioSMS.php
    window.location.href = "twilioCall.php?phone=" + phonenum;
}