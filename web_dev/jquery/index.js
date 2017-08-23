$(document).ready(function() {

	// Select Elements
	$('#div5').css('background-color', 'steelblue');

	// Basic Animations
	$('#div5').delay(1000).hide(500).delay(1000).show(800);
	$('#div6').delay(1000).slideUp(500).delay(1000).slideDown(800);
	$('#div7').delay(1000).fadeOut(500).delay(1000).fadeIn(800);
	$('#div8').animate({height: '200px'}, 3000);

	// Index Filters
	$('div:first').css('background-color', 'pink');
	$('div:gt(4)').css('background-color', 'aliceblue');

	// Relationship Filters
	$('h1:has(span)').css('font-size', '50px');
	$('span:parent').css('font-size', '30px');
	$('div:empty').css('font-size', '20px');

	// Attribute Filters
	$('div[class="nice"]').css('border', '2px dashed orange');
	$('div[name^="b"]').css('border', '4px dotted lavender');
	// $('div[href^=".com"]').css('border', '4px dotted lavender');

});
