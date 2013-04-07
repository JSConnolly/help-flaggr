// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
jQuery(document).ready(function () {
  var last_requests;
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
  $('#help').on('click', '.current-request', function(){
    $('.current-request').css('background-color', 'blue');
  })
 
 $(document).on('click', '#complete', function(){
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

 // $(document).on('click', '#complete', function(){
    
 //    var helpNote = $(this).closest('#helpnote');
 //    console.log($(this).closest('a').attr('href'));
 //    var id = $(this).siblings().text();
 //    console.log(id);
 //    $.ajax({
 //      type: "PUT",
 //      url: id,
 //      data: helpNote
 //    })
 // })

// polling for help givers
// if ($('.requests').length > 0) {
//   fetchHelp();
//   setTimeout(updateHelp(), 10000);
// }
// function fetchHelp(){
//    $.ajax({
//     type: "GET",
//     url: "/fetch_length"
//   }).done(function(returned_data){
//     last_requests = returned_data;
//   });

// }

// function updateHelp(){
//   $.ajax({
//     type: "GET",
//     url: "/fetch_length"
//   }).done(function(returned) {
//     if (returned != last_request) {
//       var missing = returned - last_request;
//       last_request = returned;

//       appendHelpList(missing);

//     } 
//   });
// }

// function appendHelpList(missing) {
  
//   $.ajax({
//     type: "GET",
//     url: "/fetch_latest",
//     data: missing
//   }).done(function(returned) {
//     $('.requests').append(returned);
//   });
// }

// html5 notification

$(document).on('click', '#give_tab', function(){
  window.webkitNotifications.requestPermission();
  console.log('made it to request_permission');
});
$(document).on('click', '#request_notification_permission', function(){
  window.webkitNotifications.requestPermission();
});

$(document).on('click', function(){
  switch(window.webkitNotifications.checkPermission()){
    case 0:
      console.log('permission was granted');
      window.webkitNotifications.createNotification('', "Please work", "Working!").show();
      break;
    case 1:
      console.log('nothing');
      break;
    case 2:
      console.log('permission was not granted');
      $('#request_notification_permission').show();

      break;
    } 



  
});


});



