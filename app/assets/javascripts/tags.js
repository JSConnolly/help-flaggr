// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
jQuery(document).ready(function () {
  // jQuery("#IDofControlFiringResizeEvent").click(function () {
    console.log($(window).height()); 
    var height = $(window).height();
   
    $('#socrates').height(height);
  
    $(document).on('click', '.help-container .tabs li a', function(){
      
      var box_div = $(this).attr('href');
      console.log("hi");
      // $(box_div).show();
      // $('#getbox').hide();
      $(box_div).parent().children().hide();
      $(box_div).show();
    });
    
    $(document).on('click', '#exit', function(){
      $('#helpbox').toggle();
      $('a#exit').html('+');
      $('a#exit').attr('id', 'popup')

    });    
    $(document).on('click', '#popup', function(){
      $('#helpbox').toggle();
      $('a#popup').html('x');
      $('a#popup').attr('id', 'exit')

    });
    $('#help').on('click', '.current-request' function(){
      $('.current-request').css('background-color', 'blue');
    })
   $('#givebox').on('click', '#complete', function(){
      console.log(this)
      var helpNote = $(this).closest('#helpnote');
      helpNote.fadeOut();
      var id = $(this).siblings().text();
      console.log(id);
      $.ajax({
        type: "PUT",
        url: id,
        data: helpNote
      })
   })
});
