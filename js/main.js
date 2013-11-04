/* 
    Document   : main.js
    Created on : 3.11.2013, 16:31:01
    Author     : RW
    Description:
	Main JS File for MGB Bootstrap Template. 
	
	Require: Bootstrap V 3
	@link http://getbootstrap.com/
*/

var MGB_Settings = new Object();
var MGB_Message = new Object();


/* Settings */
	MGB_Settings = {
		tooltip:{
			enable: true, //or false
		},
		cookieCheck : true, //or false
		postMessage:{
			resize:true,//or false
			time: 500, //ms or 0
			onload:true, // or false
		},
		debug: false,
	};
	
	MGB_Message = {
		error:{
			mgb_message_empty: 'Message is empty!',
			mgb_message_type_error : 'Message Type is undefined',
		},
		cookie:{
			mgb_cookieEnabled:'To use this guest book, your browser must accept cookies!',
		}
	};




/* Please change anything from here */
var lang = $('html').attr('lang');
var mgb;
/* Document ready */
jQuery(function(){
	mgb = new MGB();
	/*Cookie check*/
	if(!navigator.cookieEnabled && MGB_Settings.cookieCheck){
		jQuery(window).MGB_Messages({
			message: MGB_Message.cookie.mgb_cookieEnabled,
			close:false
		});
	}
	/* is iframe? */
	if(top !== self){
		/* Resize iframe via postMessage */
		if(MGB_Settings.postMessage.resize){
			if(MGB_Settings.postMessage.time != 0){
				window.setInterval(mgb_resize, MGB_Settings.postMessage.time);
			}
			if(MGB_Settings.postMessage.onload){
				window.parent.postMessage(['setHeight', $('html').height()], '*');
			}
		}
	}
		

	
	//if frame?
	//if(top === self){
		// if not a frame, view Bootstrap Tooltip
		if(MGB_Settings.tooltip.enable){
			jQuery('a, img, button, input[type=image]').tooltip({
				container: $('body')
			});
	//	}
	}
	
});
/* MGB */
	MGB = function(options) {this.init(options)}
	MGB.prototype = {
		_defaults:{
			
		},
		init:function(){
			jQuery.extend(this.options, this._default);
			
			
		},
	};
/* Functionen */
		/* Call by new Message from parent Window */
		function mgb_listener(e){
			var eventName = e.data[0];
			var data = e.data[1];
			
			switch(eventName){
				
			}
		};
		function mgb_resize(){
			window.parent.postMessage(['setHeight', $('html').height()], '*');
		}
/* Plugins */
(function(window, $){
	var MGB_Messages = function(elem, options){
		this.elem = elem;
		this.$elem = $(elem);
		this.options = options;
		this.metadata = this.$elem.data('messages-options');
		};

	MGB_Messages.prototype = {
		defaults: {
			message:	'',
			'class':	'alert-danger',
			close:		true,
			type:		null,
		},
		
		init: function() {
	
			this.config = $.extend({}, this.defaults, this.options, this.metadata);
	
			if(this.config.message !== ''){
				this.displayMessage();
			}else{
				jQuery.error('MGB_Messages:' + MGB_Message.error.mgb_message_empty);
			}
		return this;
		},
		displayMessage: function() {
			if(this.config.type === null){
				this._createMessage();
			}else if(this.config.type === 'alert'){
				alert(this.config.message);
			}else{
				jQuery.error('MGB_Messages:' + MGB_Message.error.mgb_message_type_error)
			}
			return this;
		},
		_createMessage: function(){
			this._container = jQuery('<div class="text-center alert alert-block '+ this.config.class +'">').appendTo('#message');
			
			if(this.config.close){
				this._close = jQuery('<a class="close" data-dismiss="alert" href="#" aria-hidden="true">&times;</a>').appendTo(this._container);
			}
			
			this._content = jQuery('<div>').html(this.config.message).appendTo(this._container);
			return this._container;
		}
	}	

	MGB_Messages.defaults = MGB_Messages.prototype.defaults;
	
	jQuery.fn.MGB_Messages = function(options) {
		return this.each(function() {
		new MGB_Messages(this, options).init();
		});
	};

	window.MGB_Messages = MGB_Messages;
	})(window, jQuery);
/*and more...*/
		// Listener for all Browser
		if (window.addEventListener){
			window.addEventListener("message", mgb_listener, false);
		} else {
			window.attachEvent("onmessage", mgb_listener);
		}
		