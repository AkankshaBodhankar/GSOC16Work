$(document).ready(function() {
            $("#msg3").click(function(event){
               $.post( 
                  "groupsms.php",
                  { msg: "I need to talk.Message sent through First Aide's Circle of Trust" },
                  function(data) {
                    salert('Success','Message has been sent to your comrades','success'); 
                    closePopup();
                  }
               );
          
            });
        
         });