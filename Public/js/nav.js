$(document).ready(function() {
	function megaHoverOver(){
		$(this).find(".sub").stop().fadeTo('fast', 1).show();
		(function($) { 
			jQuery.fn.calcSubWidth = function() {
				rowWidth = 0;
				//Calculate row
				$(this).find("ul").each(function() {					
					rowWidth += $(this).width(); 
				});	
			};
		})(jQuery); 
		if ( $(this).find(".row").length > 0 ) { //If row exists...
			var biggestRow = 0;	
			$(this).find(".row").each(function() {							   
				$(this).calcSubWidth();
				if(rowWidth > biggestRow) {
					biggestRow = rowWidth;
				}
			});
			$(this).find(".sub").css({'width' :biggestRow});
			$(this).find(".row:last").css({'margin':'0'});
		} else { //If row does not exist...
			$(this).calcSubWidth();
			$(this).find(".sub").css({'width' : rowWidth});
		}
	}
	function megaHoverOut(){ 
	  $(this).find(".sub").stop().fadeTo('fast', 0, function() {
		  $(this).hide(); 
	  });
	}
	var config = {    
		 sensitivity: 2, // number = sensitivity threshold (must be 1 or higher)    
		 interval: 100, // number = milliseconds for onMouseOver polling interval    
		 over: megaHoverOver, // function = onMouseOver callback (REQUIRED)    
		 timeout: 500, // number = milliseconds delay before onMouseOut    
		 out: megaHoverOut // function = onMouseOut callback (REQUIRED)    
	};
	$("ul#nav li .sub").css({'opacity':'0'});
	$("ul#nav li").hoverIntent(config);
});
//导航条