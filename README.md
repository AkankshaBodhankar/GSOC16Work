
# GSOC16Work

## FirstAide - PCSA(Peace Corps Safety App) Web App

The project repo of PCSA-Web : [PCSA-web repo](https://github.com/systers/PCSA-web)

FirstAide is a web application also called PCSA web. Peace Corps provides support to all the volunteers who have been sexully assulated. The volunteers can get reporting procedures and other relevant information. The initiative is to provide commitment to the volunteers who are victims of sexual assault via the web app.

The project is built using the following technologies:
 1. PHP (Backend)
 2. HTML and CSS (Frontend)
 3. Jquery and Javascript
 4. MySql (Database)

![working](https://cloud.githubusercontent.com/assets/14356938/15768596/d4ae5218-296f-11e6-9102-0d39e2bcd1da.jpg)

The welcome page of project

![recommended pages](https://cloud.githubusercontent.com/assets/14356938/15768497/001cb95e-296f-11e6-8cf4-052ffc24e154.png)

## Getting Started

### Installation
Download XAMPP from here [XAMPP download](https://www.apachefriends.org/download.html).You will also need a text editor (Sublime or Notepad++) 

Go to your terminal and execute this command

    $ git clone https://github.com/systers/PCSA-web

Or download the ZIP file from above

###Opening and Running
1. Launch XAMPP by opening XAMPP control panel
2. Start 'Apache' and 'MySQL' 
3. Check if XAMPP had started using the url 'http://localhost:8080/' (Here 8080 is the port number, use the one which you have configured)
4. Now extract the ZIP file of the project PCSA-web which you have downloaded and paste it in the C:\xampp\htdocs (the path where your xampp is present)
5. Open the file which you want to work with using the text editor you have downloaded
6. Make changes and save the file
7. Now, run the project using the url http://localhost:8080/directory_name/file_name.extension  Example: 'http://localhost:8080/PCSA-web/login.html'

###Documentation

The documentation can be found here

1.[project docs](https://github.com/AkankshaBodhankar/GSOC16Work/tree/master/project-docs)

2.[other docs](https://github.com/AkankshaBodhankar/GSOC16Work/tree/master/work-docs)

###Guide to Naming Convention Used
[Conventions and rules](https://google.github.io/styleguide/htmlcssguide.xml)

###How to Use CALL and SMS feature
This project makes use of Twilio for sending SMS and making CALLS. Twilio is a third party platform which provides API in PHP for serving the purpose.
SMS and Call had been used in:
Get Help Now module
Group SMS in :
Circle of Trust module

Read more about Twilio here: [Twilio](https://www.twilio.com/)

####Steps to enable Twilio in your localhost
1. Get started with SMS and Call by creating an Account on Twilio here : [Twilio Register](https://www.twilio.com/try-twilio)
2. Setting Account SID and Token
   
   Take the Account SID and Token provided by Twilio here [Your Twilio Credentials](https://www.twilio.com/console)
   
   Paste them at the correct places in  the twilioSMS.php, twilioCall.php and groupsms.php files
3. Setting From Number
   Get a phone number from Twilio here: [Twilio phone number](https://www.twilio.com/console/phone-numbers/dashboard).

   Use this as the from number in the files twilioSMS.php, twilioCall.php and groupsms.php
4. Setting To Numbers :
   If you are using Twilio Trial Account you can send a SMS or make a Call to a Twilio verified number only. Upgraded accounts may not need to verify a number

   Procedure to verify a number in Twilio
   1. Go to (https://www.twilio.com/console/phone-numbers/dashboard)
   2. Then on the left side vertical menu select Verified Caller IDs
   3. Click the + symbol and verify a number
   
   After getting the numbers verified it's time to use this numbers to test the feature
   While adding the numbers make sure you enter the country code as well else, it won't work.
   #####Use in Get Help Now module
   1. Go to javascripts/getHelpNowPhNo.js
   2. Replace the sample numbers to your verified numbers
   3. Make Call or Send SMS from the App
  
   #####Use in Circle of Trust module
   1. Open the app
   2. Go to Circle of Trust from the menu
   3. Click edit icon
   4. Add your verified numbers there
   5. Submit and go back to Circle of Trust
   6. Click Help Me icon and select a message
   7. An alert pops out saying 'Success' once messages are sent

References : 

[Tutorial for SMS](https://www.youtube.com/watch?v=jZPeNfLD5Yc)

[Tutorial for Group SMS](https://www.youtube.com/watch?v=G4oluQf_7S4)
   
