//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require simplemde
//= require_tree .

//var simplemde = new SimpleMDE({ spellChecker: false, element: $("#post_content")[0] });


$(document).ready(function() {
     $('body').on('click', ".faved", function(e) { //make sure to pass in the e (the event paramter)
     e.preventDefault(); //this is the line you are missing
     var fav = $('.faved-off')
     //let your ajax handle the rest then
     $.ajax({
       type: "POST",
       url: "favs/"+this.id,
       success: function(data) {
        console.log(data);
             //change the color of your heart to red here
           },
           error: function(jqXHR) {
            console.error(jqXHR.responseText);
          }
        });
      });
    });

