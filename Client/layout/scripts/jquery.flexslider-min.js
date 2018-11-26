
// All configuration settings / properties can be found here: https://github.com/woothemes/FlexSlider/wiki/FlexSlider-Properties

// Homepage Slider
$('.basicslider').flexslider({
	slideshow: true, // Change to "true" to make the slides slide automatically
	animation: "slide",
	animationLoop: false,
	pauseOnHover: true,
	controlNav: false,
	directionNav: true,
	prevText: "Prev",
	nextText: "Next",
	smoothHeight: true,
	start: function(slider) {
		$('body').removeClass('loading');
	}
});