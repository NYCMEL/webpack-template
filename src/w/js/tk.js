if (typeof window.wcENV === 'undefined') {window.wcENV = 'prod'}
if (typeof window.wcAPP === 'undefined') {window.wcAPP = 'NOT-SET'}
if (typeof window.wcURL === 'undefined') {window.wcURL = 'http://www.melify.com/tk/lib/components/w'}

/////////////////////////////////////////////////////////////////////////
//// CamelCase
/////////////////////////////////////////////////////////////////////////////
String.prototype.toCamelCase = function() {
    return this
	.replace(/-/g, " ").replace(/_/g, " ")
        .replace(/\s(.)/g, function($1) { return $1.toUpperCase(); })
        .replace(/\s/g, '')
        .replace(/^(.)/, function($1) { return $1.toLowerCase(); });
 };

/////////////////////////////////////////////////////////////////////////////////
//// LOADING CODE
/////////////////////////////////////////////////////////////////////////////////
window.tkloading = {};

/////////////////////////////////////////////////////////////////////////
//// tkloading.show('#xx')
/////////////////////////////////////////////////////////////////////////////
tkloading.show = function(ele = "body", img = null) {
    wc.group("tkloading.show:", ele);
    
    $(ele).css("position","relative");
    $(ele).append("<div class='tkloading'></div>");
    
    if (img) {
	$(".tkloading").css({
	    "background-image": `url(${img})`,
	    "background-repeat": "no-repeat"
	});
    }

    if (ele == "body") {
	$(ele + " .tkloading").css("position", "fixed");
    } else {
	$(ele + " .tkloading").css("position", "absolute");
    }
    
    $(ele + " .tkloading").show();

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////
//// tkloading.hide('#xx')
/////////////////////////////////////////////////////////////////////////////
tkloading.hide = function(ele = "body") {
    wc.group("tkloading.hide:", ele);

    $(ele + " .tkloading").remove();

    wc.groupEnd();
};

////////////////////////////////////////////////////////////////////////////////////
//// DATA BINDING FUNCTION
////////////////////////////////////////////////////////////////////////////////////
window.tkBind = function(id, callback) {
    wc.group("tkBind", id);
    
    window.tkModel = window.tkModel || [];

    try {
	DataBind.bind(document.getElementById(id), window.tkModel)
    } catch(e) {
	console.error("tkBind", ' > ', e.message);
	wc.groupEnd();
	return;
    }

    var watchable = DataBind.bind($('#' + id), window.tkModel);
    
    if (callback) {
	watchable.watch(callback);
    }
    
    wc.groupEnd();
    return id;
};

////////////////////////////////////////////////////////////////////////////////////
//// DATA BINDING FUNCTION
////////////////////////////////////////////////////////////////////////////////////
window.tkBindAll = function(callback) {
    wc.group("tkBindAll");
    
    $("[data-key]").each(function() {
	let id = $(this).attr("id");
	tkBind(id,callback);
    });
    
    wc.groupEnd();
    return window.tkModel;
};

////////////////////////////////////////////////////////////////////////////////////
//// EXAMPLE CALLBACK
////////////////////////////////////////////////////////////////////////////////////
window.tkBinder = function(ev) {
    wc.group("tkBinder", this.id, ev.type, ev.data.newValue);

    // CUSTOM CHANGE HANDLING EXAMPLE
    var type = $("#" + this.id).prop('nodeName');

    wc.publish("tkBinder", {
	time: new Date().getTime(),
	id: this.id,
	action: "change",
	old: ev.data.oldValue,
	new: ev.data.newValue
    });

    switch(type) 
    {
	case "SELECT":
	wc.log("SELECT:", type, "#" + this.id);
	$("#" + this.id).val(ev.data.newValue).change();
	break;
	
	// SWITCH ON TYPE OF INPUT
	case "INPUT":
	//alert($(this).attr("type"));
	switch ($(this).attr("type"))
	{
	    case "checkbox":
	    wc.log("INPUT:", type, "#" + this.id);
	    
	    if (ev.data.newValue) {
		$("#" + this.id).prop("checked",true);
	    } else {
		$("#" + this.id).prop("checked",false);
	    }
	    break;
	    
	    case "submit":
	    case "button":
	    $(this).val(ev.data.newValue);
	    break;

	    case "label":
	    $(this).text(ev.data.newValue);
	    break;
	}
    }		 
    wc.groupEnd();
}

//////////////////////////////////////////////////////////////////////////////
////
//////////////////////////////////////////////////////////////////////////////
var tk = tk || {};

//////////////////////////////////////////////////////////////////////////////
////
//////////////////////////////////////////////////////////////////////////////
window.onresize = function () {
    var newWinSize = "UNDEFINED";

    if ($(this).width() >= 1200) {
        newWinSize = 'xl';
    } else if ($(this).width() >= 994) {
        newWinSize = 'lg';
    } else if ($(this).width() >= 768) {
        newWinSize = 'md';
    } else if ($(this).width() >= 480) {
        newWinSize = 'sm';
    } else if ($(this).width() >= 320) {
        newWinSize = 'xs';
    }

    if( newWinSize != tk.winsize ) {
	wc.group("tk.js > media");
	
        tk.winsize = newWinSize;
	wc.log("MEDIA CHANGED to:", tk.winsize);

	$("body").attr("body-size",tk.winsize);

	wc.publish("media", {
	    time: new Date().getTime(),
	    action: "resized",
	    size: tk.winsize
	});
	
	wc.groupEnd();
    }
};

jQuery(document).ready(function() {
    window.onresize();
});

/////////////////////////////////////////////////////////////////////////
//// CENTER ELEMENT INSIDE ITS PARENT
/////////////////////////////////////////////////////////////////////////////
(function( $ ){
    $.fn.tkCenter = function(options) {
	wc.group("tkCenter:", JSON.stringify(options));

	var settings = $.extend({
	    cssAttribute:   'margin-top', // the attribute to apply the calculated value to
	    verticalOffset: 0,            // the number of pixels to offset the vertical alignment by
	    parentSelector: null,         // a selector representing the parent to vertically center this element within
	    debounceTimeout: 25,          // a default debounce timeout in milliseconds
	    deferTilWindowLoad: false     // if true, nothing will take effect until the $(window).load event
	}, options || {});

	return this.each(function(){
	    var $this   = $(this); // store the object
	    var debounce;

	    // recalculate the distance to the top of the element to keep it centered
	    var resizer = function () {

		var parentHeight = (settings.parentSelector && $this.parents(settings.parentSelector).length) ?
		    $this.parents(settings.parentSelector).first().height() : $this.parent().height();

		$this.css(
		    settings.cssAttribute, ( ( ( parentHeight - $this.height() ) / 2 ) + parseInt(settings.verticalOffset) )
		);
		if (settings.complete !== undefined) {
		    settings.complete();
		}
	    };

	    // Call on resize. Opera debounces their resize by default.
	    $(window).resize(function () {
		clearTimeout(debounce);
		debounce = setTimeout(resizer, settings.debounceTimeout);
	    });

	    if (!settings.deferTilWindowLoad) {
		// call it once, immediately.
		resizer();
	    }

	});

	wc.groupEnd();
    };
})( jQuery );
