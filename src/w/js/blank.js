/**
 * Blank Component<BR>
 * <BR><BR><img src=/tk/lib/components/w/img/blank.png width=30% style="border:1px lime dashed;padding:20px">
 * <BR><BR><a href="/tk/lib/components/w/html/blank.html">DEMO</a>
 */
class Blank extends HTMLElement {
    constructor() {
        wc.group("Blank.constructor")
	
        super();

        wc.groupEnd();
    };
    
    /**
     * Set observable values here. When Changed, attributeChangedCallback is invoked
     * @observedAttributes
     */
    static get observedAttributes() {
        wc.group("Blank.observedAttributes");

	this.observables = [];

        wc.groupEnd();
        return this.observables;
    };

    /**
     * Called when this is attached to DOM
     * @connectedCallback. 
     */
    connectedCallback() {
        wc.group("Blank.connectedCallback")
	
	// ADD A RANDOM ID IF NONE EXIST
	this.id = this.id || this.constructor.name.toLowerCase() + "-" + wc.uid();

	// GET PROPERTIES AND INTERESTING ELEMENTS
	this._initialize();

	// SHOW THIS COMPONENT
	this._render()

	// CHECK | UPDATE ATTRIBUTES
	this._attributes();
	
	// PUBLISH ALL EVENTS OF INTEREST
	this._publish();
	
	// SUBSCRIBE TO ALL EVENTS OF INTEREST
	this._subscribe();

	// ADD STATS AND OTHER FINAL STUFF
	this._finalize();

        wc.groupEnd();
    };

    /**
     * Initial Markup
     * @private
     * @_template
     */
    _template() {
        wc.group("Blank.template");
	
	var temp;

	// ADD COMPONENT MARKTOP
	if (0) {
	    // FOR PRODUCTION (convert part.html to jstr using h2j)
	    temp = `<h1>A BLANK TEMPLATE</h1>`+
		''+
		`<i class="fa fa-home fa-5x"></i>`+
		''+
		`<div class="mt-3">`+
		`    <h1 class="btn btn-lg btn-primary">I AM A BOOTSTRAP BUTTON</h4>`+
		`</div>`;
	} else {
	    // FOR DEVELOPMENT/LOCAL TESTING
	    temp = "<wc-include href=/tk/lib/components/misc/webpack-template/src/w/html/blank.part.html></wc-include>";
	}

        wc.groupEnd();
        return temp;
    };

    /**
     * @private
     * @_attributes
     */
    _attributes() {
        wc.group("Blank._attributes");
	
	var self = this;

	if (0) {
	    // TRANSFER ALL ATTRIBUTES NOW (BELOW IS AN EXAMPLE)
	    // -------------------------------------------------
	    // SAMPLE CODE BELOW
 	    for (var key in this.propertiesW) {
		// SKIP CLASS AND ID
		if (key != "class" && key != "id") {
		    this.removeAttribute(key);
		    self.setAttribute(key, this.properties[key]);
		}
	    }	
	}
        wc.groupEnd();
    };

    /**
     * @private
     * @_render
     */
    _render() {
        wc.group("Blank._render");
	
	this.innerHTML = this._template();

        wc.groupEnd();
    };

    /**
     * Called with .setAttribute(...) function call
     * @attributeChangedCallback
     */
    attributeChangedCallback(attr, oldval, newval) {
        wc.group("Blank.attributeChangedCallback:", attr, oldval, newval);

	this.properties = this.properties || [];

	let obs = Blank.observedAttributes;

	for (let i = 0; i < obs.length; i++) {
	    if (newval) {
		this.properties[obs[i]] = newval;
	    }
	}
	
	// YOUR CODE FOR CHANGES GO HERE (MAYBE NULL FIRST TIME THROUGH)
	try {
	    switch(attr) 
	    {
		case "header":
		//this.querySelector("h1").innerHTML = newval;
		break;
		
		default:
		break;
	    }
	} catch(e) {
	    wc.warn(e.name + ' > ' + e.message);
	}

        wc.groupEnd();
    };

    /**
     * Stores DOM elements of interest for future use
     * @private
     * @_fetchElements
     */
    _fetchElements() {
	wc.group("Blank._fetchElements");
	
	this.dom = this.dom || [];
	this.dom.content = this.innerHTML;

	wc.groupEnd();
    };

    /**
     * Component attributes are _fetched and defaults are set if undefined
     * @private
     * @_fetchAttributes
     */
    _fetchAttributes() {
	wc.group("Blank._fetchAttributes");
	
	this.properties = {
	    uparam	: "",
	    cname	: "Blank",
	    author	: "Mel M. Heravi, Ph.D.",
	    version	: "1.0"
	};
	
	// SAVE WIDGET SPECIFIC PROPERTIES
	this.propertiesW = [];
	
	// GET ALL COMPONENT PROPERTIES
	let attrs = wc.getAttributes(this)
	
	// SAVE IN properties & propertiesW
 	for (var key in attrs) {
	    let attr = this.getAttribute(key) || this.properties.key;
	    this.properties[key]  = this.getAttribute(key);
	    this.propertiesW[key] = this.getAttribute(key);
	    wc.log(key + ": " + attrs[key]);
	}

	// SET ALL INITIAL ATTRIBUTES
 	for (var key in this.properties) {
	    switch(key) 
	    {
		case "header":
		break;
		
		default:
		break;
	    }
	}

	wc.log("ATTRIBUTES: ", this.properties);

	wc.groupEnd();
    };

    /**
     * configure the instance object and artifacts
     * @configure
     * @param {string} data use data if exist else use 'this.properties.cfg' parameter
     */
    configure(data) {
	wc.group("Blank.configure: data=", data);

	// START TIME
	let time1 = Date.now();

	// IF JSON VARIABLE (data) IS PROVIDED
	if (data) {
	    // DIRECT CALL TO ACTION
	    this._process(data);
	} else {
	    // USUALLY TO INITIALIZE THE COMPONENT FROM A JSON URL
	    let self = this;

	    $.getJSON(this.properties.cfg, function(data) {
		self._process(data);
	    }).fail(function(jqXHR, textStatus, errorThrown) {
		alert("ERROR: INCOMING TEXT " + jqXHR.responseText);
	    });
	}

	// END TIME
	let time2 = Date.now();

	wc.groupEnd();
	return "T:" + (time2-time2);
    };

    /**
     * _process the instance object and artifacts
     * @private
     * @_process
     *
     * SAMPLES CONFIGURATION:
     * -----------------------------------------------------
     * this.configure({action:"click"})
     * this.configure({action:"toggle"})
     * this.configure({action:"label", value:"HELLO MEL"})
     */
    _process(data) {
	wc.group("Blank._process:", data);
	
	let self = this;

	// DO WHATEVER WITH THE DATA
	if (data.action) {
	    /* IF ACTION EXIST */
	    switch(data.action) 
	    {
		case "show":
		$(self).show();
		break;

		case "hide":
		$(self).hide();
		break;

		case "toggle":
		$(self).toggle();
		break;

		case "label":
		self.innerHTML = `<h1>${data.value}</h1>`;
		break;

		case "click":
		$(self).toggle() /* OR WHATEVER */
		wc.info("you clicked on me ?")
		break;

		default:
		console.error("Component 'Blank' has no event named:" + data.action);
		alert("Component 'Blank' has no event named:" + data.action)
		break;
	    }
	}
	
	wc.groupEnd();
    };

    /**
     * Initialize component
     * @private
     * @_initialize
     */
    _initialize() {
	wc.group("Blank._initialize:", this.id);

	// FETCH ALL INTERESTING ELEMENTS
	this._fetchElements();

	// FETCH ALL ATTRIBUTES
	this._fetchAttributes();
	
	wc.groupEnd();
    };

    /**
     * Save data for analytics and final wrap up
     * @private
     * @_finalize
     */
    _finalize() {
	wc.group("Blank._finalize:", this.id);

	this.classList.add("wc");

	// ADD ANALYTICS HERE
	wc.setStats(this, this.properties.cname, this.properties.version);
	
	// SHOW IT NOW (NO FLICKERS) 
	this.style.visibility = "visible";

	wc.groupEnd();
    };

    /**
     * Invoked When component is removed. Usually with a .remove() function call
     * @disconnectedCallback
     */
    disconnectedCallback() {
        wc.group("Blank.disconnectedCallback")

        wc.groupEnd();
    };

    /**
     * Destroy the instance object and artifacts
     * @destroy
     */
    destroy() {
	wc.group("Blank.destroy");

	// FREE ALL MEMORY
	// you should delete all created objects here
	
	// FREE POINTER
	delete this;
	
	// REMOVE ITEM FROM DOM
	this.parentNode.removeChild(this);

	wc.groupEnd();
    };

    /**
     * @_publish
     */
    _publish() {
	wc.group("Blank._publish");

	let self = this;

	// PUBLISH CLICK EVENTS
	$(this).on("click", () => {
	    wc.publish("wc-blank", {
		id: self.id,
		time: new Date().getTime(),
		action: "click"
	    });
	});

	wc.groupEnd();
	return true;
    };

    /**
     * Subscribe all to events of interest
     * @private
     * @_subscribe
     */
    _subscribe() {
	wc.group("Blank._subscribe:", this.id);
	
	let self = this;

	// SUBSCRIPTION START
	wc.subscribe("wc-blank", function(msg,data) {
	    // IF THE MSG IS FOR ME
	    if (data.id == self.id) {
		self.configure(data)
	    }
	});
	// SUBSCRIPTION END
	
	wc.groupEnd();
    }
}

window.customElements.define('wc-blank', Blank);

