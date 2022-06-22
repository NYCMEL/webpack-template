/////////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <2019-05-12 11:31:08 (melify)>
/////////////////////////////////////////////////////////////////////////////////
var menus = {};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
menus.init = function(m) {
    wc.group("menus.init:", JSON.stringify(m));

    $.each(m, function (i, val) {
	var menuLi
	var parent = $(".menu");
	if (val.parent != 0) {
            parent = menuArr[val.parent];
	}
	menuLi = $('<li>' + val.name + '</li>');
	parent.append(menuLi);
	menuArr[val.id] = menuLi;
    });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
var util = {};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
util.resize = function(size) {
    wc.group("util.resize:", size);

    $("wc-form")
	.removeClass("form-control-xl form-control-lg form-control-md form-control-sm")
	.addClass("form-control-" + size);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
util.direction = function(d) {
    wc.group("util.direction:", d);

    if (d == "h") {
	$(".h3-direction").html("Horizontal");

	$("form .col-md-4x")
	    .removeClass("col-md-4x col-md-12")
	    .addClass("col-md-4");
	$("form .col-md-8x")
	    .removeClass("col-md-8x col-md-12")
	    .addClass("col-md-8");
    } else {
	$(".h3-direction").html("Vertical");

	$("form .col-md-4")
	    .removeClass("col-md-4")
	    .addClass("col-md-4x col-md-12");
	$("form .col-md-8")
	    .removeClass("col-md-8")
	    .addClass("col-md-8x col-md-12");
    }

    wc.groupEnd();
};

//////////////////////////////////////////////////////////////////////
//// CHANGE FORM CLASS
//////////////////////////////////////////////////////////////////////
changeFormClass = function(cls,name) {
    wc.group("wcChangeFormClass:", cls, name);

    switch(name) 
    {
	// RESET ERROR - TEXT FOR NOW
	case "default":
	$("wc-form .text").removeClass("error");
	changeFormClass(cls,"lg");
	break;

	// CREATE ERROR SKIN - TEXT FOR NOW
	case "error":
	$("wc-form .text").addClass(name);
	break;

	// FORM CLASS SETTINGS
	case "sm":
	case "md":
	case "lg":
	$("wc-form .btn").removeClass("btn-sm").removeClass("btn-md").removeClass("btn-lg").addClass("btn-" + name);
	$("wc-form .text").removeClass("text-sm").removeClass("text-md").removeClass("text-lg").addClass("text-" + name);
	$("wc-form .textarea").removeClass("textarea-sm").removeClass("textarea-md").removeClass("textarea-lg").addClass("textarea-" + name);
	$("wc-form .dropdown").removeClass("dropdown-sm").removeClass("dropdown-md").removeClass("dropdown-lg").addClass("dropdown-" + name);
	$("wc-form .label").removeClass("label-sm").removeClass("label-md").removeClass("label-lg").addClass("label-" + name);
	$("wc-form .calendar").removeClass("calendar-sm").removeClass("calendar-md").removeClass("calendar-lg").addClass("calendar-" + name);
	break;
    }

    wc.groupEnd();
};

setTimeout(function(){
    $(".btn-group.size .btn").on("click", function() {
	$(".btn-group.size .btn").removeClass("active")
	$(this).addClass("active");
    });

    $(".btn-group.direction .btn").on("click", function() {
	$(".btn-group.direction .btn").removeClass("active")
	$(this).addClass("active");
    });
}, 1000);
