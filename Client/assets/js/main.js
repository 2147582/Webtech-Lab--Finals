$(document).ready(function(){
	
	$('ul.switcher li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('li').removeClass('active');
    	$('div.tab-pane').removeClass('active');


	})	

})