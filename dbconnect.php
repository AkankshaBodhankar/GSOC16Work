<?php
    
   //create a connection to mysql
	$username = "root";
	$password="";
	$hostname="localhost";//change the hostname when other server is used
	$database="pcsa_web";
	$connection = mysqli_connect($hostname,$username,$password,$database)or die("Connection failed");
?>