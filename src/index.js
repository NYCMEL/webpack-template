////////////////////////////////////////////////////////////////
// REQUIRED BY ALL
////////////////////////////////////////////////////////////////
import "bootstrap";
import "./w/scss/_bootstrap.scss"

import "pubsub-js"; /* PUBLISHER SUBSCRIBER */

import "./w/scss/_wc.scss"; /* GENERAL STYLES */
import "./w/js/wc"; /* COMMON JS FUNCTION */

import "./w/scss/_tk.scss"; /* LOADING STYLES */
import "./w/js/tk.js"; /* DATA BINDING, LOADING ETC. */

import "jquery.cookie"; /* COOKIE SETTER/GETTER */

import "./w/js/include"; /* ALLOW TO INCLUDE URL(S) */

import "./w/js/tests"; /* COMPONENT TESTER */

////////////////////////////////////////////////////////////////
// PER COMPONENT
////////////////////////////////////////////////////////////////
 
import "./w/scss/_include.scss";
		    import "./w/js/include";
		

		    import "./w/scss/_blank.scss";
		    import "./w/js/blank";

