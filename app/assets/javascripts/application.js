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
$(document).ready(function() {
	$('.hoverspan2').on('mouseover', function(e) {
		var description = $(this).parent().find('.hoverspan');
		position = $(this).position();
		description.css({top: position.top + 200, left: position.left + 200});
		description.show();
	});
	$('.hoverspan2').on('mouseout', function(e) {
		$(this).parent().find('.hoverspan').hide();
	});
});