function move() {
  var elem = document.getElementById("Bar");   
  var width = 0;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
      window.location = "welcome.php";
    } else {
      width++; 
      elem.style.width = width + '%'; 
    }
  }
}