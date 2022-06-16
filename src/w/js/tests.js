/////////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <2022-06-16 12:08:07 (melify)>
/////////////////////////////////////////////////////////////////////////////////
window.test = {};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
test.blank = function(json) {
    console.group("test.blank", json);

    // CREATE A CONTAINER FOR RESULTS
    if ($("#blank-test-results").length == 0) {
	$("body").prepend(`<div id="blank-test-results" class="alert alert-info m-3"><h6 class="wc-font-b">TEST RESULTS</h6></div>`);
    }

    // ADD TEST EVENT TO RESULTS
    $("#blank-test-results").append(`<div class="ml-3">- TESTING: <i>${json.cmnd}</i></div>`);

    var w = document.querySelector("#my-blank");
    w.snd("#my-blank", {event:json.cmnd, value:json.value});

    console.groupEnd();
};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
test.blankAll = function() {
    console.group("test.blankAll");

    // TEST THIS COMPONENT NOW
    function test(cmnd, timeout) {
	wc.timeout(() => {
	    window.test.blank(cmnd)
	}, timeout, 1);
    }

    // LIST OF COMMANDS FROM Blank.test
    var cmnds = [
	{cmnd:"THIS SHOULD FAIL", value:{}},
	{cmnd:"configure",        value:{}},
	{cmnd:"hide",             value:{}},
	{cmnd:"show",             value:{}},
	{cmnd:"toggle",           value:{}},
	{cmnd:"toggle",           value:{}},
	{cmnd:"label",   value:"HELLO MEL"},
    ]

    for (var i = 0; i < cmnds.length; i++) {
	test(cmnds[i], (i+1)*2000)
    }

    console.groupEnd();
};
