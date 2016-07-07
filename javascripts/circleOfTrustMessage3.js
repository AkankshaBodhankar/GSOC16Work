$(document).ready(function() {
            $("#msg3").click(function(event){
               $.post( 
                  "groupsms.php",
                  { msg: "I need yo talk.Message sent through First Aide's Circle of Trust" },
                  function(data) {
                    alert('Message has been sent to your comrades'); 
                  }
               );
          
            });
        
         });