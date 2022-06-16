/////////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <2022-06-16 11:44:27 (melify)>
/////////////////////////////////////////////////////////////////////////////////
window.test = {};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
test.blank = function(what) {
    console.group("test.blank", what);

    // CREATE A CONTAINER FOR RESULTS
    if ($("#blank-test-results").length == 0) {
	$("body").prepend(`<div id="blank-test-results" class="alert alert-info m-3"><h6 class="wc-font-b">TEST RESULTS</h6></div>`);
    }

    // ADD TEST EVENT TO RESULTS
    $("#blank-test-results").append(`<div class="ml-3">- TESTING: <i>${what}</i></div>`);

    try {
	var w = document.querySelector("#my-blank");
	w.snd("#my-blank", {event: what});
    } catch(e) {
	console.error("TEST.BLANK: ", e.name + ' > ' + e.message);
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
	    window.test.blank(what)
	}, timeout, 1);
    }

    // LIST OF COMMANDS FROM Blank.test
    var cmnds = ["label","configure","hide","show","toggle","toggle","FAIL-THIS"]

    for (var i = 0; i < cmnds.length; i++) {
	test(cmnds[i], (i+1)*2000)
    }

    console.groupEnd();
};
