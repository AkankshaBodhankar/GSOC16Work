function validate()
{
	var email = document.getElementById('email');
	var uname = document.getElementById('uname');
	var pwd = document.getElementById('password');
	var country = document.getElementById('host_country');
	var regexname = /([a-zA-Z ]+\d*)/;
	var regexcountry = /([a-zA-Z ]{2,})/;
	var regexemail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
    var invalid = 0;
    
    if (!regexname.test(uname.value))
     {
        invalid++;
        document.getElementById('uname').style.borderColor = "red";
     }
     else
       document.getElementById('uname').style.borderColor = "white";
    if (!regexcountry.test(country.value))
    {
    	invalid++;
    	document.getElementById('host_country').style.borderColor = "red";
    }
    else 
      document.getElementById('host_country').style.borderColor = "white";
    if (!regexemail.test(email.value))
    {
    	invalid++;
    	document.getElementById('email').style.borderColor = "red";
    }
    else
      document.getElementById('email').style.borderColor = "white";
    if(invalid>0)
    	return false;
    else
    	return true;
}