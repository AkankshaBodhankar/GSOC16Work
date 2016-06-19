function changeloc()
 {
 	var location = document.getElementById("location").value;
 	//setting the selected location on screen
    document.getElementById("loc").innerHTML = 
    "This information is for " +location+"(current post)";
}