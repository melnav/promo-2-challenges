/*
  *
  * TODO: add your code here!

  *a mettre en haut de tous les fichiers !!!!!!!!!!!!!!!!!! ATTENTION !!!!!!!!!

*/

$(document).ready(function() {
  $( "#message" ).hide().slideDown("slow");
  $( "#message" ).click(function() {
    $(this).slideUp("slow");
  });
});
