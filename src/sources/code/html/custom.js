$(document).ready (function() {
	$('#div-0').each(function() {
	    $(this).click(function() {
		$('#div-2').after($('<div class="devop">Cool</div>'));
	    });
	 });

	
})
	    $(document).on('click', '.devop', function() {
		$(this).after($('<div class="devop">Cool 2</div>'));
	    });
