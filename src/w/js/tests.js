/////////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <2022-06-16 11:07:04 (melify)>
/////////////////////////////////////////////////////////////////////////////////
window.test = {};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
test.blank = function(what) {
    console.group("test.blank", what);

    // CREATE A CONTAINER FOR RESULTS
    if ($("#blank-test-results").length == 0) {
	$("body").prepend(`<div id="blank-test-results" class="m-3"><h6 class="wc-font-b">TEST RESULTS</h6></div>`);
    }

    // ADD TEST EVENT TO RESULTS
    $("#blank-test-results").append(`<div class="ml-3">- TESTING: <i>${what}</i></div>`);

    switch(what) 
    {
	case "configure": /* CONFIGURE */
	var w = document.querySelector("#my-blank");
	break;

	case "show": /* SHOW */
	var w = document.querySelector("#my-blank");
	w.snd("#my-blank", {event:"show"});
	break;

	case "hide": /* HIDE */
	var w = document.querySelector("#my-blank");
	w.snd("#my-blank", {event:"hide"});
	break;

	case "toggle": /* TOGGLE */
	var w = document.querySelector("#my-blank");
	w.snd("#my-blank", {event:"toggle"});
	break;

	default: /* NO SUCH COMMAND */
	console.error("Component 'Blank' has no test for: " + what);
	break;
    }

    console.groupEnd();
};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
test.blankAll = function() {
    console.group("test.blankAll");

    // TEST THIS COMPONENT NOW
    function test(what, timeout) {
	wc.timeout(() => {
	    console.log(">>>>>>>>>>>>", what);
	    test.blank(what)
	}, timeout, 1);
    }

    // LIST OF COMMANDS FROM Blank.test
    var cmnds = ["configure","hide","show","toggle","toggle","FAIL-THIS"]

    for (var i = 0; i < cmnds.length; i++) {
	test(cmnds[i], (i+1)*2000)
    }

    console.groupEnd();
};
