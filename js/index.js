$(document).ready(function() {
	$('[data-toggle="toggle"]').change(function(){
		$(this).parents().nextAll('.hide').toggle();
	});
});