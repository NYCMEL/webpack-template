;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-date
      "dt = new Date();
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-seconds
      "t = new Date().getTime;
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-namespace
"/////////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <2015-10-10 18:42:00 (melify)>
/////////////////////////////////////////////////////////////////////////////////
var yourNameSpace = {};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
yourNameSpace.init = function(options) {
    console.group(\"yourNameSpace.init\");

    console.groupEnd();
};
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-namespace-2
"/////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <>
/////////////////////////////////////////////////////////////////////////////
tk = tk || {};
tk.util = tk.util || {};
tk.util.ajax = tk.util.ajax || {};
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-switch
"switch(n) 
    {
    case 1:
	break;
    default:
	break;
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jscript
"javascript {
	put {
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'bb-includes
"    
    include \"/tk/jquery/gits/requirejs/require.js\"
    include \"/tk/jquery/gits/underscore/underscore-min.js\"
    include \"/tk/jquery/gits/backbone/backbone-min.js\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'bb-model
"
////////////////////////////////////////////////////////////
//// 
////////////////////////////////////////////////////////////
Person = Backbone.Model.extend ({
	defaults: {
	    name:  \"Fetus\",
	    age:   0,
	    child: \"\"
	},
	initialize: function(){
	    console.log(\"Person.initialize()\");
	}
    });
    
var person = new Person({ name: \"Thomas\", age: 67, child: 'Ryan'});
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'bb-view
"
////////////////////////////////////////////////////////////
//// 
////////////////////////////////////////////////////////////
SearchView = Backbone.View.extend({
	initialize: function(){
	    this.render();
	},
	render: function(){
	    var variables = {
		search_label: \"Search all you want\"
	    };

	    // Compile the template using underscore
	    var template = _.template( $(\"#search_template\").html(), variables );
	    
	    // Load the compiled HTML into the Backbone \"el\"
	    this.$el.html( template );
	}
    });
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'bb-events
"
	events: {
            \"click input[type=button]\": \"doSearch\"  
        },
        doSearch: function( event ){
            alert( \"Search for \" + $(\"#search_input\").val() );
	    search_view.add();
        }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'bb-controller
"
////////////////////////////////////////////////////////////
//// 
////////////////////////////////////////////////////////////
var MyRouter = Backbone.Router.extend({
  routes : {
    \"say/:something\" : \"say\"
  },
 
  say : function(something) {
    alert(something);
  }
});
 
var router = new MyRouter;
 
Backbone.history.start();
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-undefined
"
    color = typeof color !== \"undefined\" ? color : shade;
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-typeof
"
    if (typeof name === 'undefined') { name = 'Mel' }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-plugin-1
"
(function($, window ) {
    ////////////////////////////////////////////////////////////
    //// var c = $(\"#fun\").align();
    ////////////////////////////////////////////////////////////
    $.fn.align = function(options) {
	console.group(\"align\");

	var defaults = $.extend ({
	    align : \"right\",
	    color : \"red\"
	}, options);

	$(this)
	    .css(\"text-align\", defaults.align)
	    .css(\"color\",defaults.color);
	
	console.groupEnd();
	return $(this);
    };
})( $, window );
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-plugin-2
"
///////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <2015-10-18 16:43:14 (melify)>
////
////    $(\"#x\").mtk(\"init\",{fg:\"yellow\", bg:\"red\"});
////
////	$(\"#my-h1\").mtk(\"update\",{fg:\"red\",bg:\"yellow\"})
////
///////////////////////////////////////////////////////////////////////////////
(function($) {
    var methods = {
	defaults: {},

	///////////////////////////////////////////////////////////////////////
	//// 
	///////////////////////////////////////////////////////////////////////
	init : function(id, options) {
	    console.group(\"mtk.init\", id, JSON.stringify(options));

	    options = options || {};
	        
	    defaults = {
		fg:  options.fg  || \"yellow\",
		bg:  options.bg  || \"lime\"
	    }
	        
	    console.log(\"defaults: \", JSON.stringify(defaults));

	    $(this).css(\"color\", defaults.fg).css(\"background\",defaults.bg);

	    console.groupEnd();
	    return $(this);
	},

	///////////////////////////////////////////////////////////////////////
	//// 
	///////////////////////////////////////////////////////////////////////
	update: function(options) {
	    console.group(\"mtk.update\", JSON.stringify(options));
	    
	    for (var key in options) {
		switch (key)
		{
		    case \"fg\":
		    defaults.color = options[key];
		    $(this).css(\"color\",options[key]);
		    break

		    case \"bg\":
		    defaults.color = options[key];
		    $(this).css(\"background\",options[key]);
		    break
		}
	    }

	    //console.log(\"defaults:\", JSON.stringify(defaults));

	    console.groupEnd();
	}
    };

    ///////////////////////////////////////////////////////////////////////////
    //// DO NOT TOUCH
    ///////////////////////////////////////////////////////////////////////////
    $.fn.mtk = function(method) {
	if (methods[method]) {
	    return methods[method].apply(this, Array.prototype.slice.call(arguments,1));
	} else if (typeof method === \"object\" || ! method) {
	    return methods.init.apply(this, arguments);
	} else {
	    $.error(\"Method \" +  method + \" does not exist on $.mtk\");
	}    
    };
})($);
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-defaults
"
    var defaults = $.extend({
	    color      : \"red\",
	    background : \"yellow\",
	}, options);
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-random
"
    small = Math.floor( Math.random() * 100 );
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-for
"
    for (var i=0; i<options.length; i++) {
        console.log(options[i]);
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-for-json
"
    for (var key in options) {
        console.log(options[key])
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-require
"
requirejs.config({
    paths: {\"text\" : \"/tk/samples/require/text\"}
});

require([\"/inc/test.js\", \"text!/inc/test.css\"], function(test, fonts) {
    console.log(\"test.js loaded correctly\");
});
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-try
"
    try {
        addalert('bad call');
    }
    catch(e) {
       console.error(e.name + ' > ' + e.message);
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-array-exist
"
    var myarray = ( typeof myarray != 'undefined' && myarray instanceof Array ) ? myarray : []
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-publish
"
    console.log('PUBLISHED name: click', options.id);
    $.publish('name', ['click', options.id]); // PUBLISH
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-subscribe
"
    function mySibscriber(event, action, id) {
	console.info(\"mySibscriber\", action, id);
    }
	    
    $.subscribe(\"click\", mySibscriber);  // SUBSCRIBE
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-ready
 "
    jQuery(document).ready(function() {
    });
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-click
 "
    $(\"#target\").click(function() {
        alert(\"Handler for .click() called.\");
    });
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-function
 "
    $.fn.myFunction = function() { 
        alert(\"myFunction Called\");
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-each
 "
    $(\"#element\").each(function() {
    });
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-timeout
 "
    setTimeout(function(){
    }, 2000);
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-get
"
      $.get(url + \"&ajax=1\", function(data) {
	$(\"#id\").html(data)\;
	console.log(url + ' get was performed on ' + \"#id\")\;
      })\;
")
      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-extend
"// Time-stamp: <2013-10-30 08:02:49 (a527951)>
$.fn.greenify = function() {
    this.css( \"color\", \"green\" );
};
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-extend-2
"// Time-stamp: <>
(function ($) {
    $.fn.greenify = function( options ) {
 
        // This is the easiest way to have default options.
        var settings = $.extend({
            // These are the defaults.
            color: \"#556b2f\",
            backgroundColor: \"white\"
        }, options );
 
        // Greenify the collection based on the settings variable.
        return this.css({
            color: settings.color,
            backgroundColor: settings.backgroundColor
        });
    };
}( $ ));

//$( \"div\" ).greenify({
//    color: \"orange\"
//});
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-url
"url = location.protocol + \"//\" + location.host + location.pathname;");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-onclick
"$(\"#xxx\").on(\"click\", function() {

});");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-deferred
"/////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
function async() {
    var def = $.Deferred();
    
    setTimeout(function() { def.notify(1); }, 1000);
    setTimeout(function() { def.notify(2); }, 2000);
    setTimeout(function() { def.resolve(); }, 4000);
    
    setTimeout(function() {
	// RESOLVED VS. REJECT
	if (1) {
	    def.resolve(1234);
	} else {
	    def.reject(4321);
	}
    }, 30000);
    
    return def;
}

/////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
async().done(function (val) {
    console.log(\"Executed after a delay: \" + val);
}).fail(function (val) {
    console.log(\"sync has failed: \" + val);
}).always(function () {
    console.log(\"called always, all the time\");
}).progress(function(val) {
    console.log(\"dsync progress : \" + val)
});
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-options
"    options = options || {};

    var defaults = {
	bg: options.bg || \"red\",
	fg: options.fg || \"#333\"
    }
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-post
"
    var pdata = {\"?ajax\": 1, callback:\"test::go\", data:\"HELLO MEL\"}

    $.post(\"http://test/mtk/render\", pdata)
	.done(function(data, textStatus, jqXHR) {
	    $(\"body\").append(data);
	}).fail(function(jqXHR, textStatus, errorThrown) {
	    alert(textStatus);
	});
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-post-2
"
    $.post(url, function(data) {
	$(\".result\" ).html(url + \"<BR>\" + JSON.stringify(data));
    });
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-data
"
    $( \"body\" ).data( \"foo\", 52 );
    $( \"body\" ).data();
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-async
"
    $.ajaxSetup({async:false});
");

 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'jquery-getjson
"
$.getJSON(json-file, function(data) {
    ....
}).fail(function() {
    // NO JSON FILE
    self._fatal(\"E2100\");
    return;
});
")

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-class
"
////////////////////////////////////////////////////////////
//// 
////////////////////////////////////////////////////////////
class User {
    ////////////////////////////////////////////////////////
    //// 
    ////////////////////////////////////////////////////////
    constructor(name) {
	this.name = name;
    }

    ////////////////////////////////////////////////////////
    //// 
    ////////////////////////////////////////////////////////
    sayHi() {
	alert(this.name);
    }

}

////////////////////////////////////////////////////////
//// USAGE
////////////////////////////////////////////////////////
let user = new User(\"John\");
user.sayHi();
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'js-deferred
"
////////////////////////////////////////////////////////////
//// 
////////////////////////////////////////////////////////////
function getData() {
     var deferred = $.Deferred();

     if (0) {
	 // SUCCESS
	 deferred.resolve('YAY');
     } else {
	 // FAILURE
	 deferred.reject('NAY');
     }

     return deferred.promise();
}

getData()
     .then(function(value) {
	 // SUCCESS
	 $(\"body\").append(\"SUCCESS: \" + value);
     })
     .fail(function(value) {
	 // FAILURE
	 $(\"body\").append(\"SUCCESS: \" + value);
     });
")
