$(document).ready(function() {
            $("#msg").click(function(event){
               $.post( 
                  "groupsms.php",
                  { msg: "Come and get me.I need help getting home safely.Call ASAP to get my Location.Message sent through First Aide's Circle of Trust" },
                  function(data) {
                    alert('Message has been sent to your comrades'); 
                  }
               );
          
            });
        
         });