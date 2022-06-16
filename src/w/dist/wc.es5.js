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
						case "process":
							var tmp = document.querySelector("#" + data.id);
							tmp.rcv(data.msg);
							break;

						// HIDE THE OTHER BUTTON
						case "click":
							self.snd("#" + data.id, { event: "toggle" });
							break;
					}
				}
			});
			// SUBSCRIPTION END

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

				case "toggle":
					$(this).toggle();
					break;

				case "label":
					this.innerHTML = "<h1>" + msg.str + "</h1>";
					break;

				default:
					console.error("Component 'Blank' has no event named:" + msg.event);
					break;
			}

			wc.groupEnd();
			return msg.event;
		}

		/**
   * @test
   */

	}], [{
		key: "test",
		value: function test(what) {
			wc.group("Blank.test:", what);

			// CREATE A CONTAINER FOR RESULTS
			if ($("#blank-test-results").length == 0) {
				$("body").prepend("<div id=\"blank-test-results\" class=\"m-3\"><h6 class=\"wc-font-b\">TEST RESULTS</h6></div>");
			}

			// ADD TEST EVENT TO RESULTS
			$("#blank-test-results").append("<div class=\"ml-3\">- TESTING: <i>" + what + "</i></div>");

			switch (what) {
				case "configure":
					/* CONFIGURE */
					var w = document.querySelector("#my-blank");
					break;

				case "show":
					/* SHOW */
					var w = document.querySelector("#my-blank");
					w.snd("#my-blank", { event: "show" });
					break;

				case "hide":
					/* HIDE */
					var w = document.querySelector("#my-blank");
					w.snd("#my-blank", { event: "hide" });
					break;

				case "toggle":
					/* TOGGLE */
					var w = document.querySelector("#my-blank");
					w.snd("#my-blank", { event: "toggle" });
					break;

				default:
					/* NO SUCH COMMAND */
					console.error("Component 'Blank' has no test for: " + what);
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

window.customElements.define('wc-blank', Blank);"use strict";

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

/**
 * Include Component<BR>
 * <BR><BR><a href="/tk/lib/components/w/html/include.html">DEMO</a>
 */
var Include = function (_HTMLElement) {
	_inherits(Include, _HTMLElement);

	function Include() {
		_classCallCheck(this, Include);

		wc.group("Include.constructor");

		var _this = _possibleConstructorReturn(this, (Include.__proto__ || Object.getPrototypeOf(Include)).call(this));

		wc.groupEnd();
		return _this;
	}

	_createClass(Include, [{
		key: "connectedCallback",


		/**
   * This function is called when this is attached to DOM
   * @connectedCallback. 
   */
		value: function connectedCallback() {
			wc.group("Include.connectedCallback");

			var href = $(this).attr("href");
			var par = $(this).parent();

			// ADD LOADING IMAGE
			$(par).html("<span class='wc-loading-img'></span>");

			if (href) {
				var xhttp = new XMLHttpRequest();

				xhttp.onreadystatechange = function () {
					if (this.readyState == 4) {
						//alert(this.responseText)
						if (this.status == 200) {
							$(par).html(this.responseText);
						}
						if (this.status == 404) {
							$(par).html("wc-include: Page not found: " + href);
						}
					}
				};

				xhttp.open("GET", href, true);
				xhttp.send();
			}

			wc.groupEnd();
		}
	}]);

	return Include;
}(HTMLElement);

window.customElements.define('wc-include', Include);'use strict';

var _typeof2 = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

/* 
   @package NOTY - Dependency-free notification library 
   @version version: 3.2.0-beta 
   @contributors https://github.com/needim/noty/graphs/contributors 
   @documentation Examples and Documentation - https://ned.im/noty 
   @license Licensed under the MIT licenses: http://www.opensource.org/licenses/mit-license.php 
*/

(function webpackUniversalModuleDefinition(root, factory) {
	/* MEL MEL MEL */
	window.Noty = factory();

	if ((typeof exports === 'undefined' ? 'undefined' : _typeof2(exports)) === 'object' && (typeof module === 'undefined' ? 'undefined' : _typeof2(module)) === 'object') module.exports = factory();else if (typeof define === 'function' && define.amd) define("Noty", [], factory);else if ((typeof exports === 'undefined' ? 'undefined' : _typeof2(exports)) === 'object') exports["Noty"] = factory();else root["Noty"] = factory();
})(undefined, function () {
	return (/******/function (modules) {
			// webpackBootstrap
			/******/ // The module cache
			/******/var installedModules = {};
			/******/
			/******/ // The require function
			/******/function __webpack_require__(moduleId) {
				/******/
				/******/ // Check if module is in cache
				/******/if (installedModules[moduleId]) {
					/******/return installedModules[moduleId].exports;
					/******/
				}
				/******/ // Create a new module (and put it into the cache)
				/******/var module = installedModules[moduleId] = {
					/******/i: moduleId,
					/******/l: false,
					/******/exports: {}
					/******/ };
				/******/
				/******/ // Execute the module function
				/******/modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
				/******/
				/******/ // Flag the module as loaded
				/******/module.l = true;
				/******/
				/******/ // Return the exports of the module
				/******/return module.exports;
				/******/
			}
			/******/
			/******/
			/******/ // expose the modules object (__webpack_modules__)
			/******/__webpack_require__.m = modules;
			/******/
			/******/ // expose the module cache
			/******/__webpack_require__.c = installedModules;
			/******/
			/******/ // identity function for calling harmony imports with the correct context
			/******/__webpack_require__.i = function (value) {
				return value;
			};
			/******/
			/******/ // define getter function for harmony exports
			/******/__webpack_require__.d = function (exports, name, getter) {
				/******/if (!__webpack_require__.o(exports, name)) {
					/******/Object.defineProperty(exports, name, {
						/******/configurable: false,
						/******/enumerable: true,
						/******/get: getter
						/******/ });
					/******/
				}
				/******/
			};
			/******/
			/******/ // getDefaultExport function for compatibility with non-harmony modules
			/******/__webpack_require__.n = function (module) {
				/******/var getter = module && module.__esModule ?
				/******/function getDefault() {
					return module['default'];
				} :
				/******/function getModuleExports() {
					return module;
				};
				/******/__webpack_require__.d(getter, 'a', getter);
				/******/return getter;
				/******/
			};
			/******/
			/******/ // Object.prototype.hasOwnProperty.call
			/******/__webpack_require__.o = function (object, property) {
				return Object.prototype.hasOwnProperty.call(object, property);
			};
			/******/
			/******/ // __webpack_public_path__
			/******/__webpack_require__.p = "";
			/******/
			/******/ // Load entry module and return exports
			/******/return __webpack_require__(__webpack_require__.s = 6);
			/******/
		}(
		/************************************************************************/
		/******/[
		/* 0 */
		/***/function (module, exports, __webpack_require__) {

			"use strict";

			Object.defineProperty(exports, "__esModule", {
				value: true
			});
			exports.css = exports.deepExtend = exports.animationEndEvents = undefined;

			var _typeof = typeof Symbol === "function" && _typeof2(Symbol.iterator) === "symbol" ? function (obj) {
				return typeof obj === 'undefined' ? 'undefined' : _typeof2(obj);
			} : function (obj) {
				return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj === 'undefined' ? 'undefined' : _typeof2(obj);
			};

			exports.inArray = inArray;
			exports.stopPropagation = stopPropagation;
			exports.generateID = generateID;
			exports.outerHeight = outerHeight;
			exports.addListener = addListener;
			exports.hasClass = hasClass;
			exports.addClass = addClass;
			exports.removeClass = removeClass;
			exports.remove = remove;
			exports.classList = classList;
			exports.visibilityChangeFlow = visibilityChangeFlow;
			exports.createAudioElements = createAudioElements;

			var _api = __webpack_require__(1);

			var API = _interopRequireWildcard(_api);

			function _interopRequireWildcard(obj) {
				if (obj && obj.__esModule) {
					return obj;
				} else {
					var newObj = {};if (obj != null) {
						for (var key in obj) {
							if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key];
						}
					}newObj.default = obj;return newObj;
				}
			}

			var animationEndEvents = exports.animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';

			function inArray(needle, haystack, argStrict) {
				var key = void 0;
				var strict = !!argStrict;

				if (strict) {
					for (key in haystack) {
						if (haystack.hasOwnProperty(key) && haystack[key] === needle) {
							return true;
						}
					}
				} else {
					for (key in haystack) {
						if (haystack.hasOwnProperty(key) && haystack[key] === needle) {
							return true;
						}
					}
				}
				return false;
			}

			function stopPropagation(evt) {
				evt = evt || window.event;

				if (typeof evt.stopPropagation !== 'undefined') {
					evt.stopPropagation();
				} else {
					evt.cancelBubble = true;
				}
			}

			var deepExtend = exports.deepExtend = function deepExtend(out) {
				out = out || {};

				for (var i = 1; i < arguments.length; i++) {
					var obj = arguments[i];

					if (!obj) continue;

					for (var key in obj) {
						if (obj.hasOwnProperty(key)) {
							if (Array.isArray(obj[key])) {
								out[key] = obj[key];
							} else if (_typeof(obj[key]) === 'object' && obj[key] !== null) {
								out[key] = deepExtend(out[key], obj[key]);
							} else {
								out[key] = obj[key];
							}
						}
					}
				}

				return out;
			};

			function generateID() {
				var prefix = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : '';

				var id = 'noty_' + prefix + '_';

				id += 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
					var r = Math.random() * 16 | 0;
					var v = c === 'x' ? r : r & 0x3 | 0x8;
					return v.toString(16);
				});

				return id;
			}

			function outerHeight(el) {
				var height = el.offsetHeight;
				var style = window.getComputedStyle(el);

				height += parseInt(style.marginTop) + parseInt(style.marginBottom);
				return height;
			}

			var css = exports.css = function () {
				var cssPrefixes = ['Webkit', 'O', 'Moz', 'ms'];
				var cssProps = {};

				function camelCase(string) {
					return string.replace(/^-ms-/, 'ms-').replace(/-([\da-z])/gi, function (match, letter) {
						return letter.toUpperCase();
					});
				}

				function getVendorProp(name) {
					var style = document.body.style;
					if (name in style) return name;

					var i = cssPrefixes.length;
					var capName = name.charAt(0).toUpperCase() + name.slice(1);
					var vendorName = void 0;

					while (i--) {
						vendorName = cssPrefixes[i] + capName;
						if (vendorName in style) return vendorName;
					}

					return name;
				}

				function getStyleProp(name) {
					name = camelCase(name);
					return cssProps[name] || (cssProps[name] = getVendorProp(name));
				}

				function applyCss(element, prop, value) {
					prop = getStyleProp(prop);
					element.style[prop] = value;
				}

				return function (element, properties) {
					var args = arguments;
					var prop = void 0;
					var value = void 0;

					if (args.length === 2) {
						for (prop in properties) {
							if (properties.hasOwnProperty(prop)) {
								value = properties[prop];
								if (value !== undefined && properties.hasOwnProperty(prop)) {
									applyCss(element, prop, value);
								}
							}
						}
					} else {
						applyCss(element, args[1], args[2]);
					}
				};
			}();

			function addListener(el, events, cb) {
				var useCapture = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : false;

				events = events.split(' ');
				for (var i = 0; i < events.length; i++) {
					if (document.addEventListener) {
						el.addEventListener(events[i], cb, useCapture);
					} else if (document.attachEvent) {
						el.attachEvent('on' + events[i], cb);
					}
				}
			}

			function hasClass(element, name) {
				var list = typeof element === 'string' ? element : classList(element);
				return list.indexOf(' ' + name + ' ') >= 0;
			}

			function addClass(element, name) {
				var oldList = classList(element);
				var newList = oldList + name;

				if (hasClass(oldList, name)) return;

				// Trim the opening space.
				element.className = newList.substring(1);
			}

			function removeClass(element, name) {
				var oldList = classList(element);
				var newList = void 0;

				if (!hasClass(element, name)) return;

				// Replace the class name.
				newList = oldList.replace(' ' + name + ' ', ' ');

				// Trim the opening and closing spaces.
				element.className = newList.substring(1, newList.length - 1);
			}

			function remove(element) {
				if (element.parentNode) {
					element.parentNode.removeChild(element);
				}
			}

			function classList(element) {
				return (' ' + (element && element.className || '') + ' ').replace(/\s+/gi, ' ');
			}

			function visibilityChangeFlow() {
				var hidden = void 0;
				var visibilityChange = void 0;
				if (typeof document.hidden !== 'undefined') {
					// Opera 12.10 and Firefox 18 and later support
					hidden = 'hidden';
					visibilityChange = 'visibilitychange';
				} else if (typeof document.msHidden !== 'undefined') {
					hidden = 'msHidden';
					visibilityChange = 'msvisibilitychange';
				} else if (typeof document.webkitHidden !== 'undefined') {
					hidden = 'webkitHidden';
					visibilityChange = 'webkitvisibilitychange';
				}

				function onVisibilityChange() {
					API.PageHidden = document[hidden];
					handleVisibilityChange();
				}

				function onBlur() {
					API.PageHidden = true;
					handleVisibilityChange();
				}

				function onFocus() {
					API.PageHidden = false;
					handleVisibilityChange();
				}

				function handleVisibilityChange() {
					if (API.PageHidden) stopAll();else resumeAll();
				}

				function stopAll() {
					setTimeout(function () {
						Object.keys(API.Store).forEach(function (id) {
							if (API.Store.hasOwnProperty(id)) {
								if (API.Store[id].options.visibilityControl) {
									API.Store[id].stop();
								}
							}
						});
					}, 100);
				}

				function resumeAll() {
					setTimeout(function () {
						Object.keys(API.Store).forEach(function (id) {
							if (API.Store.hasOwnProperty(id)) {
								if (API.Store[id].options.visibilityControl) {
									API.Store[id].resume();
								}
							}
						});
						API.queueRenderAll();
					}, 100);
				}

				if (visibilityChange) {
					addListener(document, visibilityChange, onVisibilityChange);
				}

				addListener(window, 'blur', onBlur);
				addListener(window, 'focus', onFocus);
			}

			function createAudioElements(ref) {
				if (ref.hasSound) {
					var audioElement = document.createElement('audio');

					ref.options.sounds.sources.forEach(function (s) {
						var source = document.createElement('source');
						source.src = s;
						source.type = 'audio/' + getExtension(s);
						audioElement.appendChild(source);
					});

					if (ref.barDom) {
						ref.barDom.appendChild(audioElement);
					} else {
						document.querySelector('body').appendChild(audioElement);
					}

					audioElement.volume = ref.options.sounds.volume;

					if (!ref.soundPlayed) {
						audioElement.play();
						ref.soundPlayed = true;
					}

					audioElement.onended = function () {
						remove(audioElement);
					};
				}
			}

			function getExtension(fileName) {
				return fileName.match(/\.([^.]+)$/)[1];
			}

			/***/
		},
		/* 1 */
		/***/function (module, exports, __webpack_require__) {

			"use strict";

			Object.defineProperty(exports, "__esModule", {
				value: true
			});
			exports.Defaults = exports.Store = exports.Queues = exports.DefaultMaxVisible = exports.docTitle = exports.DocModalCount = exports.PageHidden = undefined;
			exports.getQueueCounts = getQueueCounts;
			exports.addToQueue = addToQueue;
			exports.removeFromQueue = removeFromQueue;
			exports.queueRender = queueRender;
			exports.queueRenderAll = queueRenderAll;
			exports.ghostFix = ghostFix;
			exports.build = build;
			exports.hasButtons = hasButtons;
			exports.handleModal = handleModal;
			exports.handleModalClose = handleModalClose;
			exports.queueClose = queueClose;
			exports.dequeueClose = dequeueClose;
			exports.fire = fire;
			exports.openFlow = openFlow;
			exports.closeFlow = closeFlow;

			var _utils = __webpack_require__(0);

			var Utils = _interopRequireWildcard(_utils);

			function _interopRequireWildcard(obj) {
				if (obj && obj.__esModule) {
					return obj;
				} else {
					var newObj = {};if (obj != null) {
						for (var key in obj) {
							if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key];
						}
					}newObj.default = obj;return newObj;
				}
			}

			var PageHidden = exports.PageHidden = false;
			var DocModalCount = exports.DocModalCount = 0;

			var DocTitleProps = {
				originalTitle: null,
				count: 0,
				changed: false,
				timer: -1
			};

			var docTitle = exports.docTitle = {
				increment: function increment() {
					DocTitleProps.count++;

					docTitle._update();
				},

				decrement: function decrement() {
					DocTitleProps.count--;

					if (DocTitleProps.count <= 0) {
						docTitle._clear();
						return;
					}

					docTitle._update();
				},

				_update: function _update() {
					var title = document.title;

					if (!DocTitleProps.changed) {
						DocTitleProps.originalTitle = title;
						document.title = '(' + DocTitleProps.count + ') ' + title;
						DocTitleProps.changed = true;
					} else {
						document.title = '(' + DocTitleProps.count + ') ' + DocTitleProps.originalTitle;
					}
				},

				_clear: function _clear() {
					if (DocTitleProps.changed) {
						DocTitleProps.count = 0;
						document.title = DocTitleProps.originalTitle;
						DocTitleProps.changed = false;
					}
				}
			};

			var DefaultMaxVisible = exports.DefaultMaxVisible = 5;

			var Queues = exports.Queues = {
				global: {
					maxVisible: DefaultMaxVisible,
					queue: []
				}
			};

			var Store = exports.Store = {};

			var Defaults = exports.Defaults = {
				type: 'alert',
				layout: 'topRight',
				theme: 'mint',
				text: '',
				timeout: false,
				progressBar: true,
				closeWith: ['click'],
				animation: {
					open: 'noty_effects_open',
					close: 'noty_effects_close'
				},
				id: false,
				force: false,
				killer: false,
				queue: 'global',
				container: false,
				buttons: [],
				callbacks: {
					beforeShow: null,
					onShow: null,
					afterShow: null,
					onClose: null,
					afterClose: null,
					onClick: null,
					onHover: null,
					onTemplate: null
				},
				sounds: {
					sources: [],
					volume: 1,
					conditions: []
				},
				titleCount: {
					conditions: []
				},
				modal: false,
				visibilityControl: false

				/**
     * @param {string} queueName
     * @return {object}
     */
			};function getQueueCounts() {
				var queueName = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 'global';

				var count = 0;
				var max = DefaultMaxVisible;

				if (Queues.hasOwnProperty(queueName)) {
					max = Queues[queueName].maxVisible;
					Object.keys(Store).forEach(function (i) {
						if (Store[i].options.queue === queueName && !Store[i].closed) count++;
					});
				}

				return {
					current: count,
					maxVisible: max
				};
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function addToQueue(ref) {
				if (!Queues.hasOwnProperty(ref.options.queue)) {
					Queues[ref.options.queue] = { maxVisible: DefaultMaxVisible, queue: [] };
				}

				Queues[ref.options.queue].queue.push(ref);
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function removeFromQueue(ref) {
				if (Queues.hasOwnProperty(ref.options.queue)) {
					var queue = [];
					Object.keys(Queues[ref.options.queue].queue).forEach(function (i) {
						if (Queues[ref.options.queue].queue[i].id !== ref.id) {
							queue.push(Queues[ref.options.queue].queue[i]);
						}
					});
					Queues[ref.options.queue].queue = queue;
				}
			}

			/**
    * @param {string} queueName
    * @return {void}
    */
			function queueRender() {
				var queueName = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 'global';

				if (Queues.hasOwnProperty(queueName)) {
					var noty = Queues[queueName].queue.shift();

					if (noty) noty.show();
				}
			}

			/**
    * @return {void}
    */
			function queueRenderAll() {
				Object.keys(Queues).forEach(function (queueName) {
					queueRender(queueName);
				});
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function ghostFix(ref) {
				var ghostID = Utils.generateID('ghost');
				var ghost = document.createElement('div');
				ghost.setAttribute('id', ghostID);
				Utils.css(ghost, {
					height: Utils.outerHeight(ref.barDom) + 'px'
				});

				ref.barDom.insertAdjacentHTML('afterend', ghost.outerHTML);

				Utils.remove(ref.barDom);
				ghost = document.getElementById(ghostID);
				Utils.addClass(ghost, 'noty_fix_effects_height');
				Utils.addListener(ghost, Utils.animationEndEvents, function () {
					Utils.remove(ghost);
				});
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function build(ref) {
				findOrCreateContainer(ref);

				var markup = '<div class="noty_body">' + ref.options.text + '</div>' + buildButtons(ref) + '<div class="noty_progressbar"></div>';

				ref.barDom = document.createElement('div');
				ref.barDom.setAttribute('id', ref.id);
				Utils.addClass(ref.barDom, 'noty_bar noty_type__' + ref.options.type + ' noty_theme__' + ref.options.theme);

				ref.barDom.innerHTML = markup;

				fire(ref, 'onTemplate');
			}

			/**
    * @param {Noty} ref
    * @return {boolean}
    */
			function hasButtons(ref) {
				return !!(ref.options.buttons && Object.keys(ref.options.buttons).length);
			}

			/**
    * @param {Noty} ref
    * @return {string}
    */
			function buildButtons(ref) {
				if (hasButtons(ref)) {
					var buttons = document.createElement('div');
					Utils.addClass(buttons, 'noty_buttons');

					Object.keys(ref.options.buttons).forEach(function (key) {
						buttons.appendChild(ref.options.buttons[key].dom);
					});

					ref.options.buttons.forEach(function (btn) {
						buttons.appendChild(btn.dom);
					});
					return buttons.outerHTML;
				}
				return '';
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function handleModal(ref) {
				if (ref.options.modal) {
					if (DocModalCount === 0) {
						createModal(ref);
					}

					exports.DocModalCount = DocModalCount += 1;
				}
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function handleModalClose(ref) {
				if (ref.options.modal && DocModalCount > 0) {
					exports.DocModalCount = DocModalCount -= 1;

					if (DocModalCount <= 0) {
						var modal = document.querySelector('.noty_modal');

						if (modal) {
							Utils.removeClass(modal, 'noty_modal_open');
							Utils.addClass(modal, 'noty_modal_close');
							Utils.addListener(modal, Utils.animationEndEvents, function () {
								Utils.remove(modal);
							});
						}
					}
				}
			}

			/**
    * @return {void}
    */
			function createModal() {
				var body = document.querySelector('body');
				var modal = document.createElement('div');
				Utils.addClass(modal, 'noty_modal');
				body.insertBefore(modal, body.firstChild);
				Utils.addClass(modal, 'noty_modal_open');

				Utils.addListener(modal, Utils.animationEndEvents, function () {
					Utils.removeClass(modal, 'noty_modal_open');
				});
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function findOrCreateContainer(ref) {
				if (ref.options.container) {
					ref.layoutDom = document.querySelector(ref.options.container);
					return;
				}

				var layoutID = 'noty_layout__' + ref.options.layout;
				ref.layoutDom = document.querySelector('div#' + layoutID);

				if (!ref.layoutDom) {
					ref.layoutDom = document.createElement('div');
					ref.layoutDom.setAttribute('id', layoutID);
					ref.layoutDom.setAttribute('role', 'alert');
					ref.layoutDom.setAttribute('aria-live', 'polite');
					Utils.addClass(ref.layoutDom, 'noty_layout');
					document.querySelector('body').appendChild(ref.layoutDom);
				}
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function queueClose(ref) {
				if (ref.options.timeout) {
					if (ref.options.progressBar && ref.progressDom) {
						Utils.css(ref.progressDom, {
							transition: 'width ' + ref.options.timeout + 'ms linear',
							width: '0%'
						});
					}

					clearTimeout(ref.closeTimer);

					ref.closeTimer = setTimeout(function () {
						ref.close();
					}, ref.options.timeout);
				}
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function dequeueClose(ref) {
				if (ref.options.timeout && ref.closeTimer) {
					clearTimeout(ref.closeTimer);
					ref.closeTimer = -1;

					if (ref.options.progressBar && ref.progressDom) {
						Utils.css(ref.progressDom, {
							transition: 'width 0ms linear',
							width: '100%'
						});
					}
				}
			}

			/**
    * @param {Noty} ref
    * @param {string} eventName
    * @return {void}
    */
			function fire(ref, eventName) {
				if (ref.listeners.hasOwnProperty(eventName)) {
					ref.listeners[eventName].forEach(function (cb) {
						if (typeof cb === 'function') {
							cb.apply(ref);
						}
					});
				}
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function openFlow(ref) {
				fire(ref, 'afterShow');
				queueClose(ref);

				Utils.addListener(ref.barDom, 'mouseenter', function () {
					dequeueClose(ref);
				});

				Utils.addListener(ref.barDom, 'mouseleave', function () {
					queueClose(ref);
				});
			}

			/**
    * @param {Noty} ref
    * @return {void}
    */
			function closeFlow(ref) {
				delete Store[ref.id];
				ref.closing = false;
				fire(ref, 'afterClose');

				Utils.remove(ref.barDom);

				if (ref.layoutDom.querySelectorAll('.noty_bar').length === 0 && !ref.options.container) {
					Utils.remove(ref.layoutDom);
				}

				if (Utils.inArray('docVisible', ref.options.titleCount.conditions) || Utils.inArray('docHidden', ref.options.titleCount.conditions)) {
					docTitle.decrement();
				}

				queueRender(ref.options.queue);
			}

			/***/
		},
		/* 2 */
		/***/function (module, exports, __webpack_require__) {

			"use strict";

			Object.defineProperty(exports, "__esModule", {
				value: true
			});
			exports.NotyButton = undefined;

			var _utils = __webpack_require__(0);

			var Utils = _interopRequireWildcard(_utils);

			function _interopRequireWildcard(obj) {
				if (obj && obj.__esModule) {
					return obj;
				} else {
					var newObj = {};if (obj != null) {
						for (var key in obj) {
							if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key];
						}
					}newObj.default = obj;return newObj;
				}
			}

			function _classCallCheck(instance, Constructor) {
				if (!(instance instanceof Constructor)) {
					throw new TypeError("Cannot call a class as a function");
				}
			}

			var NotyButton = exports.NotyButton = function NotyButton(html, classes, cb) {
				var _this = this;

				var attributes = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : {};

				_classCallCheck(this, NotyButton);

				this.dom = document.createElement('button');
				this.dom.innerHTML = html;
				this.id = attributes.id = attributes.id || Utils.generateID('button');
				this.cb = cb;
				Object.keys(attributes).forEach(function (propertyName) {
					_this.dom.setAttribute(propertyName, attributes[propertyName]);
				});
				Utils.addClass(this.dom, classes || 'noty_btn');

				return this;
			};

			/***/
		},
		/* 3 */
		/***/function (module, exports, __webpack_require__) {

			"use strict";

			Object.defineProperty(exports, "__esModule", {
				value: true
			});

			var _createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
					}
				}return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
				};
			}();

			function _classCallCheck(instance, Constructor) {
				if (!(instance instanceof Constructor)) {
					throw new TypeError("Cannot call a class as a function");
				}
			}

			var Push = exports.Push = function () {
				function Push() {
					var workerPath = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : '/service-worker.js';

					_classCallCheck(this, Push);

					this.subData = {};
					this.workerPath = workerPath;
					this.listeners = {
						onPermissionGranted: [],
						onPermissionDenied: [],
						onSubscriptionSuccess: [],
						onSubscriptionCancel: [],
						onWorkerError: [],
						onWorkerSuccess: [],
						onWorkerNotSupported: []
					};
					return this;
				}

				/**
     * @param {string} eventName
     * @param {function} cb
     * @return {Push}
     */

				_createClass(Push, [{
					key: 'on',
					value: function on(eventName) {
						var cb = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : function () {};

						if (typeof cb === 'function' && this.listeners.hasOwnProperty(eventName)) {
							this.listeners[eventName].push(cb);
						}

						return this;
					}
				}, {
					key: 'fire',
					value: function fire(eventName) {
						var _this = this;

						var params = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : [];

						if (this.listeners.hasOwnProperty(eventName)) {
							this.listeners[eventName].forEach(function (cb) {
								if (typeof cb === 'function') {
									cb.apply(_this, params);
								}
							});
						}
					}
				}, {
					key: 'create',
					value: function create() {
						console.log('NOT IMPLEMENTED YET');
					}

					/**
      * @return {boolean}
      */

				}, {
					key: 'isSupported',
					value: function isSupported() {
						var result = false;

						try {
							result = window.Notification || window.webkitNotifications || navigator.mozNotification || window.external && window.external.msIsSiteMode() !== undefined;
						} catch (e) {}

						return result;
					}

					/**
      * @return {string}
      */

				}, {
					key: 'getPermissionStatus',
					value: function getPermissionStatus() {
						var perm = 'default';

						if (window.Notification && window.Notification.permissionLevel) {
							perm = window.Notification.permissionLevel;
						} else if (window.webkitNotifications && window.webkitNotifications.checkPermission) {
							switch (window.webkitNotifications.checkPermission()) {
								case 1:
									perm = 'default';
									break;
								case 0:
									perm = 'granted';
									break;
								default:
									perm = 'denied';
							}
						} else if (window.Notification && window.Notification.permission) {
							perm = window.Notification.permission;
						} else if (navigator.mozNotification) {
							perm = 'granted';
						} else if (window.external && window.external.msIsSiteMode() !== undefined) {
							perm = window.external.msIsSiteMode() ? 'granted' : 'default';
						}

						return perm.toString().toLowerCase();
					}

					/**
      * @return {string}
      */

				}, {
					key: 'getEndpoint',
					value: function getEndpoint(subscription) {
						var endpoint = subscription.endpoint;
						var subscriptionId = subscription.subscriptionId;

						// fix for Chrome < 45
						if (subscriptionId && endpoint.indexOf(subscriptionId) === -1) {
							endpoint += '/' + subscriptionId;
						}

						return endpoint;
					}

					/**
      * @return {boolean}
      */

				}, {
					key: 'isSWRegistered',
					value: function isSWRegistered() {
						try {
							return navigator.serviceWorker.controller.state === 'activated';
						} catch (e) {
							return false;
						}
					}

					/**
      * @return {void}
      */

				}, {
					key: 'unregisterWorker',
					value: function unregisterWorker() {
						var self = this;
						if ('serviceWorker' in navigator) {
							navigator.serviceWorker.getRegistrations().then(function (registrations) {
								var _iteratorNormalCompletion = true;
								var _didIteratorError = false;
								var _iteratorError = undefined;

								try {
									for (var _iterator = registrations[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
										var registration = _step.value;

										registration.unregister();
										self.fire('onSubscriptionCancel');
									}
								} catch (err) {
									_didIteratorError = true;
									_iteratorError = err;
								} finally {
									try {
										if (!_iteratorNormalCompletion && _iterator.return) {
											_iterator.return();
										}
									} finally {
										if (_didIteratorError) {
											throw _iteratorError;
										}
									}
								}
							});
						}
					}

					/**
      * @return {void}
      */

				}, {
					key: 'requestSubscription',
					value: function requestSubscription() {
						var _this2 = this;

						var userVisibleOnly = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : true;

						var self = this;
						var current = this.getPermissionStatus();
						var cb = function cb(result) {
							if (result === 'granted') {
								_this2.fire('onPermissionGranted');

								if ('serviceWorker' in navigator) {
									navigator.serviceWorker.register(_this2.workerPath).then(function () {
										navigator.serviceWorker.ready.then(function (serviceWorkerRegistration) {
											self.fire('onWorkerSuccess');
											serviceWorkerRegistration.pushManager.subscribe({
												userVisibleOnly: userVisibleOnly
											}).then(function (subscription) {
												var key = subscription.getKey('p256dh');
												var token = subscription.getKey('auth');

												self.subData = {
													endpoint: self.getEndpoint(subscription),
													p256dh: key ? window.btoa(String.fromCharCode.apply(null, new Uint8Array(key))) : null,
													auth: token ? window.btoa(String.fromCharCode.apply(null, new Uint8Array(token))) : null
												};

												self.fire('onSubscriptionSuccess', [self.subData]);
											}).catch(function (err) {
												self.fire('onWorkerError', [err]);
											});
										});
									});
								} else {
									self.fire('onWorkerNotSupported');
								}
							} else if (result === 'denied') {
								_this2.fire('onPermissionDenied');
								_this2.unregisterWorker();
							}
						};

						if (current === 'default') {
							if (window.Notification && window.Notification.requestPermission) {
								window.Notification.requestPermission(cb);
							} else if (window.webkitNotifications && window.webkitNotifications.checkPermission) {
								window.webkitNotifications.requestPermission(cb);
							}
						} else {
							cb(current);
						}
					}
				}]);

				return Push;
			}();

			/***/
		},
		/* 4 */
		/***/function (module, exports, __webpack_require__) {

			/* WEBPACK VAR INJECTION */(function (process, global) {
				var require; /*!
                 * @overview es6-promise - a tiny implementation of Promises/A+.
                 * @copyright Copyright (c) 2014 Yehuda Katz, Tom Dale, Stefan Penner and contributors (Conversion to ES6 API by Jake Archibald)
                 * @license   Licensed under MIT license
                 *            See https://raw.githubusercontent.com/stefanpenner/es6-promise/master/LICENSE
                 * @version   4.1.1
                 */

				(function (global, factory) {
					true ? module.exports = factory() : typeof define === 'function' && define.amd ? define(factory) : global.ES6Promise = factory();
				})(this, function () {
					'use strict';

					function objectOrFunction(x) {
						var type = typeof x === 'undefined' ? 'undefined' : _typeof2(x);
						return x !== null && (type === 'object' || type === 'function');
					}

					function isFunction(x) {
						return typeof x === 'function';
					}

					var _isArray = undefined;
					if (Array.isArray) {
						_isArray = Array.isArray;
					} else {
						_isArray = function _isArray(x) {
							return Object.prototype.toString.call(x) === '[object Array]';
						};
					}

					var isArray = _isArray;

					var len = 0;
					var vertxNext = undefined;
					var customSchedulerFn = undefined;

					var asap = function asap(callback, arg) {
						queue[len] = callback;
						queue[len + 1] = arg;
						len += 2;
						if (len === 2) {
							// If len is 2, that means that we need to schedule an async flush.
							// If additional callbacks are queued before the queue is flushed, they
							// will be processed by this flush that we are scheduling.
							if (customSchedulerFn) {
								customSchedulerFn(flush);
							} else {
								scheduleFlush();
							}
						}
					};

					function setScheduler(scheduleFn) {
						customSchedulerFn = scheduleFn;
					}

					function setAsap(asapFn) {
						asap = asapFn;
					}

					var browserWindow = typeof window !== 'undefined' ? window : undefined;
					var browserGlobal = browserWindow || {};
					var BrowserMutationObserver = browserGlobal.MutationObserver || browserGlobal.WebKitMutationObserver;
					var isNode = typeof self === 'undefined' && typeof process !== 'undefined' && {}.toString.call(process) === '[object process]';

					// test for web worker but not in IE10
					var isWorker = typeof Uint8ClampedArray !== 'undefined' && typeof importScripts !== 'undefined' && typeof MessageChannel !== 'undefined';

					// node
					function useNextTick() {
						// node version 0.10.x displays a deprecation warning when nextTick is used recursively
						// see https://github.com/cujojs/when/issues/410 for details
						return function () {
							return process.nextTick(flush);
						};
					}

					// vertx
					function useVertxTimer() {
						if (typeof vertxNext !== 'undefined') {
							return function () {
								vertxNext(flush);
							};
						}

						return useSetTimeout();
					}

					function useMutationObserver() {
						var iterations = 0;
						var observer = new BrowserMutationObserver(flush);
						var node = document.createTextNode('');
						observer.observe(node, { characterData: true });

						return function () {
							node.data = iterations = ++iterations % 2;
						};
					}

					// web worker
					function useMessageChannel() {
						var channel = new MessageChannel();
						channel.port1.onmessage = flush;
						return function () {
							return channel.port2.postMessage(0);
						};
					}

					function useSetTimeout() {
						// Store setTimeout reference so es6-promise will be unaffected by
						// other code modifying setTimeout (like sinon.useFakeTimers())
						var globalSetTimeout = setTimeout;
						return function () {
							return globalSetTimeout(flush, 1);
						};
					}

					var queue = new Array(1000);
					function flush() {
						for (var i = 0; i < len; i += 2) {
							var callback = queue[i];
							var arg = queue[i + 1];

							callback(arg);

							queue[i] = undefined;
							queue[i + 1] = undefined;
						}

						len = 0;
					}

					function attemptVertx() {
						try {
							var r = require;
							var vertx = __webpack_require__(9);
							vertxNext = vertx.runOnLoop || vertx.runOnContext;
							return useVertxTimer();
						} catch (e) {
							return useSetTimeout();
						}
					}

					var scheduleFlush = undefined;
					// Decide what async method to use to triggering processing of queued callbacks:
					if (isNode) {
						scheduleFlush = useNextTick();
					} else if (BrowserMutationObserver) {
						scheduleFlush = useMutationObserver();
					} else if (isWorker) {
						scheduleFlush = useMessageChannel();
					} else if (browserWindow === undefined && "function" === 'function') {
						scheduleFlush = attemptVertx();
					} else {
						scheduleFlush = useSetTimeout();
					}

					function then(onFulfillment, onRejection) {
						var _arguments = arguments;

						var parent = this;

						var child = new this.constructor(noop);

						if (child[PROMISE_ID] === undefined) {
							makePromise(child);
						}

						var _state = parent._state;

						if (_state) {
							(function () {
								var callback = _arguments[_state - 1];
								asap(function () {
									return invokeCallback(_state, child, callback, parent._result);
								});
							})();
						} else {
							subscribe(parent, child, onFulfillment, onRejection);
						}

						return child;
					}

					/**
        `Promise.resolve` returns a promise that will become resolved with the
        passed `value`. It is shorthand for the following:
         ```javascript
        let promise = new Promise(function(resolve, reject){
        resolve(1);
        });
         promise.then(function(value){
        // value === 1
        });
        ```
         Instead of writing the above, your code now simply becomes the following:
         ```javascript
        let promise = Promise.resolve(1);
         promise.then(function(value){
        // value === 1
        });
        ```
         @method resolve
        @static
        @param {Any} value value that the returned promise will be resolved with
        Useful for tooling.
        @return {Promise} a promise that will become fulfilled with the given
        `value`
     */
					function resolve$1(object) {
						/*jshint validthis:true */
						var Constructor = this;

						if (object && (typeof object === 'undefined' ? 'undefined' : _typeof2(object)) === 'object' && object.constructor === Constructor) {
							return object;
						}

						var promise = new Constructor(noop);
						resolve(promise, object);
						return promise;
					}

					var PROMISE_ID = Math.random().toString(36).substring(16);

					function noop() {}

					var PENDING = void 0;
					var FULFILLED = 1;
					var REJECTED = 2;

					var GET_THEN_ERROR = new ErrorObject();

					function selfFulfillment() {
						return new TypeError("You cannot resolve a promise with itself");
					}

					function cannotReturnOwn() {
						return new TypeError('A promises callback cannot return that same promise.');
					}

					function getThen(promise) {
						try {
							return promise.then;
						} catch (error) {
							GET_THEN_ERROR.error = error;
							return GET_THEN_ERROR;
						}
					}

					function tryThen(then$$1, value, fulfillmentHandler, rejectionHandler) {
						try {
							then$$1.call(value, fulfillmentHandler, rejectionHandler);
						} catch (e) {
							return e;
						}
					}

					function handleForeignThenable(promise, thenable, then$$1) {
						asap(function (promise) {
							var sealed = false;
							var error = tryThen(then$$1, thenable, function (value) {
								if (sealed) {
									return;
								}
								sealed = true;
								if (thenable !== value) {
									resolve(promise, value);
								} else {
									fulfill(promise, value);
								}
							}, function (reason) {
								if (sealed) {
									return;
								}
								sealed = true;

								reject(promise, reason);
							}, 'Settle: ' + (promise._label || ' unknown promise'));

							if (!sealed && error) {
								sealed = true;
								reject(promise, error);
							}
						}, promise);
					}

					function handleOwnThenable(promise, thenable) {
						if (thenable._state === FULFILLED) {
							fulfill(promise, thenable._result);
						} else if (thenable._state === REJECTED) {
							reject(promise, thenable._result);
						} else {
							subscribe(thenable, undefined, function (value) {
								return resolve(promise, value);
							}, function (reason) {
								return reject(promise, reason);
							});
						}
					}

					function handleMaybeThenable(promise, maybeThenable, then$$1) {
						if (maybeThenable.constructor === promise.constructor && then$$1 === then && maybeThenable.constructor.resolve === resolve$1) {
							handleOwnThenable(promise, maybeThenable);
						} else {
							if (then$$1 === GET_THEN_ERROR) {
								reject(promise, GET_THEN_ERROR.error);
								GET_THEN_ERROR.error = null;
							} else if (then$$1 === undefined) {
								fulfill(promise, maybeThenable);
							} else if (isFunction(then$$1)) {
								handleForeignThenable(promise, maybeThenable, then$$1);
							} else {
								fulfill(promise, maybeThenable);
							}
						}
					}

					function resolve(promise, value) {
						if (promise === value) {
							reject(promise, selfFulfillment());
						} else if (objectOrFunction(value)) {
							handleMaybeThenable(promise, value, getThen(value));
						} else {
							fulfill(promise, value);
						}
					}

					function publishRejection(promise) {
						if (promise._onerror) {
							promise._onerror(promise._result);
						}

						publish(promise);
					}

					function fulfill(promise, value) {
						if (promise._state !== PENDING) {
							return;
						}

						promise._result = value;
						promise._state = FULFILLED;

						if (promise._subscribers.length !== 0) {
							asap(publish, promise);
						}
					}

					function reject(promise, reason) {
						if (promise._state !== PENDING) {
							return;
						}
						promise._state = REJECTED;
						promise._result = reason;

						asap(publishRejection, promise);
					}

					function subscribe(parent, child, onFulfillment, onRejection) {
						var _subscribers = parent._subscribers;
						var length = _subscribers.length;

						parent._onerror = null;

						_subscribers[length] = child;
						_subscribers[length + FULFILLED] = onFulfillment;
						_subscribers[length + REJECTED] = onRejection;

						if (length === 0 && parent._state) {
							asap(publish, parent);
						}
					}

					function publish(promise) {
						var subscribers = promise._subscribers;
						var settled = promise._state;

						if (subscribers.length === 0) {
							return;
						}

						var child = undefined,
						    callback = undefined,
						    detail = promise._result;

						for (var i = 0; i < subscribers.length; i += 3) {
							child = subscribers[i];
							callback = subscribers[i + settled];

							if (child) {
								invokeCallback(settled, child, callback, detail);
							} else {
								callback(detail);
							}
						}

						promise._subscribers.length = 0;
					}

					function ErrorObject() {
						this.error = null;
					}

					var TRY_CATCH_ERROR = new ErrorObject();

					function tryCatch(callback, detail) {
						try {
							return callback(detail);
						} catch (e) {
							TRY_CATCH_ERROR.error = e;
							return TRY_CATCH_ERROR;
						}
					}

					function invokeCallback(settled, promise, callback, detail) {
						var hasCallback = isFunction(callback),
						    value = undefined,
						    error = undefined,
						    succeeded = undefined,
						    failed = undefined;

						if (hasCallback) {
							value = tryCatch(callback, detail);

							if (value === TRY_CATCH_ERROR) {
								failed = true;
								error = value.error;
								value.error = null;
							} else {
								succeeded = true;
							}

							if (promise === value) {
								reject(promise, cannotReturnOwn());
								return;
							}
						} else {
							value = detail;
							succeeded = true;
						}

						if (promise._state !== PENDING) {
							// noop
						} else if (hasCallback && succeeded) {
							resolve(promise, value);
						} else if (failed) {
							reject(promise, error);
						} else if (settled === FULFILLED) {
							fulfill(promise, value);
						} else if (settled === REJECTED) {
							reject(promise, value);
						}
					}

					function initializePromise(promise, resolver) {
						try {
							resolver(function resolvePromise(value) {
								resolve(promise, value);
							}, function rejectPromise(reason) {
								reject(promise, reason);
							});
						} catch (e) {
							reject(promise, e);
						}
					}

					var id = 0;
					function nextId() {
						return id++;
					}

					function makePromise(promise) {
						promise[PROMISE_ID] = id++;
						promise._state = undefined;
						promise._result = undefined;
						promise._subscribers = [];
					}

					function Enumerator$1(Constructor, input) {
						this._instanceConstructor = Constructor;
						this.promise = new Constructor(noop);

						if (!this.promise[PROMISE_ID]) {
							makePromise(this.promise);
						}

						if (isArray(input)) {
							this.length = input.length;
							this._remaining = input.length;

							this._result = new Array(this.length);

							if (this.length === 0) {
								fulfill(this.promise, this._result);
							} else {
								this.length = this.length || 0;
								this._enumerate(input);
								if (this._remaining === 0) {
									fulfill(this.promise, this._result);
								}
							}
						} else {
							reject(this.promise, validationError());
						}
					}

					function validationError() {
						return new Error('Array Methods must be provided an Array');
					}

					Enumerator$1.prototype._enumerate = function (input) {
						for (var i = 0; this._state === PENDING && i < input.length; i++) {
							this._eachEntry(input[i], i);
						}
					};

					Enumerator$1.prototype._eachEntry = function (entry, i) {
						var c = this._instanceConstructor;
						var resolve$$1 = c.resolve;

						if (resolve$$1 === resolve$1) {
							var _then = getThen(entry);

							if (_then === then && entry._state !== PENDING) {
								this._settledAt(entry._state, i, entry._result);
							} else if (typeof _then !== 'function') {
								this._remaining--;
								this._result[i] = entry;
							} else if (c === Promise$2) {
								var promise = new c(noop);
								handleMaybeThenable(promise, entry, _then);
								this._willSettleAt(promise, i);
							} else {
								this._willSettleAt(new c(function (resolve$$1) {
									return resolve$$1(entry);
								}), i);
							}
						} else {
							this._willSettleAt(resolve$$1(entry), i);
						}
					};

					Enumerator$1.prototype._settledAt = function (state, i, value) {
						var promise = this.promise;

						if (promise._state === PENDING) {
							this._remaining--;

							if (state === REJECTED) {
								reject(promise, value);
							} else {
								this._result[i] = value;
							}
						}

						if (this._remaining === 0) {
							fulfill(promise, this._result);
						}
					};

					Enumerator$1.prototype._willSettleAt = function (promise, i) {
						var enumerator = this;

						subscribe(promise, undefined, function (value) {
							return enumerator._settledAt(FULFILLED, i, value);
						}, function (reason) {
							return enumerator._settledAt(REJECTED, i, reason);
						});
					};

					/**
        `Promise.all` accepts an array of promises, and returns a new promise which
        is fulfilled with an array of fulfillment values for the passed promises, or
        rejected with the reason of the first passed promise to be rejected. It casts all
        elements of the passed iterable to promises as it runs this algorithm.
         Example:
         ```javascript
        let promise1 = resolve(1);
        let promise2 = resolve(2);
        let promise3 = resolve(3);
        let promises = [ promise1, promise2, promise3 ];
         Promise.all(promises).then(function(array){
        // The array here would be [ 1, 2, 3 ];
        });
        ```
         If any of the `promises` given to `all` are rejected, the first promise
        that is rejected will be given as an argument to the returned promises's
        rejection handler. For example:
         Example:
         ```javascript
        let promise1 = resolve(1);
        let promise2 = reject(new Error("2"));
        let promise3 = reject(new Error("3"));
        let promises = [ promise1, promise2, promise3 ];
         Promise.all(promises).then(function(array){
        // Code here never runs because there are rejected promises!
        }, function(error) {
        // error.message === "2"
        });
        ```
         @method all
        @static
        @param {Array} entries array of promises
        @param {String} label optional string for labeling the promise.
        Useful for tooling.
        @return {Promise} promise that is fulfilled when all `promises` have been
        fulfilled, or rejected if any of them become rejected.
        @static
     */
					function all$1(entries) {
						return new Enumerator$1(this, entries).promise;
					}

					/**
        `Promise.race` returns a new promise which is settled in the same way as the
        first passed promise to settle.
         Example:
         ```javascript
        let promise1 = new Promise(function(resolve, reject){
        setTimeout(function(){
        resolve('promise 1');
        }, 200);
        });
         let promise2 = new Promise(function(resolve, reject){
        setTimeout(function(){
        resolve('promise 2');
        }, 100);
        });
         Promise.race([promise1, promise2]).then(function(result){
        // result === 'promise 2' because it was resolved before promise1
        // was resolved.
        });
        ```
         `Promise.race` is deterministic in that only the state of the first
        settled promise matters. For example, even if other promises given to the
        `promises` array argument are resolved, but the first settled promise has
        become rejected before the other promises became fulfilled, the returned
        promise will become rejected:
         ```javascript
        let promise1 = new Promise(function(resolve, reject){
        setTimeout(function(){
        resolve('promise 1');
        }, 200);
        });
         let promise2 = new Promise(function(resolve, reject){
        setTimeout(function(){
        reject(new Error('promise 2'));
        }, 100);
        });
         Promise.race([promise1, promise2]).then(function(result){
        // Code here never runs
        }, function(reason){
        // reason.message === 'promise 2' because promise 2 became rejected before
        // promise 1 became fulfilled
        });
        ```
         An example real-world use case is implementing timeouts:
         ```javascript
        Promise.race([ajax('foo.json'), timeout(5000)])
        ```
         @method race
        @static
        @param {Array} promises array of promises to observe
        Useful for tooling.
        @return {Promise} a promise which settles in the same way as the first passed
        promise to settle.
     */
					function race$1(entries) {
						/*jshint validthis:true */
						var Constructor = this;

						if (!isArray(entries)) {
							return new Constructor(function (_, reject) {
								return reject(new TypeError('You must pass an array to race.'));
							});
						} else {
							return new Constructor(function (resolve, reject) {
								var length = entries.length;
								for (var i = 0; i < length; i++) {
									Constructor.resolve(entries[i]).then(resolve, reject);
								}
							});
						}
					}

					/**
        `Promise.reject` returns a promise rejected with the passed `reason`.
        It is shorthand for the following:
         ```javascript
        let promise = new Promise(function(resolve, reject){
        reject(new Error('WHOOPS'));
        });
         promise.then(function(value){
        // Code here doesn't run because the promise is rejected!
        }, function(reason){
        // reason.message === 'WHOOPS'
        });
        ```
         Instead of writing the above, your code now simply becomes the following:
         ```javascript
        let promise = Promise.reject(new Error('WHOOPS'));
         promise.then(function(value){
        // Code here doesn't run because the promise is rejected!
        }, function(reason){
        // reason.message === 'WHOOPS'
        });
        ```
         @method reject
        @static
        @param {Any} reason value that the returned promise will be rejected with.
        Useful for tooling.
        @return {Promise} a promise rejected with the given `reason`.
     */
					function reject$1(reason) {
						/*jshint validthis:true */
						var Constructor = this;
						var promise = new Constructor(noop);
						reject(promise, reason);
						return promise;
					}

					function needsResolver() {
						throw new TypeError('You must pass a resolver function as the first argument to the promise constructor');
					}

					function needsNew() {
						throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.");
					}

					/**
        Promise objects represent the eventual result of an asynchronous operation. The
        primary way of interacting with a promise is through its `then` method, which
        registers callbacks to receive either a promise's eventual value or the reason
        why the promise cannot be fulfilled.
         Terminology
        -----------
         - `promise` is an object or function with a `then` method whose behavior conforms to this specification.
        - `thenable` is an object or function that defines a `then` method.
        - `value` is any legal JavaScript value (including undefined, a thenable, or a promise).
        - `exception` is a value that is thrown using the throw statement.
        - `reason` is a value that indicates why a promise was rejected.
        - `settled` the final resting state of a promise, fulfilled or rejected.
         A promise can be in one of three states: pending, fulfilled, or rejected.
         Promises that are fulfilled have a fulfillment value and are in the fulfilled
        state.  Promises that are rejected have a rejection reason and are in the
        rejected state.  A fulfillment value is never a thenable.
         Promises can also be said to *resolve* a value.  If this value is also a
        promise, then the original promise's settled state will match the value's
        settled state.  So a promise that *resolves* a promise that rejects will
        itself reject, and a promise that *resolves* a promise that fulfills will
        itself fulfill.
          Basic Usage:
        ------------
         ```js
        let promise = new Promise(function(resolve, reject) {
        // on success
        resolve(value);
         // on failure
        reject(reason);
        });
         promise.then(function(value) {
        // on fulfillment
        }, function(reason) {
        // on rejection
        });
        ```
         Advanced Usage:
        ---------------
         Promises shine when abstracting away asynchronous interactions such as
        `XMLHttpRequest`s.
         ```js
        function getJSON(url) {
        return new Promise(function(resolve, reject){
        let xhr = new XMLHttpRequest();
         xhr.open('GET', url);
        xhr.onreadystatechange = handler;
        xhr.responseType = 'json';
        xhr.setRequestHeader('Accept', 'application/json');
        xhr.send();
         function handler() {
        if (this.readyState === this.DONE) {
        if (this.status === 200) {
        resolve(this.response);
        } else {
        reject(new Error('getJSON: `' + url + '` failed with status: [' + this.status + ']'));
        }
        }
        };
        });
        }
         getJSON('/posts.json').then(function(json) {
        // on fulfillment
        }, function(reason) {
        // on rejection
        });
        ```
         Unlike callbacks, promises are great composable primitives.
         ```js
        Promise.all([
        getJSON('/posts'),
        getJSON('/comments')
        ]).then(function(values){
        values[0] // => postsJSON
        values[1] // => commentsJSON
         return values;
        });
        ```
         @class Promise
        @param {function} resolver
        Useful for tooling.
        @constructor
     */
					function Promise$2(resolver) {
						this[PROMISE_ID] = nextId();
						this._result = this._state = undefined;
						this._subscribers = [];

						if (noop !== resolver) {
							typeof resolver !== 'function' && needsResolver();
							this instanceof Promise$2 ? initializePromise(this, resolver) : needsNew();
						}
					}

					Promise$2.all = all$1;
					Promise$2.race = race$1;
					Promise$2.resolve = resolve$1;
					Promise$2.reject = reject$1;
					Promise$2._setScheduler = setScheduler;
					Promise$2._setAsap = setAsap;
					Promise$2._asap = asap;

					Promise$2.prototype = {
						constructor: Promise$2,

						/**
      The primary way of interacting with a promise is through its `then` method,
      which registers callbacks to receive either a promise's eventual value or the
      reason why the promise cannot be fulfilled.
      									 ```js
      findUser().then(function(user){
      // user is available
      }, function(reason){
      // user is unavailable, and you are given the reason why
      });
      ```
      									 Chaining
      --------
      									 The return value of `then` is itself a promise.  This second, 'downstream'
      promise is resolved with the return value of the first promise's fulfillment
      or rejection handler, or rejected if the handler throws an exception.
      									 ```js
      findUser().then(function (user) {
      return user.name;
      }, function (reason) {
      return 'default name';
      }).then(function (userName) {
      // If `findUser` fulfilled, `userName` will be the user's name, otherwise it
      // will be `'default name'`
      });
      									 findUser().then(function (user) {
      throw new Error('Found user, but still unhappy');
      }, function (reason) {
      throw new Error('`findUser` rejected and we're unhappy');
      }).then(function (value) {
      // never reached
      }, function (reason) {
      // if `findUser` fulfilled, `reason` will be 'Found user, but still unhappy'.
      // If `findUser` rejected, `reason` will be '`findUser` rejected and we're unhappy'.
      });
      ```
      If the downstream promise does not specify a rejection handler, rejection reasons will be propagated further downstream.
      									 ```js
      findUser().then(function (user) {
      throw new PedagogicalException('Upstream error');
      }).then(function (value) {
      // never reached
      }).then(function (value) {
      // never reached
      }, function (reason) {
      // The `PedgagocialException` is propagated all the way down to here
      });
      ```
      									 Assimilation
      ------------
      									 Sometimes the value you want to propagate to a downstream promise can only be
      retrieved asynchronously. This can be achieved by returning a promise in the
      fulfillment or rejection handler. The downstream promise will then be pending
      until the returned promise is settled. This is called *assimilation*.
      									 ```js
      findUser().then(function (user) {
      return findCommentsByAuthor(user);
      }).then(function (comments) {
      // The user's comments are now available
      });
      ```
      									 If the assimliated promise rejects, then the downstream promise will also reject.
      									 ```js
      findUser().then(function (user) {
      return findCommentsByAuthor(user);
      }).then(function (comments) {
      // If `findCommentsByAuthor` fulfills, we'll have the value here
      }, function (reason) {
      // If `findCommentsByAuthor` rejects, we'll have the reason here
      });
      ```
      									 Simple Example
      --------------
      									 Synchronous Example
      									 ```javascript
      let result;
      									 try {
      result = findResult();
      // success
      } catch(reason) {
      // failure
      }
      ```
      									 Errback Example
      									 ```js
      findResult(function(result, err){
      if (err) {
      // failure
      } else {
      // success
      }
      });
      ```
      									 Promise Example;
      									 ```javascript
      findResult().then(function(result){
      // success
      }, function(reason){
      // failure
      });
      ```
      									 Advanced Example
      --------------
      									 Synchronous Example
      									 ```javascript
      let author, books;
      									 try {
      author = findAuthor();
      books  = findBooksByAuthor(author);
      // success
      } catch(reason) {
      // failure
      }
      ```
      									 Errback Example
      									 ```js
      									 function foundBooks(books) {
      									 }
      									 function failure(reason) {
      									 }
      									 findAuthor(function(author, err){
      if (err) {
      failure(err);
      // failure
      } else {
      try {
      findBoooksByAuthor(author, function(books, err) {
      if (err) {
      failure(err);
      } else {
      try {
      foundBooks(books);
      } catch(reason) {
      failure(reason);
      }
      }
      });
      } catch(error) {
      failure(err);
      }
      // success
      }
      });
      ```
      									 Promise Example;
      									 ```javascript
      findAuthor().
      then(findBooksByAuthor).
      then(function(books){
      // found books
      }).catch(function(reason){
      // something went wrong
      });
      ```
      									 @method then
      @param {Function} onFulfilled
      @param {Function} onRejected
      Useful for tooling.
      @return {Promise}
      */
						then: then,

						/**
      `catch` is simply sugar for `then(undefined, onRejection)` which makes it the same
      as the catch block of a try/catch statement.
      									 ```js
      function findAuthor(){
      throw new Error('couldn't find that author');
      }
      									 // synchronous
      try {
      findAuthor();
      } catch(reason) {
      // something went wrong
      }
      									 // async with promises
      findAuthor().catch(function(reason){
      // something went wrong
      });
      ```
      									 @method catch
      @param {Function} onRejection
      Useful for tooling.
      @return {Promise}
      */
						'catch': function _catch(onRejection) {
							return this.then(null, onRejection);
						}
					};

					/*global self*/
					function polyfill$1() {
						var local = undefined;

						if (typeof global !== 'undefined') {
							local = global;
						} else if (typeof self !== 'undefined') {
							local = self;
						} else {
							try {
								local = Function('return this')();
							} catch (e) {
								throw new Error('polyfill failed because global object is unavailable in this environment');
							}
						}

						var P = local.Promise;

						if (P) {
							var promiseToString = null;
							try {
								promiseToString = Object.prototype.toString.call(P.resolve());
							} catch (e) {
								// silently ignored
							}

							if (promiseToString === '[object Promise]' && !P.cast) {
								return;
							}
						}

						local.Promise = Promise$2;
					}

					// Strange compat..
					Promise$2.polyfill = polyfill$1;
					Promise$2.Promise = Promise$2;

					return Promise$2;
				});

				//# sourceMappingURL=es6-promise.map

				/* WEBPACK VAR INJECTION */
			}).call(exports, __webpack_require__(7), __webpack_require__(8));

			/***/
		},
		/* 5 */
		/***/function (module, exports) {

			// removed by extract-text-webpack-plugin

			/***/},
		/* 6 */
		/***/function (module, exports, __webpack_require__) {

			"use strict";

			Object.defineProperty(exports, "__esModule", {
				value: true
			});

			var _createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
					}
				}return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
				};
			}(); /* global VERSION */

			__webpack_require__(5);

			var _es6Promise = __webpack_require__(4);

			var _es6Promise2 = _interopRequireDefault(_es6Promise);

			var _utils = __webpack_require__(0);

			var Utils = _interopRequireWildcard(_utils);

			var _api = __webpack_require__(1);

			var API = _interopRequireWildcard(_api);

			var _button = __webpack_require__(2);

			var _push = __webpack_require__(3);

			function _interopRequireWildcard(obj) {
				if (obj && obj.__esModule) {
					return obj;
				} else {
					var newObj = {};if (obj != null) {
						for (var key in obj) {
							if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key];
						}
					}newObj.default = obj;return newObj;
				}
			}

			function _interopRequireDefault(obj) {
				return obj && obj.__esModule ? obj : { default: obj };
			}

			function _classCallCheck(instance, Constructor) {
				if (!(instance instanceof Constructor)) {
					throw new TypeError("Cannot call a class as a function");
				}
			}

			var Noty = function () {
				/**
     * @param {object} options
     * @return {Noty}
     */
				function Noty() {
					var options = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : {};

					_classCallCheck(this, Noty);

					this.options = Utils.deepExtend({}, API.Defaults, options);

					if (API.Store[this.options.id]) {
						return API.Store[this.options.id];
					}

					this.id = this.options.id || Utils.generateID('bar');
					this.closeTimer = -1;
					this.barDom = null;
					this.layoutDom = null;
					this.progressDom = null;
					this.showing = false;
					this.shown = false;
					this.closed = false;
					this.closing = false;
					this.killable = this.options.timeout || this.options.closeWith.length > 0;
					this.hasSound = this.options.sounds.sources.length > 0;
					this.soundPlayed = false;
					this.listeners = {
						beforeShow: [],
						onShow: [],
						afterShow: [],
						onClose: [],
						afterClose: [],
						onClick: [],
						onHover: [],
						onTemplate: []
					};
					this.promises = {
						show: null,
						close: null
					};
					this.on('beforeShow', this.options.callbacks.beforeShow);
					this.on('onShow', this.options.callbacks.onShow);
					this.on('afterShow', this.options.callbacks.afterShow);
					this.on('onClose', this.options.callbacks.onClose);
					this.on('afterClose', this.options.callbacks.afterClose);
					this.on('onClick', this.options.callbacks.onClick);
					this.on('onHover', this.options.callbacks.onHover);
					this.on('onTemplate', this.options.callbacks.onTemplate);

					return this;
				}

				/**
     * @param {string} eventName
     * @param {function} cb
     * @return {Noty}
     */

				_createClass(Noty, [{
					key: 'on',
					value: function on(eventName) {
						var cb = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : function () {};

						if (typeof cb === 'function' && this.listeners.hasOwnProperty(eventName)) {
							this.listeners[eventName].push(cb);
						}

						return this;
					}

					/**
      * @return {Noty}
      */

				}, {
					key: 'show',
					value: function show() {
						var _this = this;

						if (this.showing || this.shown) {
							return this; // preventing multiple show
						}

						if (this.options.killer === true) {
							Noty.closeAll();
						} else if (typeof this.options.killer === 'string') {
							Noty.closeAll(this.options.killer);
						}

						var queueCounts = API.getQueueCounts(this.options.queue);

						if (queueCounts.current >= queueCounts.maxVisible || API.PageHidden && this.options.visibilityControl) {
							API.addToQueue(this);

							if (API.PageHidden && this.hasSound && Utils.inArray('docHidden', this.options.sounds.conditions)) {
								Utils.createAudioElements(this);
							}

							if (API.PageHidden && Utils.inArray('docHidden', this.options.titleCount.conditions)) {
								API.docTitle.increment();
							}

							return this;
						}

						API.Store[this.id] = this;

						API.fire(this, 'beforeShow');

						this.showing = true;

						if (this.closing) {
							this.showing = false;
							return this;
						}

						API.build(this);
						API.handleModal(this);

						if (this.options.force) {
							this.layoutDom.insertBefore(this.barDom, this.layoutDom.firstChild);
						} else {
							this.layoutDom.appendChild(this.barDom);
						}

						if (this.hasSound && !this.soundPlayed && Utils.inArray('docVisible', this.options.sounds.conditions)) {
							Utils.createAudioElements(this);
						}

						if (Utils.inArray('docVisible', this.options.titleCount.conditions)) {
							API.docTitle.increment();
						}

						this.shown = true;
						this.closed = false;

						// bind button events if any
						if (API.hasButtons(this)) {
							Object.keys(this.options.buttons).forEach(function (key) {
								var btn = _this.barDom.querySelector('#' + _this.options.buttons[key].id);
								Utils.addListener(btn, 'click', function (e) {
									Utils.stopPropagation(e);
									_this.options.buttons[key].cb(_this);
								});
							});
						}

						this.progressDom = this.barDom.querySelector('.noty_progressbar');

						if (Utils.inArray('click', this.options.closeWith)) {
							Utils.addClass(this.barDom, 'noty_close_with_click');
							Utils.addListener(this.barDom, 'click', function (e) {
								Utils.stopPropagation(e);
								API.fire(_this, 'onClick');
								_this.close();
							}, false);
						}

						Utils.addListener(this.barDom, 'mouseenter', function () {
							API.fire(_this, 'onHover');
						}, false);

						if (this.options.timeout) Utils.addClass(this.barDom, 'noty_has_timeout');
						if (this.options.progressBar) {
							Utils.addClass(this.barDom, 'noty_has_progressbar');
						}

						if (Utils.inArray('button', this.options.closeWith)) {
							Utils.addClass(this.barDom, 'noty_close_with_button');

							var closeButton = document.createElement('div');
							Utils.addClass(closeButton, 'noty_close_button');
							closeButton.innerHTML = '×';
							this.barDom.appendChild(closeButton);

							Utils.addListener(closeButton, 'click', function (e) {
								Utils.stopPropagation(e);
								_this.close();
							}, false);
						}

						API.fire(this, 'onShow');

						if (this.options.animation.open === null) {
							this.promises.show = new _es6Promise2.default(function (resolve) {
								resolve();
							});
						} else if (typeof this.options.animation.open === 'function') {
							this.promises.show = new _es6Promise2.default(this.options.animation.open.bind(this));
						} else {
							Utils.addClass(this.barDom, this.options.animation.open);
							this.promises.show = new _es6Promise2.default(function (resolve) {
								Utils.addListener(_this.barDom, Utils.animationEndEvents, function () {
									Utils.removeClass(_this.barDom, _this.options.animation.open);
									resolve();
								});
							});
						}

						this.promises.show.then(function () {
							var _t = _this;
							setTimeout(function () {
								API.openFlow(_t);
							}, 100);
						});

						return this;
					}

					/**
      * @return {Noty}
      */

				}, {
					key: 'stop',
					value: function stop() {
						API.dequeueClose(this);
						return this;
					}

					/**
      * @return {Noty}
      */

				}, {
					key: 'resume',
					value: function resume() {
						API.queueClose(this);
						return this;
					}

					/**
      * @param {int|boolean} ms
      * @return {Noty}
      */

				}, {
					key: 'setTimeout',
					value: function (_setTimeout) {
						function setTimeout(_x) {
							return _setTimeout.apply(this, arguments);
						}

						setTimeout.toString = function () {
							return _setTimeout.toString();
						};

						return setTimeout;
					}(function (ms) {
						this.stop();
						this.options.timeout = ms;

						if (this.barDom) {
							if (this.options.timeout) {
								Utils.addClass(this.barDom, 'noty_has_timeout');
							} else {
								Utils.removeClass(this.barDom, 'noty_has_timeout');
							}

							var _t = this;
							setTimeout(function () {
								// ugly fix for progressbar display bug
								_t.resume();
							}, 100);
						}

						return this;
					})

					/**
      * @param {string} html
      * @param {boolean} optionsOverride
      * @return {Noty}
      */

				}, {
					key: 'setText',
					value: function setText(html) {
						var optionsOverride = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : false;

						if (this.barDom) {
							this.barDom.querySelector('.noty_body').innerHTML = html;
						}

						if (optionsOverride) this.options.text = html;

						return this;
					}

					/**
      * @param {string} type
      * @param {boolean} optionsOverride
      * @return {Noty}
      */

				}, {
					key: 'setType',
					value: function setType(type) {
						var _this2 = this;

						var optionsOverride = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : false;

						if (this.barDom) {
							var classList = Utils.classList(this.barDom).split(' ');

							classList.forEach(function (c) {
								if (c.substring(0, 11) === 'noty_type__') {
									Utils.removeClass(_this2.barDom, c);
								}
							});

							Utils.addClass(this.barDom, 'noty_type__' + type);
						}

						if (optionsOverride) this.options.type = type;

						return this;
					}

					/**
      * @param {string} theme
      * @param {boolean} optionsOverride
      * @return {Noty}
      */

				}, {
					key: 'setTheme',
					value: function setTheme(theme) {
						var _this3 = this;

						var optionsOverride = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : false;

						if (this.barDom) {
							var classList = Utils.classList(this.barDom).split(' ');

							classList.forEach(function (c) {
								if (c.substring(0, 12) === 'noty_theme__') {
									Utils.removeClass(_this3.barDom, c);
								}
							});

							Utils.addClass(this.barDom, 'noty_theme__' + theme);
						}

						if (optionsOverride) this.options.theme = theme;

						return this;
					}

					/**
      * @return {Noty}
      */

				}, {
					key: 'close',
					value: function close() {
						var _this4 = this;

						if (this.closed) return this;

						if (!this.shown) {
							// it's in the queue
							API.removeFromQueue(this);
							return this;
						}

						API.fire(this, 'onClose');

						this.closing = true;

						if (this.options.animation.close === null || this.options.animation.close === false) {
							this.promises.close = new _es6Promise2.default(function (resolve) {
								resolve();
							});
						} else if (typeof this.options.animation.close === 'function') {
							this.promises.close = new _es6Promise2.default(this.options.animation.close.bind(this));
						} else {
							Utils.addClass(this.barDom, this.options.animation.close);
							this.promises.close = new _es6Promise2.default(function (resolve) {
								Utils.addListener(_this4.barDom, Utils.animationEndEvents, function () {
									if (_this4.options.force) {
										Utils.remove(_this4.barDom);
									} else {
										API.ghostFix(_this4);
									}
									resolve();
								});
							});
						}

						this.promises.close.then(function () {
							API.closeFlow(_this4);
							API.handleModalClose(_this4);
						});

						this.closed = true;

						return this;
					}

					// API functions

					/**
      * @param {boolean|string} queueName
      * @return {Noty}
      */

				}], [{
					key: 'closeAll',
					value: function closeAll() {
						var queueName = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : false;

						Object.keys(API.Store).forEach(function (id) {
							if (queueName) {
								if (API.Store[id].options.queue === queueName && API.Store[id].killable) {
									API.Store[id].close();
								}
							} else if (API.Store[id].killable) {
								API.Store[id].close();
							}
						});
						return this;
					}

					/**
      * @param {string} queueName
      * @return {Noty}
      */

				}, {
					key: 'clearQueue',
					value: function clearQueue() {
						var queueName = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : 'global';

						if (API.Queues.hasOwnProperty(queueName)) {
							API.Queues[queueName].queue = [];
						}
						return this;
					}

					/**
      * @return {API.Queues}
      */

				}, {
					key: 'overrideDefaults',

					/**
      * @param {Object} obj
      * @return {Noty}
      */
					value: function overrideDefaults(obj) {
						API.Defaults = Utils.deepExtend({}, API.Defaults, obj);
						return this;
					}

					/**
      * @param {int} amount
      * @param {string} queueName
      * @return {Noty}
      */

				}, {
					key: 'setMaxVisible',
					value: function setMaxVisible() {
						var amount = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : API.DefaultMaxVisible;
						var queueName = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : 'global';

						if (!API.Queues.hasOwnProperty(queueName)) {
							API.Queues[queueName] = { maxVisible: amount, queue: [] };
						}

						API.Queues[queueName].maxVisible = amount;
						return this;
					}

					/**
      * @param {string} innerHtml
      * @param {String} classes
      * @param {Function} cb
      * @param {Object} attributes
      * @return {NotyButton}
      */

				}, {
					key: 'button',
					value: function button(innerHtml) {
						var classes = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : null;
						var cb = arguments[2];
						var attributes = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : {};

						return new _button.NotyButton(innerHtml, classes, cb, attributes);
					}

					/**
      * @return {string}
      */

				}, {
					key: 'version',
					value: function version() {
						return "3.2.0-beta";
					}

					/**
      * @param {String} workerPath
      * @return {Push}
      */

				}, {
					key: 'Push',
					value: function Push(workerPath) {
						return new _push.Push(workerPath);
					}
				}, {
					key: 'Queues',
					get: function get() {
						return API.Queues;
					}

					/**
      * @return {API.PageHidden}
      */

				}, {
					key: 'PageHidden',
					get: function get() {
						return API.PageHidden;
					}
				}]);

				return Noty;
			}();

			// Document visibility change controller


			exports.default = Noty;
			if (typeof window !== 'undefined') {
				Utils.visibilityChangeFlow();
			}
			module.exports = exports['default'];

			/***/
		},
		/* 7 */
		/***/function (module, exports) {

			// shim for using process in browser
			var process = module.exports = {};

			// cached from whatever global is present so that test runners that stub it
			// don't break things.  But we need to wrap it in a try catch in case it is
			// wrapped in strict mode code which doesn't define any globals.  It's inside a
			// function because try/catches deoptimize in certain engines.

			var cachedSetTimeout;
			var cachedClearTimeout;

			function defaultSetTimout() {
				throw new Error('setTimeout has not been defined');
			}
			function defaultClearTimeout() {
				throw new Error('clearTimeout has not been defined');
			}
			(function () {
				try {
					if (typeof setTimeout === 'function') {
						cachedSetTimeout = setTimeout;
					} else {
						cachedSetTimeout = defaultSetTimout;
					}
				} catch (e) {
					cachedSetTimeout = defaultSetTimout;
				}
				try {
					if (typeof clearTimeout === 'function') {
						cachedClearTimeout = clearTimeout;
					} else {
						cachedClearTimeout = defaultClearTimeout;
					}
				} catch (e) {
					cachedClearTimeout = defaultClearTimeout;
				}
			})();
			function runTimeout(fun) {
				if (cachedSetTimeout === setTimeout) {
					//normal enviroments in sane situations
					return setTimeout(fun, 0);
				}
				// if setTimeout wasn't available but was latter defined
				if ((cachedSetTimeout === defaultSetTimout || !cachedSetTimeout) && setTimeout) {
					cachedSetTimeout = setTimeout;
					return setTimeout(fun, 0);
				}
				try {
					// when when somebody has screwed with setTimeout but no I.E. maddness
					return cachedSetTimeout(fun, 0);
				} catch (e) {
					try {
						// When we are in I.E. but the script has been evaled so I.E. doesn't trust the global object when called normally
						return cachedSetTimeout.call(null, fun, 0);
					} catch (e) {
						// same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error
						return cachedSetTimeout.call(this, fun, 0);
					}
				}
			}
			function runClearTimeout(marker) {
				if (cachedClearTimeout === clearTimeout) {
					//normal enviroments in sane situations
					return clearTimeout(marker);
				}
				// if clearTimeout wasn't available but was latter defined
				if ((cachedClearTimeout === defaultClearTimeout || !cachedClearTimeout) && clearTimeout) {
					cachedClearTimeout = clearTimeout;
					return clearTimeout(marker);
				}
				try {
					// when when somebody has screwed with setTimeout but no I.E. maddness
					return cachedClearTimeout(marker);
				} catch (e) {
					try {
						// When we are in I.E. but the script has been evaled so I.E. doesn't  trust the global object when called normally
						return cachedClearTimeout.call(null, marker);
					} catch (e) {
						// same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error.
						// Some versions of I.E. have different rules for clearTimeout vs setTimeout
						return cachedClearTimeout.call(this, marker);
					}
				}
			}
			var queue = [];
			var draining = false;
			var currentQueue;
			var queueIndex = -1;

			function cleanUpNextTick() {
				if (!draining || !currentQueue) {
					return;
				}
				draining = false;
				if (currentQueue.length) {
					queue = currentQueue.concat(queue);
				} else {
					queueIndex = -1;
				}
				if (queue.length) {
					drainQueue();
				}
			}

			function drainQueue() {
				if (draining) {
					return;
				}
				var timeout = runTimeout(cleanUpNextTick);
				draining = true;

				var len = queue.length;
				while (len) {
					currentQueue = queue;
					queue = [];
					while (++queueIndex < len) {
						if (currentQueue) {
							currentQueue[queueIndex].run();
						}
					}
					queueIndex = -1;
					len = queue.length;
				}
				currentQueue = null;
				draining = false;
				runClearTimeout(timeout);
			}

			process.nextTick = function (fun) {
				var args = new Array(arguments.length - 1);
				if (arguments.length > 1) {
					for (var i = 1; i < arguments.length; i++) {
						args[i - 1] = arguments[i];
					}
				}
				queue.push(new Item(fun, args));
				if (queue.length === 1 && !draining) {
					runTimeout(drainQueue);
				}
			};

			// v8 likes predictible objects
			function Item(fun, array) {
				this.fun = fun;
				this.array = array;
			}
			Item.prototype.run = function () {
				this.fun.apply(null, this.array);
			};
			process.title = 'browser';
			process.browser = true;
			process.env = {};
			process.argv = [];
			process.version = ''; // empty string to avoid regexp issues
			process.versions = {};

			function noop() {}

			process.on = noop;
			process.addListener = noop;
			process.once = noop;
			process.off = noop;
			process.removeListener = noop;
			process.removeAllListeners = noop;
			process.emit = noop;
			process.prependListener = noop;
			process.prependOnceListener = noop;

			process.listeners = function (name) {
				return [];
			};

			process.binding = function (name) {
				throw new Error('process.binding is not supported');
			};

			process.cwd = function () {
				return '/';
			};
			process.chdir = function (dir) {
				throw new Error('process.chdir is not supported');
			};
			process.umask = function () {
				return 0;
			};

			/***/
		},
		/* 8 */
		/***/function (module, exports) {

			var g;

			// This works in non-strict mode
			g = function () {
				return this;
			}();

			try {
				// This works if eval is allowed (see CSP)
				g = g || Function("return this")() || (1, eval)("this");
			} catch (e) {
				// This works if the window reference is available
				if ((typeof window === 'undefined' ? 'undefined' : _typeof2(window)) === "object") g = window;
			}

			// g can still be undefined, but nothing to do about it...
			// We return undefined, instead of nothing here, so it's
			// easier to handle this case. if(!global) { ...}

			module.exports = g;

			/***/
		},
		/* 9 */
		/***/function (module, exports) {

			/* (ignored) */

			/***/}]
		/******/)
	);
});
//# sourceMappingURL=noty.js.map"use strict";

/////////////////////////////////////////////////////////////////////////////////
//// Time-stamp: <2022-06-16 11:09:04 (melify)>
/////////////////////////////////////////////////////////////////////////////////
window.test = {};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
test.blank = function (what) {
			console.group("test.blank", what);

			// CREATE A CONTAINER FOR RESULTS
			if ($("#blank-test-results").length == 0) {
						$("body").prepend("<div id=\"blank-test-results\" class=\"m-3\"><h6 class=\"wc-font-b\">TEST RESULTS</h6></div>");
			}

			// ADD TEST EVENT TO RESULTS
			$("#blank-test-results").append("<div class=\"ml-3\">- TESTING: <i>" + what + "</i></div>");

			switch (what) {
						case "configure":
									/* CONFIGURE */
									var w = document.querySelector("#my-blank");
									break;

						case "show":
									/* SHOW */
									var w = document.querySelector("#my-blank");
									w.snd("#my-blank", { event: "show" });
									break;

						case "hide":
									/* HIDE */
									var w = document.querySelector("#my-blank");
									w.snd("#my-blank", { event: "hide" });
									break;

						case "toggle":
									/* TOGGLE */
									var w = document.querySelector("#my-blank");
									w.snd("#my-blank", { event: "toggle" });
									break;

						default:
									/* NO SUCH COMMAND */
									console.error("Component 'Blank' has no test for: " + what);
									break;
			}

			console.groupEnd();
};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
test.blankAll = function () {
			console.group("test.blankAll");

			// TEST THIS COMPONENT NOW
			function test(what, timeout) {
						wc.timeout(function () {
									window.test.blank(what);
						}, timeout, 1);
			}

			// LIST OF COMMANDS FROM Blank.test
			var cmnds = ["configure", "hide", "show", "toggle", "toggle", "FAIL-THIS"];

			for (var i = 0; i < cmnds.length; i++) {
						test(cmnds[i], (i + 1) * 2000);
			}

			console.groupEnd();
};'use strict';

if (typeof window.wcENV === 'undefined') {
				window.wcENV = 'prod';
}
if (typeof window.wcAPP === 'undefined') {
				window.wcAPP = 'NOT-SET';
}
if (typeof window.wcURL === 'undefined') {
				window.wcURL = 'http://www.melify.com/tk/lib/components/w';
}

/////////////////////////////////////////////////////////////////////////
//// CamelCase
/////////////////////////////////////////////////////////////////////////////
String.prototype.toCamelCase = function () {
				return this.replace(/-/g, " ").replace(/_/g, " ").replace(/\s(.)/g, function ($1) {
								return $1.toUpperCase();
				}).replace(/\s/g, '').replace(/^(.)/, function ($1) {
								return $1.toLowerCase();
				});
};

/////////////////////////////////////////////////////////////////////////////////
//// LOADING CODE
/////////////////////////////////////////////////////////////////////////////////
window.tkloading = {};

/////////////////////////////////////////////////////////////////////////
//// tkloading.show('#xx')
/////////////////////////////////////////////////////////////////////////////
tkloading.show = function () {
				var ele = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : "body";
				var img = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : null;

				wc.group("tkloading.show:", ele);

				$(ele).css("position", "relative");
				$(ele).append("<div class='tkloading'></div>");

				if (img) {
								$(".tkloading").css({
												"background-image": 'url(' + img + ')',
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
tkloading.hide = function () {
				var ele = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : "body";

				wc.group("tkloading.hide:", ele);

				$(ele + " .tkloading").remove();

				wc.groupEnd();
};

////////////////////////////////////////////////////////////////////////////////////
//// DATA BINDING FUNCTION
////////////////////////////////////////////////////////////////////////////////////
window.tkBind = function (id, callback) {
				wc.group("tkBind", id);

				window.tkModel = window.tkModel || [];

				try {
								DataBind.bind(document.getElementById(id), window.tkModel);
				} catch (e) {
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
window.tkBindAll = function (callback) {
				wc.group("tkBindAll");

				$("[data-key]").each(function () {
								var id = $(this).attr("id");
								tkBind(id, callback);
				});

				wc.groupEnd();
				return window.tkModel;
};

////////////////////////////////////////////////////////////////////////////////////
//// EXAMPLE CALLBACK
////////////////////////////////////////////////////////////////////////////////////
window.tkBinder = function (ev) {
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

				switch (type) {
								case "SELECT":
												wc.log("SELECT:", type, "#" + this.id);
												$("#" + this.id).val(ev.data.newValue).change();
												break;

								// SWITCH ON TYPE OF INPUT
								case "INPUT":
												//alert($(this).attr("type"));
												switch ($(this).attr("type")) {
																case "checkbox":
																				wc.log("INPUT:", type, "#" + this.id);

																				if (ev.data.newValue) {
																								$("#" + this.id).prop("checked", true);
																				} else {
																								$("#" + this.id).prop("checked", false);
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
};

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

				if (newWinSize != tk.winsize) {
								wc.group("tk.js > media");

								tk.winsize = newWinSize;
								wc.log("MEDIA CHANGED to:", tk.winsize);

								$("body").attr("body-size", tk.winsize);

								wc.publish("media", {
												time: new Date().getTime(),
												action: "resized",
												size: tk.winsize
								});

								wc.groupEnd();
				}
};

jQuery(document).ready(function () {
				window.onresize();
});

/////////////////////////////////////////////////////////////////////////
//// CENTER ELEMENT INSIDE ITS PARENT
/////////////////////////////////////////////////////////////////////////////
(function ($) {
				$.fn.tkCenter = function (options) {
								wc.group("tkCenter:", JSON.stringify(options));

								var settings = $.extend({
												cssAttribute: 'margin-top', // the attribute to apply the calculated value to
												verticalOffset: 0, // the number of pixels to offset the vertical alignment by
												parentSelector: null, // a selector representing the parent to vertically center this element within
												debounceTimeout: 25, // a default debounce timeout in milliseconds
												deferTilWindowLoad: false // if true, nothing will take effect until the $(window).load event
								}, options || {});

								return this.each(function () {
												var $this = $(this); // store the object
												var debounce;

												// recalculate the distance to the top of the element to keep it centered
												var resizer = function resizer() {

																var parentHeight = settings.parentSelector && $this.parents(settings.parentSelector).length ? $this.parents(settings.parentSelector).first().height() : $this.parent().height();

																$this.css(settings.cssAttribute, (parentHeight - $this.height()) / 2 + parseInt(settings.verticalOffset));
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
})(jQuery);"use strict";

window.wc = window.wc || {};
window.wc.session = window.wc.session || {};
window.wc.local = window.wc.local || {};

window.wcENV = window.wcENV || "prod";
window.wcAPP = window.wcAPP || "NOT-SET";
window.wcURL = window.wcURL || "http://www.melify.com/tk/lib/components/w";

// FOR WINDOZE
if (typeof console === 'undefined') {
    console = {};
}

/////////////////////////////////////////////////////////////////////////////////
//// string to hash
/////////////////////////////////////////////////////////////////////////////////
String.prototype.hash = function () {
    var self = this,
        range = Array(this.length);
    for (var i = 0; i < this.length; i++) {
        range[i] = i;
    }
    return Array.prototype.map.call(range, function (i) {
        return self.charCodeAt(i).toString(16);
    }).join('');
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.log = function () {
    var _console;

    return (_console = console).log.apply(_console, arguments);
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.group = function () {
    var _console2;

    return (_console2 = console).group.apply(_console2, arguments);
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.groupEnd = function () {
    var _console3;

    return (_console3 = console).groupEnd.apply(_console3, arguments);
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.info = function () {
    var _wc, _console4;

    (_wc = wc).logger.apply(_wc, arguments);
    return (_console4 = console).info.apply(_console4, arguments);
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.warn = function () {
    var _console5;

    return (_console5 = console).warn.apply(_console5, arguments);
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.error = function () {
    var _console6;

    return (_console6 = console).error.apply(_console6, arguments);
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.timeout(function(){
////     alert("A")
//// }, 1000, 1);	 
/////////////////////////////////////////////////////////////////////////////////
wc.timeout = function (func, wait, times) {
    if (typeof times === "undefined") {
        times = 1;
    }

    var interv = function (w, t) {
        return function () {
            if (typeof t === "undefined" || t-- > 0) {
                setTimeout(interv, w);

                try {
                    func.call(null);
                } catch (e) {
                    t = 0;
                    throw e.toString();
                }
            }
        };
    }(wait, times);

    setTimeout(interv, wait);
};

/////////////////////////////////////////////////////////////////////////////////
//// STRING TO TITLE
/////////////////////////////////////////////////////////////////////////////////
wc.toTitle = function (str) {
    str = str.toLowerCase().split(' ');

    for (var i = 0; i < str.length; i++) {
        str[i] = str[i].charAt(0).toUpperCase() + str[i].slice(1);
    }

    return str.join(' ');
};

////////////////////////////////////////////////////////////////////////////////////
////
////////////////////////////////////////////////////////////////////////////////////
wc.notify = function (options) {
    var noty = new Noty(options);

    if (options.show) {
        noty.show();
    }

    if (options.include) {
        $("#" + options.id + " .noty_body").load(options.include);
    }

    if (options.width) {
        $("#" + options.id).parent().width(options.width);
    }

    return noty;
};

////////////////////////////////////////////////////////////////////////////////////
////
////////////////////////////////////////////////////////////////////////////////////
wc.logger = function (str) {
    //wc.group("wc.logger:", str);

    var myNoty = wc.notify({
        width: "100%",
        theme: "bootstrap-v4",
        type: "info",
        modal: false,
        killer: true,
        show: true,
        text: str,
        layout: "bottomCenter",
        closeWith: ['click'],
        timeout: 5000
    });

    $(".wc-logger").html(str);

    //wc.groupEnd();
};

////////////////////////////////////////////////////////////////////////////////////
////
//// wc.waitFor(function() {
////    return $(".navbar").length
//// }, function() {
////    alert("A");
//// });
////
////////////////////////////////////////////////////////////////////////////////////
wc.waitFor = function (condition, callback) {
    if (!condition()) {
        wc.log('waiting');
        window.wc.timeout(waitFor.bind(null, condition, callback), 300); /* this checks the flag every 300 milliseconds*/
    } else {
        wc.log('done');
        callback();
    }
};

////////////////////////////////////////////////////////////////////////////////////
////
////////////////////////////////////////////////////////////////////////////////////
wc.infoTest = function () {
    wc.group("wc.infoTest");

    var myNoty = wc.notify({
        id: "my-notify",
        width: "500px",
        theme: "bootstrap-v4",
        type: "info",
        layout: "centerRight",
        timeout: "3000",
        modal: false,
        killer: false,
        show: true,
        text: "Mel was here...", // WILL BE IGNORE IF HAVE "include"
        include: "/tk/lib/components/w/html/parts/noty/info.html"
    });

    wc.groupEnd();
    return myNoty;
};

////////////////////////////////////////////////////////////////////////////////////
////
////////////////////////////////////////////////////////////////////////////////////
wc.warningTest = function () {
    wc.group("wc.warningTest");

    var myNoty = wc.notify({
        id: "my-notify",
        width: "500px",
        theme: "bootstrap-v4",
        type: "warning",
        layout: "topRight",
        timeout: "3000",
        modal: false,
        killer: false,
        show: true,
        text: "Mel was here...", // WILL BE IGNORE IF HAVE "include"
        include: "/tk/lib/components/w/html/parts/noty/info.html"
    });

    wc.groupEnd();
    return myNoty;
};

////////////////////////////////////////////////////////////////////////////////////
////
////////////////////////////////////////////////////////////////////////////////////
wc.errorTest = function () {
    wc.group("wc.errorTest");

    var myNoty = wc.notify({
        id: "my-notify",
        width: "500px",
        theme: "bootstrap-v4",
        type: "error",
        layout: "center",
        timeout: "3000",
        modal: true,
        killer: false,
        show: true,
        text: "Mel was here...", // WILL BE IGNORE IF HAVE "include"
        include: "/tk/lib/components/w/html/parts/noty/info.html"
    });

    wc.groupEnd();
    return myNoty;
};

////////////////////////////////////////////////////////////////////////////////////
////
////////////////////////////////////////////////////////////////////////////////////
wc.dialogTest = function () {
    wc.group("wc.dialogTest");

    var myNoty = wc.notify({
        id: "my-notify",
        closeWith: "button",
        width: "500px",
        theme: "bootstrap-v4",
        type: "default",
        layout: "center",
        timeout: "",
        modal: true,
        killer: false,
        show: true,
        text: "Mel was here...", // WILL BE IGNORE IF HAVE "include"
        include: "/tk/lib/components/w/html/parts/noty/info.html",

        buttons: [Noty.button('I AGREE', 'btn btn-outline-success btn-noty', function () {
            wc.log('btn-ok clicked');
        }), Noty.button('I Disagree', 'btn btn-outline-secondary btn-noty', function () {
            wc.log('btn-close clicked');
            myNoty.close(); // CLOSE DIALOG
        })]
    });

    wc.groupEnd();
    return myNoty;
};

////////////////////////////////////////////////////////////////////////////////////
////
////////////////////////////////////////////////////////////////////////////////////
wc.workingTest = function () {
    wc.group("wc.workingTest");

    var myNoty = wc.notify({
        id: "my-notify",
        closeWith: "button",
        width: "500px",
        theme: "bootstrap-v4",
        type: "transparent",
        layout: "center",
        timeout: "4000",
        modal: true,
        killer: false,
        show: true,
        text: "<div style=text-align:center><img src='/tk/img/common/loading.3.gif'/></div>"
    });

    wc.groupEnd();
    return myNoty;
};

////////////////////////////////////////////////////////////////////////////////////
//// EXECUTE A PIECE OF CODE SO MANY TIMES
////
//// wc.interval(function(){
////     wc.log("waiting...")
//// }, 1000, 10);
////
////  timeout, how many times to try
////////////////////////////////////////////////////////////////////////////////////
wc.interval = function (func, wait, times) {
    var interv = function (w, t) {
        return function () {
            if (typeof t === "undefined" || t-- > 0) {
                wc.timeout(interv, w);

                try {
                    func.call(null);
                } catch (e) {
                    t = 0;
                    throw e.toString();
                }
            }
        };
    }(wait, times);

    wc.timeout(interv, wait);
};

////////////////////////////////////////////////////////////////////////////////////
//// 
////////////////////////////////////////////////////////////////////////////////////
wc.type = function (obj) {
    wc.group("wc.type:", obj);

    wc.groupEnd();
    return Object.prototype.toString.call(obj).replace(/^\[object (.+)\]$/, '$1').toLowerCase();
};

////////////////////////////////////////////////////////////////////////////////////
//// 
////////////////////////////////////////////////////////////////////////////////////
wc.getAttributes = function (node) {
    wc.group("wc.getAttributes", node);

    var i,
        attributeNodes = node.attributes,
        length = attributeNodes.length,
        attrs = {};

    for (i = 0; i < length; i++) {
        attrs[attributeNodes[i].name] = attributeNodes[i].value;
    }

    wc.groupEnd();
    return attrs;
};

////////////////////////////////////////////////////////////////////////////////////
//// SAVE STATS IN EACH OBJECT
////////////////////////////////////////////////////////////////////////////////////
wc.setStats = function (obj, cname, version) {
    wc.group("wc.setStats:", cname, version);

    this.img = document.createElement("img");

    wc.log("wcENV:", wcENV, "wcURL:", wcURL, "wcAPP:", wcAPP);

    ga('send', { 'hitType': 'event', 'eventCategory': 'wc-setstatus', 'eventAction': 'setStats', 'eventLabel': cname, 'eventValue': JSON.stringify({ 'env': wcENV, 'app': wcAPP, 'url': wcURL }) });

    wc.log("wcENV:", wcENV, "wcURL:", wcURL, "wcAPP:", wcAPP);

    this.img = document.createElement("img");

    this.img.src = wcURL + "/assets/ma.gif?" + "app=" + wcAPP + "&comp=" + cname + "&ver=" + version + "&date=" + escape(new Date()) + "&browser=" + escape(navigator.userAgent) + "&url=" + location.protocol + "//" + location.host + location.pathname;

    this.img.style.display = "none";
    obj.appendChild(this.img);

    window.dataLayer = window.dataLayer || [];window.dataLayer.push({
        "wcEvent": "wcTrigger",
        "wcAction": "wc-create",
        "wcName": cname,
        "wcVersion": version,
        "wcApp": window.wcAPP,
        "wcEnv": window.wcENV,
        "wcUrl": document.location
    });

    wc.groupEnd();
};

////////////////////////////////////////////////////////////////////////////////////
//// REPLACED BY PUBSUB
////////////////////////////////////////////////////////////////////////////////////
window.publish = PubSub.publish;
wc.publish = PubSub.publish;
wc.publishSync = PubSub.publishSync;
wc.subscribe = PubSub.subscribe;

////////////////////////////////////////////////////////////////////////////////////
////  wc.publish("wc-maker", {
////      id: this.id,
////      user: "Mel",
////      action: "click"
////  });
////////////////////////////////////////////////////////////////////////////////////
// wc.publish = function(publisher, label, data) {
//     wc.group("wc.publish", publisher.id, label, data);

//     if (1) {
// 	PubSub.publish(label,data);
//     } else {
// 	var event = document.createEvent('CustomEvent');
// 	event.initCustomEvent(label, true, true, data);
// 	publisher.dispatchEvent(event);
//     }

//     ga('send', {'hitType':'event', 'eventCategory':'wc-publish', 'eventAction':'publish', 'eventLabel':label, 'eventValue':JSON.stringify(data)});

//     window.dataLayer = window.dataLayer || []; window.dataLayer.push({
//     	"wcEvent": "wcTrigger",
//     	"wcAction": "wc-publish",
//     	"wcName": label,
//     	"wcTime": data.time,
//     	"wcId": data.id,
//     	"wcAction": data.action,
// 	"wcParam": data.uparam
//     });

//     wc.groupEnd();
// };

////////////////////////////////////////////////////
//// GENERAL PUBLISH METHOD
//// to be used for testing by react, ...
////////////////////////////////////////////////////
// window.publish = function(id, values) {
//     wc.group("window.publish", id, values);

//     if (1) {
// 	PubSub.publish(id,values);
//     } else {
// 	var event = document.createEvent('CustomEvent');
// 	event.initCustomEvent(id, true, true, values);
// 	document.dispatchEvent(event);
//     }

//     wc.groupEnd();
//     return values;
// }

////////////////////////////////////////////////////
//// GENERAL PUBLISH METHOD
////////////////////////////////////////////////////
// wc.publish2 = function(id, values) {
//     wc.group("wc.publish2", id, values);

//     if (1) {
// 	PubSub.publish(id,values);
//     } else {
// 	var event = document.createEvent('CustomEvent');
// 	event.initCustomEvent(id, true, true, values);
// 	document.dispatchEvent(event);
//     }

//     wc.groupEnd();
// }

////////////////////////////////////////////////////////////////////////////////////
////  wc.subscribe("wc-maker", function(e) {
////      wc.log(">>>>>>>", e.detail);
////  });
////////////////////////////////////////////////////////////////////////////////////
// wc.subscribe = function(name, callback) {
//     wc.group("wc.subscribe", name);

//     if (1) {
// 	PubSub.subscribe(name,callback);
//     } else {
// 	window.addEventListener(name, callback, true);
//     }

//     ga('send', {'hitType':'event', 'eventCategory':'wc-subscribe','eventAction':'subscribe', 'eventLabel': name, 'eventValue':JSON.stringify({'env':wcENV,'app':wcAPP,'url':wcURL})});

//     window.dataLayer = window.dataLayer || []; window.dataLayer.push({
//     	"wcEvent": "wcTrigger",
//     	"wcAction": "wc-subscribe",
//     	"wcName": name,
//     	"wcApp": window.wcAPP,
//     	"wcEnv": window.wcENV,
//     	"wcUrl": wcURL
//     });

//     wc.groupEnd();
// };

////////////////////////////////////////////////////////////////////////////////////
//// equivalend of $().load()
////
////	wc.load($("wc-maker")[0],"/mtk/render?callback=tk::dummy::3")
////	    .then(function(value) {
////		wc.log(">>>>>>>>>>>>", value);
////	    })
////	    .fail(function(value) {
////		wc.log(">>>>>>>>>>>>", value);
////	    });
////
////////////////////////////////////////////////////////////////////////////////////
// wc.load = function(element, url, type) {
//     wc.group("wc.load", element.id, url, type);

//     var deferred = $.Deferred();

//     $.ajax({
// 	url: url, 
// 	type: type || 'get',
// 	error: function(XMLHttpRequest, textStatus, errorThrown){
// 	    wc.error('HOUSTON WE HAVE PROBLEM IN: ' + url);
// 	    deferred.reject('HOUSTON WE HAVE PROBLEM IN: ' + url);
// 	},
// 	success: function(data){
// 	    element.innerHTML = data;
// 	    deferred.resolve('SUCCESS');
// 	}
//     });

//     wc.groupEnd();
//     return deferred.promise();
// }

///////////////////////////////////////////////////////////////////////////////////////////
//// wc.ajax("post", "/mtk/render", "ajax=1&callback=packer", function(data, status, xhr) {
////     $("#container-results").append(data);
//// });
///////////////////////////////////////////////////////////////////////////////////////////
// wc.ajax = function(method, url, data, success) {
//     wc.group("wc.ajax:", method, url, data);

//     $.ajax({
// 	url: url,
// 	type: method,
// 	data: data,
// 	success: success
//     });

//     wc.groupEnd();
//     return true;
// }

//////////////////////////////////////////////////
// CHROME OR FIREFOX ONLY
//////////////////////////////////////////////////
wc.check4chrome = function () {
    wc.group("wc.check4chrome");

    // ALLOW LOCALHOST (any hostname not having .net or .com etc.)
    if (window.location.hostname.indexOf('.') != -1) {
        wc.groupEnd();
        return;
    }

    wc.timeout(function () {
        if (wc.detectIE() != false) {
            document.location.href = "/Melify/mtk/dev/tk/noie.html";
        }
    }, 500);

    wc.groupEnd();
};

//////////////////////////////////////////////////
// IF CONDITION READY
//////////////////////////////////////////////////
// LOOP 3 TIMES AND FAIL
// -----------------------------------------------
// wc.when(function() {
//     return $("#xx").length;
// }, 1000, 3)
//   .then(function(args) {
//       $("body").append("<h1>" + args + "<h1>");
//   }).fail(function(args) {
//       alert(args);
//   });
/////////////////////////////////////////////////
wc.when = function (condition, wait, times, deferred) {
    wc.group("wc.when:", times);

    var WC_NTIMES = 20;

    if (typeof times == "undefined") {
        times = WC_NTIMES;
    }

    if (typeof deferred == "undefined") {
        var deferred = $.Deferred();
    }

    var cond = condition();

    if (cond) {
        // RETURN CONDITION() VALUE
        deferred.resolve(cond);
        wc.log("condition met.");
    } else {
        wc.timeout(function () {
            if (times <= 1) {
                wc.error("wc.when failed !");
                deferred.reject("FAILED ON CONDITION");
            } else {
                wc.when(condition, wait, --times, deferred);
            }
        }, wait);
    }

    wc.groupEnd();
    return deferred.promise();
};

//////////////////////////////////////////////////
// 
// wc.wait4("#xx", function(ele) {
//     console.log(ele)
// });
//
/////////////////////////////////////////////////
wc.wait4 = function (element, callback) {
    wc.group("wc.wait4:", element);

    var observer = new MutationObserver(function (mutations, me) {
        var ele = $(element)[0];

        if (ele) {
            callback(ele);
            me.disconnect();
            return;
        }
    });

    observer.observe(document, {
        childList: true,
        subtree: true
    });

    wc.groupEnd();
};

//////////////////////////////////////////////////
// CREATE ROUND (CIRCLE) BUTTONS
/////////////////////////////////////////////////
wc.rounded = function () {
    wc.group("wc.rounded");

    $(".wc-rounded, .btn-round, .btn-circle").css("visibility", "hidden");

    $(".wc-rounded, .btn-round, .btn-circle").each(function () {
        var w = $(this).width();

        // GET LINE HEIGHT
        var f = $(this).css('font-size');
        var h = Math.floor(parseInt(f));

        // + 10 TO MAKE IT REAL ROUND
        $(this).height(w + 10);

        $(this).css({
            "text-align": "center",
            "display": "table-cell",
            "vertical-align": "middle",
            "line-height": h + 3 + "px",
            "white-space": "normal"
        });

        $(this)[0].style.setProperty('border-radius', '999px', 'important');
    });

    $(".wc-rounded, .btn-round, .btn-circle").css("visibility", "visible");

    wc.groupEnd();
};

//////////////////////////////////////////////////
// DOES A JSON FILE OR URL EXIST
/////////////////////////////////////////////////
wc.fileExist = function (url) {
    wc.group("wc.fileExist:", url);

    var xhr = new XMLHttpRequest();
    xhr.open('HEAD', url, false);
    xhr.send();

    if (xhr.status == "404") {
        wc.groupEnd();
        return false;
    } else {
        wc.groupEnd();
        return true;
    }

    wc.groupEnd();
};

//////////////////////////////////////////////////
// INTEGER > DOLLAR
/////////////////////////////////////////////////
wc.int2Dollar = function (amt) {
    wc.group("wc.int2Dollar:", amt);

    var rval = amt.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'); // 12,345.67

    wc.groupEnd();
    return rval;
};

//////////////////////////////////////////////////
// DOLLAR > INTEGER
/////////////////////////////////////////////////
wc.dollar2Int = function (amt) {
    wc.group("wc.dollar2Int:", amt);

    var rval = Number(amt.replace(/[^0-9\.]+/g, ""));

    wc.groupEnd();

    return rval;
};

//////////////////////////////////////////////////
// wc.maskMoney("[type=text]",{
//     precision: 2,
//     prefix: "$ ",
//     decimal: ",",
//     thousands: ".",
//     allowNegative: false,
//     allowZero: true
// })
//////////////////////////////////////////////////
wc.maskMoney = function (eid, options) {
    wc.group("wc.maskMoney:", eid);

    $(eid).maskMoney(options);

    wc.groupEnd();
};

///////////////////////////////////////////////////////////
// scroll any table to top, bottom or any number of rows
//////////////////////////////////////////////////////////
wc.scroll2row = function (tid, rid) {
    wc.group("wc.scroll2row:", tid, rid);

    var rows = document.querySelectorAll("#" + tid + " tr");

    switch (rid) {
        case "top":
            rid = 1;
            break;

        case "bottom":
            rid = $(rows).length - 1;
            break;
    }

    rows[rid].scrollIntoView({ behavior: 'smooth', block: 'center' });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////
// camelcase a string like mel-was-here to melWasHere
////////////////////////////////////////////////////////
wc.camelize = function (string) {
    return string.replace(/-+(.)?/g, function (match, chr) {
        return chr ? chr.toUpperCase() : '';
    });
};

////////////////////////////////////////////////////////////////////////////////////
//// sleep(2000)
////////////////////////////////////////////////////////////////////////////////////
wc.sleep = function (ms) {
    var dt = new Date();
    dt.setTime(dt.getTime() + ms);
    while (new Date().getTime() < dt.getTime()) {
        $.noop();
    }
};

///////////////////////////////////////////////////////////////
// get ele styles like: wc.getStyels($("h1")[0])
// from: /GitHub/jQuery-Scoped-CSS-plugin/jquery.scoped.js
//////////////////////////////////////////////////////////////
wc.getStyles = function (element) {
    var temp, styles, n, key;

    if (element.currentStyle) {
        //We work with a style object in IE and Opera rather than the text
        wc.sleep(50); //50ms delay to allow for external stylesheet parsing.
        return element.currentStyle;
    }

    //We extract and process the ComputedCSSStyleObject into text
    temp = document.defaultView.getComputedStyle(element, null);
    styles = '';
    for (n in temp) {
        if (parseInt(n, 10)) {
            key = wc.camelize(temp[n]);
            if (temp[key] !== undefined) {
                styles += temp[n] + ':' + temp[key] + ';\n';
            }
        }
    }

    return styles;
};

///////////////////////////////////////////////////////////////
// GENERATE A UNIQUE ID
//////////////////////////////////////////////////////////////
wc.uid = function () {
    return Math.random().toString(36).substr(2, 9);
};

///////////////////////////////////////////////////////////////
// FIND NAME FROM KEY
//   let rval = wc.jfind(tkRegex, "name", pat)
//////////////////////////////////////////////////////////////
wc.jfind = function (jarray, key, name) {
    wc.group("wc.jfind:", jarray, key, name);

    var rval = $.grep(jarray, function (item) {
        return item[key] == name;
    });

    wc.groupEnd();
    return rval;
};

///////////////////////////////////////////////////////////////
// INPUT MASKING
//   https://unmanner.github.io/imaskjs/guide.html
//
//   wc.mask("text-1", Number)
//   wc.mask("text-1", Number, {min:0, max:10000})
//
//////////////////////////////////////////////////////////////
wc.imask = function (id, mask, vargs) {
    wc.group("wc.imask", id, mask, vargs);

    var element = document.getElementById(id);

    var maskOptions = {
        mask: mask
    };

    if (vargs) {
        Object.assign(maskOptions, vargs);
    }

    var mask = IMask(element, maskOptions);

    wc.groupEnd();
    return mask;
};

/////////////////////////////////////////////////////////////////////////////////
//// BIND ALL [data-keys]
/////////////////////////////////////////////////////////////////////////////////
wc.binder = function () {
    wc.group("wc.binder");

    $("[data-key]").each(function () {
        var id = $(this).attr("id");

        // IF THERE IS NO ID ASSIGN ONE
        if (typeof id === "undefined") {
            $(this).attr("id", wc.uid());
            id = $(this).attr("id");
        }

        tkBind(id, tkBinder);
    });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// GET CURRENT QUARTER
/////////////////////////////////////////////////////////////////////////////////
wc.getQuarter = function () {
    wc.group("wc.quarter");

    var date = new Date();
    var quarter = parseInt(date.getMonth() / 3) + 1;

    wc.groupEnd();
    return quarter;
};

/////////////////////////////////////////////////////////////////////////////////
//// GET CURRENT QUARTER
/////////////////////////////////////////////////////////////////////////////////
wc.positiveNumber = function (n) {
    return (n > 0 ? '+' : '') + n;
};

/////////////////////////////////////////////////////////////////////////////////
////    Example:
////	    wc.enterKey("#my-text", function() {
////		alert($("#my-text").val())
////	    });
/////////////////////////////////////////////////////////////////////////////////
wc.enterKey = function (ele, callback) {
    wc.group("wc.enterKey");

    $(ele).on('keydown', function (e) {
        if (e.which == 13) {
            e.preventDefault();
            callback();
        }
    });

    wc.groupEnd();
    return ele;
};

/////////////////////////////////////////////////////////////////////////////////
////    Example:
////	    wc.ctrlKey("z", function() {
////		alert("ENTERED Ctrl+z")
////	    });
/////////////////////////////////////////////////////////////////////////////////
wc.ctrlKey = function (char, callback) {
    wc.group("wc.ctrlKey:", char);

    document.addEventListener('keydown', function (event) {
        if (event.ctrlKey && event.key === char) {
            callback(char);
        }
    });

    wc.groupEnd();
    return true;
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.table
/////////////////////////////////////////////////////////////////////////////////
wc.table = function (ele, params) {
    wc.group("wc.table");

    if ($(ele).length == 0) {
        alert("NO SUCH ELEMENT (wc.wait4): " + ele);
        wc.groupEnd();
        return;
    }

    $(ele).dataTable(params);

    $(".dataTables_filter [type=search]").css({
        border: "1px #ccc solid",
        height: "30px",
        paddingLeft: "10px",
        width: "200px"
    });

    $(".dataTables_filter label").css({
        "text-transform": "uppercase",
        "font-size": "14px",
        "font-family": "far"
    });

    wc.groupEnd();
    return ele;
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.getCSV
//// NEED: /tk/lib/components/w//js/ext/jquery.csv.js
//// EXAMPLE: /Melify/tools/getCSV.html
/////////////////////////////////////////////////////////////////////////////////
wc.getCSV = function (filename, callback) {
    wc.group("wc.getCSV");

    $.ajax({
        type: "GET",
        url: filename,
        dataType: "text",
        success: function success(response) {
            callback($.csv.toArrays(response));
        }
    });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.csv2table
//// NEED: /tk/lib/components/w//js/ext/jquery.csv.js
//// EXAMPLE: /Melify/tools/csv2table.html
//// *** INCOMPLETE ***
/////////////////////////////////////////////////////////////////////////////////
wc.csv2table = function (parent, filename, cls) {
    wc.group("wc.csv2table");

    cls = cls || "";

    var str = "<table class=\"" + cls + "\"><thead><tr>";

    wc.getCSV(filename, function (data) {
        // THEAD
        for (var i = 0; i < data[0].length; i++) {
            str += "<th class=\"c-" + i + "\">" + data[0][i].replace(/ /g, '') + "</th>";
        }

        str += "</tr></thead><tbody>";

        var footer = "<tfoot><tr>";
        var once = false;

        // TBODY
        for (var i = 1; i < data.length; i++) {
            str += "<tr>";

            for (var j = 0; j < data[i].length; j++) {
                if (!once) {
                    footer += "<td></td>";
                }

                str += "<td class=\"c-" + j + "\">" + data[i][j] + "</td>";
            }

            str += "</tr>";
            once = true;
        }

        footer += "</tr></tfoot>";

        str += "<tbody>" + footer + "</table>";

        $(parent).append(str);
    });

    console.log(str);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// EXPORT TABLE TO csv
////
////	$("#btn-export").on("click", function() {
////	    wc.table2csv.apply(this, [$("#my-table"), "output-file.csv"]);
////	});
////
/////////////////////////////////////////////////////////////////////////////////
wc.table2csv = function ($table, filename) {
    wc.group("wc.table2csv");

    var $rows = $table.find('tr:has(th),tr:has(td)'),
        tmpColDelim = String.fromCharCode(11),
        // vertical tab character
    tmpRowDelim = String.fromCharCode(0),
        // null character

    colDelim = '","',
        rowDelim = '"\r\n"',
        csv = '"' + $rows.map(function (i, row) {
        var $row = $(row),
            $cols = $row.find('th,td');

        return $cols.map(function (j, col) {
            var $col = $(col),
                text = $col.text();

            return text.replace(/"/g, '""'); // escape double quotes
        }).get().join(tmpColDelim);
    }).get().join(tmpRowDelim).split(tmpRowDelim).join(rowDelim).split(tmpColDelim).join(colDelim) + '"',
        csvData = 'data:application/csv;charset=utf-8,' + encodeURIComponent(csv);

    if (window.navigator.msSaveBlob) {
        window.navigator.msSaveOrOpenBlob(new Blob([csv], {
            type: "text/plain;characterset=utf-8;"
        }), filename);
    } else {
        $(this).attr({
            "download": filename,
            "href": csvData,
            "target": "_blank"
        });
    }

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// TRANSFER EVENTS FROM ONE INPUT TO ANOTHER
//// wc.transferEvents("#src", "#dst")
/////////////////////////////////////////////////////////////////////////////////
wc.linkInputs = function (src, dst) {
    wc.group("wc.linkInputs:", src, dst);

    // TRANSFER EVENTS
    $(src).on("keyup", function () {
        $(dst).val($(this).val()).trigger("keyup");
    });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// FIX TABLE HEADER
//// USAGE: wc.fixTH("my-table", 100)
/////////////////////////////////////////////////////////////////////////////////
wc.fixTH = function (ele, offset) {
    wc.group("wc.fixTH:", ele, offset);

    if ($("#" + ele + "-anchor").length == 0) {
        $("#" + ele).after("<div id=\"" + ele + "-anchor\" style=\"height:0\"></div>");
    }

    $(window).scroll(function () {
        var scroll = $(window).scrollTop();
        var anchor_top = $("#" + ele).offset().top - offset;
        var anchor_bottom = $("#" + ele + "-anchor").offset().top;

        if (scroll > anchor_top && scroll < anchor_bottom) {
            clone_table = $("#clone");

            if (clone_table.length == 0) {
                clone_table = $("#" + ele).clone();
                clone_table.attr('id', 'clone');
                clone_table.css({ position: 'fixed', 'pointer-events': 'none', top: offset + "px" });
                clone_table.width($("#" + ele).width());

                $("#table-container").append(clone_table);
                $("#clone").css({ visibility: 'hidden' });
                $("#clone thead").css({ visibility: 'visible' });
            }
        } else {
            $("#clone").remove();
        }

        wc.groupEnd();
    });
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.dbQuery = function (restURL, successCB, errorCB) {
    wc.group("wc.query:", restURL);

    $.getJSON(restURL, function (data) {
        successCB(data);
    }).fail(function (jqXHR, textStatus, errorThrown) {
        errorCB([]);
    });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.popstate = function (func) {
    wc.group("wc.popstate");

    window.addEventListener('popstate', func);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.pushstate = function (page) {
    wc.group("wc.pushstate");

    history.pushState(null, null, "?page=" + page);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.refreshed = function (page) {
    wc.group("wc.refreshed");

    if (performance.navigation.type == 1) {
        var rval = true;
    } else {
        var rval = false;
    }

    wc.groupEnd();
    return rval;
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.parseQuery = function () {
    wc.group("wc.parseQuery");

    var queryString = document.location.search;

    var query = {};
    var pairs = (queryString[0] === '?' ? queryString.substr(1) : queryString).split('&');

    for (var i = 0; i < pairs.length; i++) {
        var pair = pairs[i].split('=');

        query[decodeURIComponent(pair[0])] = decodeURIComponent(pair[1] || '');
    }

    wc.log("QUERY:", query);

    wc.groupEnd();
    return query;
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.isChrome = function (page) {
    return (/Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor)
    );
};

/////////////////////////////////////////////////////////////////////////
//// ipad
/////////////////////////////////////////////////////////////////////////////
wc.isIPAD = function () {
    return navigator.userAgent.match(/iPad/i) != null;
};

/////////////////////////////////////////////////////////////////////////
//// wc.detectIE
/////////////////////////////////////////////////////////////////////////////
wc.detectIE = function () {
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf('MSIE ');
    var trident = ua.indexOf('Trident/');
    var edge = ua.indexOf('Edge/');

    if (msie > 0) {
        // IE 10 or older 
        //Do some stuff
    } else if (trident > 0) {
        // IE 11 
        //Do some stuff
    } else if (edge > 0) {
        // Edge 
        //Do some stuff
    } else {
        // other browser
        return false;
    }
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.resizer = function () {
    wc.group("wc.resizer");

    if (wc.isChrome) {
        $("body").append("\n\t<a style=\"display:none\" id=\"wc-resizer\" href='javascript:void((function(d)%7Bif(self!%3Dtop%7C%7Cd.getElementById(%27toolbar%27)%26%26d.getElementById(%27toolbar%27).getAttribute(%27data-resizer%27))return false%3Bd.write(%27<!DOCTYPE HTML><html style%3D\"opacity:0%3B\"><head><meta charset%3D\"utf-8\"/></head><body>\n\t<a data-viewport=\"375x667\"   data-icon=\"mobile\" data-version=\"7\">Apple iPhone 6/7</a>\n\t<a data-viewport=\"375x812\"   data-icon=\"mobile\" data-version=\"X\">Apple iPhone X</a>\n\t<a data-viewport=\"768x1024\"  data-icon=\"tablet\" data-version=\"P\">Apple iPad</a>\n\t<a data-viewport=\"1024x1366\" data-icon=\"tablet\" data-version=\"PP\">Apple iPad Pro</a>\n\t<script src=\"/Melify/tools/resizer/resizer.js\"></script>\n\t</body></html>%27)%7D)(document))%3B'></a>");

        jQuery(document).ready(function () {
            $("#wc-resizer").bind("click", function () {
                window.location.href = $(this).attr("href");
            });

            $("#wc-resizer").click();
        });
    }

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.upload = function (fname, content) {
    wc.group("wc.upload");

    if ($("#mtk-upload-form").length == 0) {
        $("body").append("\n\t\t<form id=\"mtk-upload-form\" method=\"post\" class=d-none>\n\t\t    <input type=\"text\" id=\"mtk-upload-fname\" name=\"uploadfname\"/><br>\n\t\t    <textarea id=\"mtk-upload-content\" name=\"uploadcontent\">HELLO</textarea>\n\t\t</form>");
    }

    $("#mtk-upload-fname").val(fname);
    $("#mtk-upload-content").val(content);

    wc.log("uploading to file:", fname);

    $("#mtk-upload-form").on("submit", function (e) {
        e.preventDefault();

        var x = $(this).serialize();

        $.ajax({
            url: "/mac/upload",
            type: "post",
            data: x,
            success: function success() {
                console.log("SUCCESS");
            }
        });
    });

    $("#mtk-upload-form").submit();

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.today = function () {
    wc.group("wc.today");

    return new Date().toISOString().slice(0, 10);

    wc.groupEnd();
};

//////////////////////////////////////////////////
// COMMIFY
/////////////////////////////////////////////////
wc.commify = function (num) {
    return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
};

/////////////////////////////////////////////////////////////////////////////////
//// GET CURRENT QUARTER
/////////////////////////////////////////////////////////////////////////////////
wc.getQuarter = function () {
    wc.group("wc.quarter");

    var date = new Date();
    var quarter = parseInt(date.getMonth() / 3) + 1;

    wc.groupEnd();
    return quarter;
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.marketIsOpen = function () {
    wc.group("wc.marketIsOpen");

    var now = moment(); // e.g. 11:00 am
    var open = moment('09:29 am', "HH:mm a");
    var close = moment('04:15 pm', "HH:mm a");

    wc.log("NOW:", now);

    res = now.isBetween(open, close);

    wc.groupEnd();
    return res;
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.magic = function () {
    wc.group("wc.magic");

    if (wcENV == "dev") return true;

    var now = wc.today().replace(/-/g, '').split('').sort().join('');

    while ($.cookie("magic") != now) {
        var magic = prompt("Say the magic word!");

        if (magic === null) {
            wc.groupEnd();
            wc.magic();
        }

        // SET MAGIC IN COOKIE
        $.cookie("magic", magic.split('').sort().join(''));
    }

    wc.groupEnd();
    return true;
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.ip = function (proc) {
    wc.group("wc.ip");

    $.getJSON('https://ipapi.co/json/', function (data) {
        proc(data.ip);
    });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.getMagic = function () {
    return wc.hash(wc.today()).toString();
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.isDigit = function (n) {
    wc.group("wc.isDigit:", n);
    wc.groupEnd();
    return !!n.trim() && n > -1;
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.shuffle = function (str) {
    wc.group("wc.shuffle:", str);

    var shuffled = str.split('').sort(function () {
        return 0.5 - Math.random();
    }).join('');

    wc.groupEnd();
    return shuffled.toUpperCase();
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.months = function (date1, date2) {
    wc.group("wc.months:", date1, date2);

    var sdate = moment(date1);
    var edate = moment(date2);
    var timeValues = [];

    while (edate > sdate || sdate.format('M') === edate.format('M')) {
        timeValues.push(sdate.format('YYYY-MM'));
        sdate.add(1, 'month');
    }

    wc.groupEnd();
    return timeValues;
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.quarters = function (date1, date2) {
    wc.group("wc.quarters:", date1, date2);

    var sdate = moment(date1);
    var edate = moment(date2);
    var timeValues = [];

    while (edate > sdate || sdate.format('Q') === edate.format('Q')) {
        timeValues.push(sdate.format('YYYY-MM'));
        sdate.add(1, 'quarter');
    }

    wc.groupEnd();
    return timeValues;
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.years = function (date1, date2) {
    wc.group("wc.years:", date1, date2);

    var date1 = moment(date1);
    var date2 = moment(date2);
    var years = date2.diff(date1, 'year');

    wc.groupEnd();
    return years;
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.getSearchParam = function (variable) {
    wc.group("wc.getSearchParam");

    var query = window.location.search.substring(1);
    var vars = query.split('&');

    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split('=');
        if (decodeURIComponent(pair[0]) == variable) {
            wc.groupEnd();
            return decodeURIComponent(pair[1]);
        }
    }

    wc.groupEnd();
    return "";
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.setSearchParam = function (value) {
    wc.group("wc.setSearchParam");

    window.history.pushState("", "", value);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////////
wc.today = function () {
    return new Date().toISOString().slice(0, 10);
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.hash = function (s) {
    return s.split("").reduce(function (a, b) {
        a = (a << 5) - a + b.charCodeAt(0);return a & a;
    }, 0);
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.block = function (ele) {
    var zi = $(ele).css("z-index");

    $(ele).attr("zi", zi).css({
        zIndex: -1,
        position: "absolute"
    }).css("position", "relative").wrap("<div class='wc-screen'></div>");
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.unblock = function (ele) {
    $(ele).css("postion", "relative").css("z-index", $(ele).attr("zi")).unwrap();
};

/////////////////////////////////////////////////////////////////////////////////
//// BEHAVES LIKE COOKIES. REMAIN ON USER'S BROWSER
/////////////////////////////////////////////////////////////////////////////////
wc.local.save = function (name, value) {
    wc.group("wc.local.save:", name, value);

    if (typeof Storage === "undefined") {
        alert("SORRY! NO WEB STORAGE SUPPORT..");
    } else {
        // STORE
        localStorage.setItem(name, value);
    }

    wc.groupEnd();
    return name;
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.local.restore = function (name) {
    wc.group("wc.local.restore:", name);

    var rval = localStorage.getItem(name);
    wc.log("VALUE:", rval);

    wc.groupEnd();
    return rval;
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.local.delete = function (name) {
    wc.group("wc.local.delete:", name);

    localStorage.removeItem(name);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.local.clear = function (name) {
    wc.group("wc.local.clear");

    localStorage.clear();

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// LIVES SO LONG AS USER IS IN THE APP
/////////////////////////////////////////////////////////////////////////////////
wc.session.save = function (name, value) {
    wc.group("wc.session.save:", name, value);

    if (typeof Storage === "undefined") {
        alert("SORRY! NO WEB STORAGE SUPPORT..");
    } else {
        // STORE
        sessionStorage.setItem(name, value);
    }

    wc.groupEnd();
    return name;
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.session.restore = function (name) {
    wc.group("wc.session.restore:", name);

    var rval = sessionStorage.getItem(name);
    wc.log("VALUE:", rval);

    wc.groupEnd();
    return rval;
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.session.delete = function (name) {
    wc.group("wc.session.delete:", name);

    sessionStorage.removeItem(name);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
////
/////////////////////////////////////////////////////////////////////////////////
wc.session.clear = function (name) {
    wc.group("wc.session.clear");

    sessionStorage.clear();

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.blink(".blinker", 500, 2000)
/////////////////////////////////////////////////////////////////////////////////
wc.blink = function (selector, duration, timeout) {
    wc.group("wc.blink");

    $(selector).animate({ opacity: 0.2 }, duration, "linear", function () {
        $(this).delay(100);
        $(this).animate({ opacity: 1 }, duration, function () {
            wc.blink(this, duration, timeout);
        });

        $(this).delay(100);
    });

    setTimeout(function () {
        $(selector).css("opacity", 1).animate().stop();
    }, timeout);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.backend(".blinker", 500, 2000)
/////////////////////////////////////////////////////////////////////////////////
wc.backend = function (cmnd, proc) {
    wc.group("wc.backend:", cmnd);

    $.get("/mtk/rest/os/backend?cmnd=" + encodeURIComponent(cmnd), function (data) {
        wc.groupEnd();
        proc(data);
    }).fail(function (jqXHR, textStatus, errorThrown) {
        wc.groupEnd();
        proc(null);
        console.error(errorThrown, textStatus);
    });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.wow()
/////////////////////////////////////////////////////////////////////////////////
wc.wow = function () {
    wc.group("wc.wow");

    $('head').append("<link href=\"/tk/lib/components/misc/webpack/node_modules/animate.css/animate.css\" rel=\"stylesheet\">\n\t <script src=\"/tk/lib/components/misc/webpack/node_modules/wow.js/dist/wow.js\"></script>");

    wc.wait4(".wow", function () {
        wow = new WOW().init();
    });

    wc.groupEnd();
    return true;
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.backToTop
/////////////////////////////////////////////////////////////////////////////////
wc.backToTop = function () {
    wc.group("wc.backToTop");

    $("<a href='#' class='wc-scroll-to-top'></a>").prependTo(document.body);

    $('head').append("\n\t<style type=\"text/css\">\n\t\t.wc-scroll-to-top {\n\t\t    width:100px; \n\t\t    height:100px;\n\t\t    position:fixed!important;\n\t\t    bottom:45%!important;\n\t\t    right:-20px!important;\n\t\t    display:none;\n\t\t    background: url('/tk/img/common/scroll-to-top.png') no-repeat 0px 20px;\n\t\t    background-size: 50px 50px;\n\t\t    z-index: 99999999!important;\n\t\t}\n\t\t.wc-scroll-to-top:hover{\n\t\t\ttext-decoration:none;\n\t\t    }\n\t\t}\n\t</style>");

    setTimeout(function () {
        //Check to see if the window is top if not then display button
        $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('.wc-scroll-to-top').fadeIn();
            } else {
                $('.wc-scroll-to-top').fadeOut();
            }
        });

        //Click event to scroll to top
        $('.wc-scroll-to-top').click(function () {
            $('html, body').animate({ scrollTop: 0 }, 400);
            return false;
        });
    }, 500);

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.backToTop
/////////////////////////////////////////////////////////////////////////////////
wc.confirm = function (msg) {
    wc.group("wc.backToTop:", msg);

    if (confirm(msg)) {
        var rval = true;
    } else {
        var rval = false;
    }

    wc.groupEnd();
    return rval;
};

/////////////////////////////////////////////////////////////////////////////////
//// wc.backToTop
/////////////////////////////////////////////////////////////////////////////////
wc.beep = function () {
    wc.group("wc.beep");

    var snd = new Audio("data:audio/wav;base64,//uQRAAAAWMSLwUIYAAsYkXgoQwAEaYLWfkWgAI0wWs/ItAAAGDgYtAgAyN+QWaAAihwMWm4G8QQRDiMcCBcH3Cc+CDv/7xA4Tvh9Rz/y8QADBwMWgQAZG/ILNAARQ4GLTcDeIIIhxGOBAuD7hOfBB3/94gcJ3w+o5/5eIAIAAAVwWgQAVQ2ORaIQwEMAJiDg95G4nQL7mQVWI6GwRcfsZAcsKkJvxgxEjzFUgfHoSQ9Qq7KNwqHwuB13MA4a1q/DmBrHgPcmjiGoh//EwC5nGPEmS4RcfkVKOhJf+WOgoxJclFz3kgn//dBA+ya1GhurNn8zb//9NNutNuhz31f////9vt///z+IdAEAAAK4LQIAKobHItEIYCGAExBwe8jcToF9zIKrEdDYIuP2MgOWFSE34wYiR5iqQPj0JIeoVdlG4VD4XA67mAcNa1fhzA1jwHuTRxDUQ//iYBczjHiTJcIuPyKlHQkv/LHQUYkuSi57yQT//uggfZNajQ3Vmz+Zt//+mm3Wm3Q576v////+32///5/EOgAAADVghQAAAAA//uQZAUAB1WI0PZugAAAAAoQwAAAEk3nRd2qAAAAACiDgAAAAAAABCqEEQRLCgwpBGMlJkIz8jKhGvj4k6jzRnqasNKIeoh5gI7BJaC1A1AoNBjJgbyApVS4IDlZgDU5WUAxEKDNmmALHzZp0Fkz1FMTmGFl1FMEyodIavcCAUHDWrKAIA4aa2oCgILEBupZgHvAhEBcZ6joQBxS76AgccrFlczBvKLC0QI2cBoCFvfTDAo7eoOQInqDPBtvrDEZBNYN5xwNwxQRfw8ZQ5wQVLvO8OYU+mHvFLlDh05Mdg7BT6YrRPpCBznMB2r//xKJjyyOh+cImr2/4doscwD6neZjuZR4AgAABYAAAABy1xcdQtxYBYYZdifkUDgzzXaXn98Z0oi9ILU5mBjFANmRwlVJ3/6jYDAmxaiDG3/6xjQQCCKkRb/6kg/wW+kSJ5//rLobkLSiKmqP/0ikJuDaSaSf/6JiLYLEYnW/+kXg1WRVJL/9EmQ1YZIsv/6Qzwy5qk7/+tEU0nkls3/zIUMPKNX/6yZLf+kFgAfgGyLFAUwY//uQZAUABcd5UiNPVXAAAApAAAAAE0VZQKw9ISAAACgAAAAAVQIygIElVrFkBS+Jhi+EAuu+lKAkYUEIsmEAEoMeDmCETMvfSHTGkF5RWH7kz/ESHWPAq/kcCRhqBtMdokPdM7vil7RG98A2sc7zO6ZvTdM7pmOUAZTnJW+NXxqmd41dqJ6mLTXxrPpnV8avaIf5SvL7pndPvPpndJR9Kuu8fePvuiuhorgWjp7Mf/PRjxcFCPDkW31srioCExivv9lcwKEaHsf/7ow2Fl1T/9RkXgEhYElAoCLFtMArxwivDJJ+bR1HTKJdlEoTELCIqgEwVGSQ+hIm0NbK8WXcTEI0UPoa2NbG4y2K00JEWbZavJXkYaqo9CRHS55FcZTjKEk3NKoCYUnSQ0rWxrZbFKbKIhOKPZe1cJKzZSaQrIyULHDZmV5K4xySsDRKWOruanGtjLJXFEmwaIbDLX0hIPBUQPVFVkQkDoUNfSoDgQGKPekoxeGzA4DUvnn4bxzcZrtJyipKfPNy5w+9lnXwgqsiyHNeSVpemw4bWb9psYeq//uQZBoABQt4yMVxYAIAAAkQoAAAHvYpL5m6AAgAACXDAAAAD59jblTirQe9upFsmZbpMudy7Lz1X1DYsxOOSWpfPqNX2WqktK0DMvuGwlbNj44TleLPQ+Gsfb+GOWOKJoIrWb3cIMeeON6lz2umTqMXV8Mj30yWPpjoSa9ujK8SyeJP5y5mOW1D6hvLepeveEAEDo0mgCRClOEgANv3B9a6fikgUSu/DmAMATrGx7nng5p5iimPNZsfQLYB2sDLIkzRKZOHGAaUyDcpFBSLG9MCQALgAIgQs2YunOszLSAyQYPVC2YdGGeHD2dTdJk1pAHGAWDjnkcLKFymS3RQZTInzySoBwMG0QueC3gMsCEYxUqlrcxK6k1LQQcsmyYeQPdC2YfuGPASCBkcVMQQqpVJshui1tkXQJQV0OXGAZMXSOEEBRirXbVRQW7ugq7IM7rPWSZyDlM3IuNEkxzCOJ0ny2ThNkyRai1b6ev//3dzNGzNb//4uAvHT5sURcZCFcuKLhOFs8mLAAEAt4UWAAIABAAAAAB4qbHo0tIjVkUU//uQZAwABfSFz3ZqQAAAAAngwAAAE1HjMp2qAAAAACZDgAAAD5UkTE1UgZEUExqYynN1qZvqIOREEFmBcJQkwdxiFtw0qEOkGYfRDifBui9MQg4QAHAqWtAWHoCxu1Yf4VfWLPIM2mHDFsbQEVGwyqQoQcwnfHeIkNt9YnkiaS1oizycqJrx4KOQjahZxWbcZgztj2c49nKmkId44S71j0c8eV9yDK6uPRzx5X18eDvjvQ6yKo9ZSS6l//8elePK/Lf//IInrOF/FvDoADYAGBMGb7FtErm5MXMlmPAJQVgWta7Zx2go+8xJ0UiCb8LHHdftWyLJE0QIAIsI+UbXu67dZMjmgDGCGl1H+vpF4NSDckSIkk7Vd+sxEhBQMRU8j/12UIRhzSaUdQ+rQU5kGeFxm+hb1oh6pWWmv3uvmReDl0UnvtapVaIzo1jZbf/pD6ElLqSX+rUmOQNpJFa/r+sa4e/pBlAABoAAAAA3CUgShLdGIxsY7AUABPRrgCABdDuQ5GC7DqPQCgbbJUAoRSUj+NIEig0YfyWUho1VBBBA//uQZB4ABZx5zfMakeAAAAmwAAAAF5F3P0w9GtAAACfAAAAAwLhMDmAYWMgVEG1U0FIGCBgXBXAtfMH10000EEEEEECUBYln03TTTdNBDZopopYvrTTdNa325mImNg3TTPV9q3pmY0xoO6bv3r00y+IDGid/9aaaZTGMuj9mpu9Mpio1dXrr5HERTZSmqU36A3CumzN/9Robv/Xx4v9ijkSRSNLQhAWumap82WRSBUqXStV/YcS+XVLnSS+WLDroqArFkMEsAS+eWmrUzrO0oEmE40RlMZ5+ODIkAyKAGUwZ3mVKmcamcJnMW26MRPgUw6j+LkhyHGVGYjSUUKNpuJUQoOIAyDvEyG8S5yfK6dhZc0Tx1KI/gviKL6qvvFs1+bWtaz58uUNnryq6kt5RzOCkPWlVqVX2a/EEBUdU1KrXLf40GoiiFXK///qpoiDXrOgqDR38JB0bw7SoL+ZB9o1RCkQjQ2CBYZKd/+VJxZRRZlqSkKiws0WFxUyCwsKiMy7hUVFhIaCrNQsKkTIsLivwKKigsj8XYlwt/WKi2N4d//uQRCSAAjURNIHpMZBGYiaQPSYyAAABLAAAAAAAACWAAAAApUF/Mg+0aohSIRobBAsMlO//Kk4soosy1JSFRYWaLC4qZBYWFRGZdwqKiwkNBVmoWFSJkWFxX4FFRQWR+LsS4W/rFRb/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////VEFHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAU291bmRib3kuZGUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMjAwNGh0dHA6Ly93d3cuc291bmRib3kuZGUAAAAAAAAAACU=");
    snd.play();

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
wc.getScript = function (src, async) {
    wc.group("wc.script:", src, async);

    // async = false WILL WAIT FOR SCRIPT TO LOAD

    $.ajax({
        async: async || false,
        url: src,
        dataType: "script"
    });

    wc.groupEnd();
};

/////////////////////////////////////////////////////////////////////////
//// 
/////////////////////////////////////////////////////////////////////////////
wc.timer = function (ele, maxtime, callback) {
    var _this = this;

    wc.group("wc.timer:", ele, maxtime, callback);

    // CREATE AN ELEMENT INSIDE THE APP TO SHOW PROGRESS
    // <h3 class=timer id=timer style=position:fixed;top:70px;left:10px;>...</h3>

    function pretty_time_string(num) {
        return (num < 10 ? "0" : "") + num;
    }

    var start = new Date();

    clearInterval(this.to);

    var to = setInterval(function () {
        var total_seconds = maxtime - (new Date() - start) / 1000;

        var hours = Math.floor(total_seconds / 3600);
        total_seconds = total_seconds % 3600;

        var minutes = Math.floor(total_seconds / 60);
        total_seconds = total_seconds % 60;

        var seconds = Math.floor(total_seconds);

        hours = pretty_time_string(hours);
        minutes = pretty_time_string(minutes);
        seconds = pretty_time_string(seconds);

        var currentTimeString = hours + ":" + minutes + ":" + seconds;

        if (currentTimeString.indexOf("-") != -1) {
            $(ele).text("DONE");
            clearInterval(_this.to);
            callback();
            return;
        }

        $(ele).text(currentTimeString);
    }, 1000);

    wc.groupEnd();
    return to;
};

//////////////////////////////////////////////////
// TURN LOGGING ON/OFF
/////////////////////////////////////////////////
if (wcENV === "dev") {
    $(window).keydown(function (e) {
        if (e.which == 17) {
            // CTRL
            $(".wc").addClass("ctrl-outline");

            $(".wc").each(function () {
                var id = $(this).attr("id");

                $(this).css("position", "relative").append("<div class='btn btn-sm btn-light border showoff shadow-lg' style=position:absolute;top:0;left:0;background:#BA68C8;color:#FFF>" + id + "</div>");
            });
        }
    }).keyup(function (e) {
        if (e.which == 17) {
            // CTRL
            $(".wc").removeClass("ctrl-outline");
            $(".showoff").remove();
        }
    });
} else {
    // TURN OFF DEBUGGING IN PROD
    wc.log = wc.group = wc.groupEnd = wc.error = wc.info = wc.warn = function () {};
}

////////////////////////////////////////////////////////////////////////////////////////////////////
// GOOGLE DATA LAYER
////////////////////////////////////////////////////////////////////////////////////////////////////
(function (w, d, s, l, i) {
    w[l] = w[l] || [];
    w[l].push({ 'gtm.start': new Date().getTime(), event: 'gtm.js' });
    var f = d.getElementsByTagName(s)[0],
        j = d.createElement(s),
        dl = l != 'dataLayer' ? '&l=' + l : '';
    j.async = true;j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
    f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-KV7VH6K');
// ENDGOOGLE DATA LAYER

////////////////////////////////////////////////////////////////////////////////////////////////////
// GOOGLE ANALYTICS
////////////////////////////////////////////////////////////////////////////////////////////////////
(function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;i[r] = i[r] || function () {
        (i[r].q = i[r].q || []).push(arguments);
    }, i[r].l = 1 * new Date();a = s.createElement(o), m = s.getElementsByTagName(o)[0];a.async = 1;a.src = g;m.parentNode.insertBefore(a, m);
})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
ga('create', 'UA-37505168-1', 'auto');
ga('send', 'pageview');
// END GOOGLE ANALYTICS