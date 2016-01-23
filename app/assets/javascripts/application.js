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

		$(this).next().toggle(600);
	});

	$('#edit_profile_button').on('click',function(){

		$('#edit_account').fadeIn(100);
	});

	$('#edit_account_submit').on('click', function(){
		$('#edit_account').fadeOut(100);
	});

	$('#close_edit').on('click', function(){
		$('#edit_account').fadeOut(100);
	});

});