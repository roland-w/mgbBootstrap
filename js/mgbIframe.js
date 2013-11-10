/* 
    Document   : mgbIframe.js
    Created on : 10.11.2013, 19:31:01
    Author     : RW
    Description:
	mgbIframe JS File for MGB Bootstrap Template. 
	
	Require: Bootstrap V 3
	@link http://getbootstrap.com/
*/
jQuery(function(){
		var iframe = document.getElementById("mgbGuestbook");
		iframe.onload = function() {};

		function listener(e){
			var eventName = e.data[0],
				data      = e.data[1];
			switch (eventName) {
				case 'setHeight': $(iframe).height(data); break;
			}
		}

		// Listener for all Browser
		if (window.addEventListener){
			window.addEventListener("message", listener, false);
		} else {
			window.attachEvent("onmessage", listener);
		}
});