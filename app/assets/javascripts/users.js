// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){
	$(document).on('click', '#user input[type=radio]', function(){
		$("#user label").css("background", "none");
		$(this).parent().children().css("background", "yellow");
	});
});

$(function(){
	$(document).on('click', '#helpbox input[type=radio]', function(){
		$("#helpbox span").css("border", "none");
		$(this).parent().css("border", "3px solid yellow");
	});
});
