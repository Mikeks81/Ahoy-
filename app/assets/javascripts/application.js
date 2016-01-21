// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){
	
	$('#flashy').delay(2000).fadeOut(1000);

	$('.view_jobs_button').on('click',
		function(){
		// var clickCount = 0
		// if (clickCount == 0){
		// 	$('#boat_jobs_container').show(700);
		// 	clickCount++;
		// }
		// else {
		// 	$("#boat_jobs_container").hide(700);
		// 	var clickCount = 0;
		// }

		$('#boat_jobs_container').toggle(700);
		});


});