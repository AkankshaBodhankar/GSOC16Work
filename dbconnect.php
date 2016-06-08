<?php
    
   //create a connection to mysql
	$username = "root";
	$password="";
	$hostname="localhost";
	$database="pcsa_web";
	$connection = mysqli_connect($hostname,$username,$password,$database)or die("Connection failed");
?>