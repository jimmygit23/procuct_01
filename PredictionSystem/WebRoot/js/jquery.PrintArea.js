(function($) {
	var printAreaCount = 0;
	$.fn.printArea = function() {
		var ele = $(this);
		var idPrefix = "printArea_";
		removePrintArea(idPrefix + printAreaCount);
		printAreaCount++;
		var iframeId = idPrefix + printAreaCount;
		var iframeStyle = 'position:absolute;width:0px;height:0px;left:-500px;top:-500px;';
		iframe = document.createElement('IFRAME');
		$(iframe).attr({
			style : iframeStyle,
			id : iframeId
		});
		document.body.appendChild(iframe);
		var doc = iframe.contentWindow.document;
		$(document).find("link").filter(function() {
			return $(this).attr("rel").toLowerCase() == "stylesheet";
		}).each(
				function() {
					doc.write('<link type="text/css" rel="stylesheet" href="'
							+ $(this).attr("href") + '" >');
				});
		   //ie 
		   if (navigator.appName == 'Microsoft Internet Explorer'){
		   		
	           /**
	           var ua = navigator.userAgent;
	           var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
	           if (re.exec(ua) != null)
	           var rv = parseFloat( RegExp.$1 );
	           if(rv==5||rv==6||rv==7){
	        	   doc.write('<body><div class="' + $(ele).attr("class") + '">' + $(ele).html()
				+ '</div></body>');
	           }else{
	        	 doc.write('<body><div class="' + $(ele).attr("class") + '">' + $(ele).html()
				+ '</div></body>');
	           }
	            //
	            doc.close();
				var frameWindow = iframe.contentWindow;
				frameWindow.close();
				frameWindow.focus();
				frameWindow.print();
			    frameWindow.focus();
			    **/
			    window.print();
	            
	        }else{

	        	doc.write('<div class="' + $(ele).attr("class") + '">' + $(ele).html()
				+ '</div>');
	        	
	        	//close
				 doc.close();
				var frameWindow = iframe.contentWindow;
			        frameWindow.close();
				frameWindow.focus();
				frameWindow.print();
	        }
	      
		
	}
	var removePrintArea = function(id) {
		$("iframe#" + id).remove();
	};
})(jQuery);