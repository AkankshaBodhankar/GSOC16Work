$(document).ready(function() {
            $("#msg2").click(function(event){
               $.post( 
                  "groupsms.php",
                  { msg: "Call and pretend you need me.I need an interruption.Message sent through First Aide's Circle of Trust" },
                  function(data) {
                    salert('Success','Message has been sent to your comrades','success'); 
                    closePopup();
                  }
               );
          
            });
        
         });