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

			var self = this;

			// ADD A RANDOM ID IF NONE EXIST
			if (!this.id) {
				this.id = this.constructor.name.toLowerCase() + "-" + wc.uid();
			}

			// GET PROPERTIES AND INTERESTING ELEMENTS
			this._initialize();

			this._render();

			this._attributes();

			// PUBLISH ALL EVENTS OF INTEREST
			this._publish();

			// SUBSCRIBE TO ALL EVENTS OF INTEREST
			this._subscribe();

			// ADD STATS AND OTHER FINAL STUFF
			this._finalize();

			ga('send', { 'hitType': 'event', 'eventCategory': 'wc-connected', 'eventAction': 'connected', 'eventLabel': this.properties.cname, 'eventValue': JSON.stringify({ 'env': wcENV, 'app': wcAPP, 'url': wcURL }) });

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

			var temp = this.dom.content;

			wc.groupEnd();
			return temp;
		}
	}, {
		key: "_attributes",


		/**
   * @private
   * @_render
   */
		value: function _attributes() {
			wc.group("Blank._attributes");

			// TRANSFER ALL ATTRIBUTES NOW (below is an example)
			// -------------------------------------------------
			if (0) {
				var widget = this.querySelector("input[type=text]");

				for (var key in this.propertiesW) {
					if (key != "class" && key != "id") {
						this.removeAttribute(key);
						widget.setAttribute(key, this.properties[key]);
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

			if (0) {
				// USE SHADOW-dom
				var shadow = this.attachShadow({ mode: 'open' });

				shadow.innerHTML = "\n\t\t<link href=\"/tk/lib/components/w/dist/wc.css\" rel=\"stylesheet\">\n\t\t<link href=\"/Melify/fonts/fonts.css\" rel=\"stylesheet\">\n\t\t<div id=\"wc\">" + this._template() + "</div>";
			} else {
				// ADD COMPONENT MARKTOP
				this.innerHTML = this._template();
			}

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

			// SAVE ALL OTHER PROPERTIES
			var attrs = wc.getAttributes(this);

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
				this._process(data);
			} else {
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
   */
		value: function _process(data) {
			wc.group("Blank._process:", data);

			// DO WHATEVER WITH THE DATA

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

			ga('send', { 'hitType': 'event', 'eventCategory': 'wc-disconnected', 'eventAction': 'disconnected', 'eventLabel': this.properties.cname, 'eventValue': JSON.stringify({ 'env': wcENV, 'app': wcAPP, 'url': wcURL }) });

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

			ga('send', { 'hitType': 'event', 'eventCategory': 'wc-destroyed', 'eventAction': 'distroy', 'eventLabel': this.properties.cname, 'eventValue': JSON.stringify({ 'env': wcENV, 'app': wcAPP, 'url': wcURL }) });

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

				ga('send', { 'hitType': 'event', 'eventCategory': 'wc-blank', 'eventAction': 'click', 'eventLabel': self.properties.cname, 'eventValue': JSON.stringify({ 'env': wcENV, 'app': wcAPP, 'url': wcURL }) });
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

			wc.groupEnd();
		}

		/**
   * SND EVENT TO A COMPONENT
   * @public
   * @snd
   */

	}, {
		key: "snd",
		value: function snd(target, msg) {
			wc.group("Blank.snd:", this.id + " to " + target, msg);

			var w = document.querySelector(target);

			// CALL THE TARGET'S rcv METHOD
			w.rcv(msg);

			wc.groupEnd();
		}

		/**
   * EVENT IS PUSHED TO ME
   * @public
   * @rcv
   */

	}, {
		key: "rcv",
		value: function rcv(msg) {
			wc.group("Blank.rcv:", this.id, msg);

			switch (msg.event) {
				case "show":
					$(this).show();
					break;

				case "hide":
					$(this).hide();
					break;

				default:
					console.error("Component 'Blank' has no event named:" + msg.event);
					break;
			}

			wc.groupEnd();
			return msg.event;
		}

		/**
   * @_request
   */

	}, {
		key: "_request",
		value: function _request(e) {
			wc.group("Blank._request:", this.id, JSON.stringify(e.detail));

			switch (e.detail.request) {
				case "label":
					var h1 = this.querySelector("h1");
					h1.innerHTML = e.detail.str;
					this._publish("labelChanged");
					break;

				default:
					console.error("DO NOT HAVE SUCH REQUEST: " + e.detail.request);
					break;
			}

			wc.groupEnd();
			return true;
		}
	}], [{
		key: "test",


		/**
   * @test
   */
		value: function test(what) {
			wc.group("Blank.test:", what);

			switch (what) {
				case "label":
					wc.publish("wc-blank", { time: new Date().getTime(), requestor: "my-blank", request: "label", str: "Hello Mel !" });
					break;

				default:
					console.error("Component 'Blank' has no test for:" + what);
					break;
			}

			wc.groupEnd();
			return true;
		}
	}, {
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

// SO I CAN CALL THE STATIC METHOD GLOBALLY
window.Blank = Blank;