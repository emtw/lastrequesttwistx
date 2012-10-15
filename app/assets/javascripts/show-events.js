$(document).ready(function(){
	$('#new-event-button').click(function(e){
		e.preventDefault();
		$('#edit-events').hide();
		$('#delete-events').hide();
		$('#new-event').slideDown(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('#edit-events-button').click(function(e){
		e.preventDefault();
		$('#new-event').hide();
		$('#delete-events').hide();
		$('#edit-events').slideDown(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
	$('#delete-events-button').click(function(e){
		e.preventDefault();
		$('#new-event').hide();
		$('#edit-events').hide();
		$('#delete-events').slideDown(function(){
			$('html, body').animate({
			scrollTop: $(document).height()-$(window).height()},200,"linear"
			);
		});
	});
});
