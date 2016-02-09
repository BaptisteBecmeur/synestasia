//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require simplemde
//= require_tree .

var simplemde = new SimpleMDE({ spellChecker: false, element: $("#post_content")[0] });

// $ (document).ready(function() {
//    $('#id faved-on').click(function() {
//     var fav = $('#id faved-off')

//     $.ajax({
//       type: "GET",
//       url: "https://api.github.com/users/lewagon/repos",
//         success: function(data) {
//       console.log(data);
//       },
//       error: function(jqXHR) {
//       console.error(jqXHR.responseText);
//       }
//     });
//   })
// })
