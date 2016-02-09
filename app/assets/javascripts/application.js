//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require simplemde
//= require_tree .

var simplemde = new SimpleMDE({ spellChecker: false, element: $("#post_content")[0] });

$ (document).ready(function() {
   $('.faved-on').click(function() {
    var fav = $('.faved-off')

    $.ajax({
      type: "GET",
      url: "https://synestasia.herokuapp.com/hiraganas",
        success: function(data) {
      console.log(data);
      },
      error: function(jqXHR) {
      console.error(jqXHR.responseText);
      }
    });
  })
})
