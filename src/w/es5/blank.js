"use strict";

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

/**
 * Blank Component<BR>
 * <BR><BR><img src=/tk/lib/components/w/img/blank.png width=30% style="border:1px lime dashed;padding:20px">
 * <BR><BR><a href="/tk/lib/components/w/html/blank.html">DEMO</a>
 */
var Blank = function (_HTMLElement) {
	_inherits(Blank, _HTMLElement);

	function Blank() {
		_classCallCheck(this, Blank);

		wc.group("Blank.constructor");

		var _this = _possibleConstructorReturn(this, (Blank.__proto__ || Object.getPrototypeOf(Blank)).call(this));

		wc.groupEnd();
		return _this;
	}

	_createClass(Blank, [{
		key: "connectedCallback",


		/**
   * Called when this is attached to DOM
   * @connectedCallback. 
   */
		value: function connectedCallback() {
			wc.group("Blank.connectedCallback");

			// ADD A RANDOM ID IF NONE EXIST
			this.id = this.id || this.constructor.name.toLowerCase() + "-" + wc.uid();

			// GET PROPERTIES AND INTERESTING ELEMENTS
			this._initialize();

			// SHOW THIS COMPONENT
			this._render();

			// CHECK | UPDATE ATTRIBUTES
			this._attributes();

			// PUBLISH ALL EVENTS OF INTEREST
			this._publish();

			// SUBSCRIBE TO ALL EVENTS OF INTEREST
			this._subscribe();

			// ADD STATS AND OTHER FINAL STUFF
			this._finalize();

			wc.groupEnd();
		}
	}, {
		key: "_template",


		/**
   * Initial Markup
   * @private
   * @_template
   */
		value: function _template() {
			wc.group("Blank.template");

			var temp;

			// ADD COMPONENT MARKTOP
			if (0) {
				// FOR PRODUCTION (convert part.html to jstr using h2j)
				temp = "<h1>A BLANK TEMPLATE</h1>" + '' + "<i class=\"fa fa-home fa-5x\"></i>" + '' + "<div class=\"mt-3\">" + "    <h1 class=\"btn btn-lg btn-primary\">I AM A BOOTSTRAP BUTTON</h4>" + "</div>";
			} else {
				// FOR DEVELOPMENT/LOCAL TESTING
				temp = "<wc-include href=/tk/lib/components/misc/webpack-template/src/w/html/blank.part.html></wc-include>";
			}

			wc.groupEnd();
			return temp;
		}
	}, {
		key: "_attributes",


		/**
   * @private
   * @_attributes
   */
		value: function _attributes() {
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
		}
	}, {
		key: "_render",


		/**
   * @private
   * @_render
   */
		value: function _render() {
			wc.group("Blank._render");

			this.innerHTML = this._template();

			wc.groupEnd();
		}
	}, {
		key: "attributeChangedCallback",


		/**
   * Called with .setAttribute(...) function call
   * @attributeChangedCallback
   */
		value: function attributeChangedCallback(attr, oldval, newval) {
			wc.group("Blank.attributeChangedCallback:", attr, oldval, newval);

			this.properties = this.properties || [];

			var obs = Blank.observedAttributes;

			for (var i = 0; i < obs.length; i++) {
				if (newval) {
					this.properties[obs[i]] = newval;
				}
			}

			// YOUR CODE FOR CHANGES GO HERE (MAYBE NULL FIRST TIME THROUGH)
			try {
				switch (attr) {
					case "header":
						//this.querySelector("h1").innerHTML = newval;
						break;

					default:
						break;
				}
			} catch (e) {
				wc.warn(e.name + ' > ' + e.message);
			}

			wc.groupEnd();
		}
	}, {
		key: "_fetchElements",


		/**
   * Stores DOM elements of interest for future use
   * @private
   * @_fetchElements
   */
		value: function _fetchElements() {
			wc.group("Blank._fetchElements");

			this.dom = this.dom || [];
			this.dom.content = this.innerHTML;

			wc.groupEnd();
		}
	}, {
		key: "_fetchAttributes",


		/**
   * Component attributes are _fetched and defaults are set if undefined
   * @private
   * @_fetchAttributes
   */
		value: function _fetchAttributes() {
			wc.group("Blank._fetchAttributes");

			this.properties = {
				uparam: "",
				cname: "Blank",
				author: "Mel M. Heravi, Ph.D.",
				version: "1.0"
			};

			// SAVE WIDGET SPECIFIC PROPERTIES
			this.propertiesW = [];

			// GET ALL COMPONENT PROPERTIES
			var attrs = wc.getAttributes(this);

			// SAVE IN properties & propertiesW
			for (var key in attrs) {
				var attr = this.getAttribute(key) || this.properties.key;
				this.properties[key] = this.getAttribute(key);
				this.propertiesW[key] = this.getAttribute(key);
				wc.log(key + ": " + attrs[key]);
			}

			// SET ALL INITIAL ATTRIBUTES
			for (var key in this.properties) {
				switch (key) {
					case "header":
						break;

					default:
						break;
				}
			}

			wc.log("ATTRIBUTES: ", this.properties);

			wc.groupEnd();
		}
	}, {
		key: "configure",


		/**
   * configure the instance object and artifacts
   * @configure
   * @param {string} data use data if exist else use 'this.properties.cfg' parameter
   */
		value: function configure(data) {
			wc.group("Blank.configure:", data);

			// IF JSON VARIABLE (data) IS PROVIDED
			if (data) {
				// DIRECT CALL TO ACTION
				this._process(data);
			} else {
				// USUALLY TO INITIALIZE THE COMPONENT FROM A JSON URL
				var self = this;

				$.getJSON(this.properties.cfg, function (data) {
					self._process(data);
				}).fail(function (jqXHR, textStatus, errorThrown) {
					alert("ERROR: INCOMING TEXT " + jqXHR.responseText);
				});
			}

			wc.groupEnd();
		}
	}, {
		key: "_process",


		/**
   * _process the instance object and artifacts
   * @private
   * @_process
   *
   * SAMPLES:
   * -----------------------------------------------------
   * this.configure({action:"click"})
   * this.configure({action:"toggle"})
   * this.configure({action:"label", value:"HELLO MEL"})
   */
		value: function _process(data) {
			wc.group("Blank._process:", data);

			var self = this;

			// DO WHATEVER WITH THE DATA
			if (data.action) {
				/* IF ACTION EXIST */
				switch (data.action) {
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
						self.innerHTML = "<h1>" + data.value + "</h1>";
						break;

					case "click":
						$(self).toggle(); /* OR WHATEVER */
						wc.info("you clicked on me ?");
						break;

					default:
						console.error("Component 'Blank' has no event named:" + msg.event);
						alert("Component 'Blank' has no event named:" + msg.event);
						break;
				}
			}

			wc.groupEnd();
		}
	}, {
		key: "_initialize",


		/**
   * Initialize component
   * @private
   * @_initialize
   */
		value: function _initialize() {
			wc.group("Blank._initialize:", this.id);

			// FETCH ALL INTERESTING ELEMENTS
			this._fetchElements();

			// FETCH ALL ATTRIBUTES
			this._fetchAttributes();

			wc.groupEnd();
		}
	}, {
		key: "_finalize",


		/**
   * Save data for analytics and final wrap up
   * @private
   * @_finalize
   */
		value: function _finalize() {
			wc.group("Blank._finalize:", this.id);

			this.classList.add("wc");

			// ADD ANALYTICS HERE
			wc.setStats(this, this.properties.cname, this.properties.version);

			// SHOW IT NOW (NO FLICKERS) 
			this.style.visibility = "visible";

			wc.groupEnd();
		}
	}, {
		key: "disconnectedCallback",


		/**
   * Invoked When component is removed. Usually with a .remove() function call
   * @disconnectedCallback
   */
		value: function disconnectedCallback() {
			wc.group("Blank.disconnectedCallback");

			wc.groupEnd();
		}
	}, {
		key: "destroy",


		/**
   * Destroy the instance object and artifacts
   * @destroy
   */
		value: function destroy() {
			wc.group("Blank.destroy");

			// FREE ALL MEMORY
			// you should delete all created objects here

			// FREE POINTER
			delete this;

			// REMOVE ITEM FROM DOM
			this.parentNode.removeChild(this);

			wc.groupEnd();
		}
	}, {
		key: "_publish",


		/**
   * @_publish
   */
		value: function _publish() {
			wc.group("Blank._publish");

			var self = this;

			// PUBLISH CLICK EVENTS
			$(this).on("click", function () {
				wc.publish("wc-blank", {
					id: self.id,
					time: new Date().getTime(),
					action: "click"
				});
			});

			wc.groupEnd();
			return true;
		}
	}, {
		key: "_subscribe",


		/**
   * Subscribe all to events of interest
   * @private
   * @_subscribe
   */
		value: function _subscribe() {
			wc.group("Blank._subscribe:", this.id);

			var self = this;

			// SUBSCRIPTION START
			wc.subscribe("wc-blank", function (msg, data) {
				// THIS IS JUST AN EXAMPLE
				wc.info("SUBSCRIPTION TRIGGERED " + JSON.stringify(data));

				// IF THE MSG IS FOR ME
				if (data.id == self.id) {
					switch (data.action) {
						// CLICK SUBSCRIPTIONS
						case "click":
							self.configure({ action: "click" });
							break;
					}
				}
			});
			// SUBSCRIPTION END

			wc.groupEnd();
		}
	}], [{
		key: "observedAttributes",


		/**
   * Set observable values here. When Changed, attributeChangedCallback is invoked
   * @observedAttributes
   */
		get: function get() {
			wc.group("Blank.observedAttributes");

			this.observables = [];

			wc.groupEnd();
			return this.observables;
		}
	}]);

	return Blank;
}(HTMLElement);

window.customElements.define('wc-blank', Blank);