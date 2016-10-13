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
//= require twitter/bootstrap/modal
//= require mustache
//= require retina
//= require smoothscroll
//= require waypoints
//= require parallax
//= require jquery.mixitup
//= require jquery.easing
//= require jquery.fittext
//= require jquery.localscroll
//= require jquery.scrollto
//= require jquery.appear
//= require jquery.waitforimages
//= require jquery.bxslider
//= require jquery.fitvids
//= require main
//= require shortcodes
//= require owl.carousel
//= require_tree ../../templates

jQuery(document).ready(function() {
	
	//// Preloader, hide all page content until window.load
	jQuery('.loadingGif').show();
	
	//// Detect click from releases view and generate correct release display
	jQuery(".releaseClick").click(function() {
		
		///var id = jQuery(this).prev('.modal-object-id').val();
		///var releasesPosition = jQuery("#section2").scrollTop();
		
		///console.log(releasesPosition);
		
		///jQuery.ajax({
		///	dataType: "json",
		///	url: "./releases/release_show_via_ajax_call",
		///	data: {id: id},
		///	success: function(data) {
		///		var release_content = SMT['releaseshow'](data);
		///		jQuery(window).scrollTo('#section2', {duration:200, offset:45});
		///		jQuery('#releaseShowWrapper').fadeIn(750);
		///		jQuery('#releaseShowContent').empty().append(release_content).fadeIn(750);
		///	}
		///});
		jQuery(window).scrollTo('#section2', {duration:200, offset:45});
		jQuery('#releaseShowWrapper').fadeIn(750);
		jQuery('#portfolio-grid').hide();
	});
	jQuery(".rightAlign").click(function(){
		jQuery(window).scrollTo('#section2', {duration:200, offset:45});
	});
	//// Close release display on icon click
	jQuery('#removeRelease').click(function() {
		jQuery('#releaseShowWrapper').fadeOut(500, function(){
			jQuery("#releaseShowWrapper").hide();
			jQuery('#portfolio-grid').show();
		///	jQuery("#releaseShowContent").empty();
		});
	});
	
	jQuery('.closebtn').click(function() {
	    document.getElementById("myNav").style.height = "0%";
	});
	
	jQuery('.closebtn2').click(function() {
	    document.getElementById("myNav2").style.height = "0%";
	});
	
	$('#openBtn1').click(function(){
		$('#imagemodal1').modal({show:true})
	});
	$('#openBtn2').click(function(){
		$('#imagemodal2').modal({show:true})
	});
	$('#openBtn3').click(function(){
		$('#imagemodal3').modal({show:true})
	});
	$('#openBtn4').click(function(){
		$('#imagemodal4').modal({show:true})
	});
	$('#openBtn5').click(function(){
		$('#imagemodal5').modal({show:true})
	});
	$('#openBtn6').click(function(){
		$('#imagemodal6').modal({show:true})
	});
	$('#openBtn7').click(function(){
		$('#imagemodal7').modal({show:true})
	});
	
	jQuery("#owl").owlCarousel({
		navigation : false,
		singleItem : false,
		pagination : false
	});
	
});

//// Load page content once it has been preloaded
jQuery(window).load(function() {
	jQuery('.loadingGif').hide();
  	jQuery('.body').fadeIn(300);
});

