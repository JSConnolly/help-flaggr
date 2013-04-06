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
      // $('#givebox').hide();
      // $('#getbox').hide();
    });
   
});
