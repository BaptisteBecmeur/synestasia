//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require simplemde
//= require_tree .



$(document).ready(function() {
   $('.faved-off').click(function() {
    var fav = $('.faved-on')

    $.ajax({
      type: "POST",
      url: "/hiraganas",
        success: function(data) {
      console.log(data);
      },
      error: function(jqXHR) {
      console.error(jqXHR.responseText);
      }
    });
  })
})
