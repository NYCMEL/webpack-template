/////////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <2022-06-17 14:46:39 (melify)>
/////////////////////////////////////////////////////////////////////////////////
window.test = {};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
test.blank = function() {
    console.group("test.blank");

    // CREATE A CONTAINER FOR RESULTS
    if ($("#blank-test-results").length == 0) {
	$("body").prepend(`<div id="blank-test-results" class="m-3 alert alert-info"><h6 class="wc-font-b">TESTING:</h6></div>`);
    }

    // TEST THIS COMPONENT NOW
    function test(test, timeout) {
	// SEND MSG TO BLANK TO CONFIGURE WITH ACTION, VALUE
	wc.timeout(() => {
	    // ADD TEST EVENT TO SCREEN
	    $("#blank-test-results").append(`<div class="ml-3">- TESTING BLANK: <i>${test.action}, ${JSON.stringify(test.value)}</i></div>`);
	    
	    wc.publish("wc-blank", {
		id: "my-blank",
		time: new Date().getTime(),
		action: test.action,
		value: test.value
	    });

	}, timeout, 1);
    }

    // LIST OF COMMANDS FROM Blank.test
    var tests = [
	{action:"hide",             value:{}},
	{action:"show",             value:{}},
	{action:"toggle",           value:{}},
	{action:"toggle",           value:{}},
	{action:"label",   value:"HELLO MEL"},
	{action:"THIS SHOULD FAIL", value:{}},
    ]

    for (var i = 0; i < tests.length; i++) {
	test(tests[i], (i+1)*2000)
    }

    console.groupEnd();
};
