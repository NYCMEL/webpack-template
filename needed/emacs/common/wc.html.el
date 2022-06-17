;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-form
"
<wc-form name=\"my-form\" role=\"form\" id=\"my-form\" size=\"form-control-md\" style=\"border:1px #CECECE solid;padding:20px\">
</div>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-text
"
 <wc-text id=\"text-1\" name=\"fname\" label=\"First Name\" columns=\"4,8\" placeholder=\"Your first name\" help=\"First name is a required field\" data-error=\"Please enter alphanumeric\" required></wc-text>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-textarea
"
<wc-textarea id=\"my-notes\" label=\"Enter your Notes\" columns=\"4,8\" placeholder=\"Your notes ...\"  help=\"Notes is a required field\" required></wc-textarea>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-select
"
<wc-select name=\"v(color)\" id=\"select-1\" label=\"Pick a color\" columns=\"4,8\" help=\"Please pick a color\" data-error=\"color is a required field\" searchable=\"true\" value=\"1\" required>
	<option value=\"\">[Please Select]</option>
	<option value=\"1\">Red</option>
	<option value=\"2\">White</option>
	<option value=\"3\">Blue</option>
</wc-select>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-breadcrumb
"
	<wc-breadcrumb id=\"my-breadcrumb\">
 	    <ol class='breadcrumb'>
		<li class=\"breadcrumb-item\"><a href=\"#\">Home</a></li>
		<li class=\"breadcrumb-item\"><a href=\"#\">Products</a></li>
		<li class=\"breadcrumb-item active\">Audios</li>
	    </ol>
	</wc-breadcrumb>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-calendar
"
<wc-calendar id=\"my-calendar\" name=\"adate\" label=\"Date\" columns=\"4,8\" placeholder=\"pick a date\" help=\"date is a required field\" data-error=\"must be a date format...\" required></wc-calendar>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-checkbox
"
<wc-checkbox id=\"my-checkbox-1\" name=\"v(agree)\" label=\"I Agree with Terms\" checked required></wc-checkbox>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-radiobutton
"
<wc-radiobutton id=\"radio-1\" name=\"v(radio)\" label=\"Apple\" value=\"1\" required></wc-radiobutton>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-groupbox
"
<wc-groupbox id=\"groupbox-1\" name=\"v(gbox)\" label=\"Choose a Fruit\" columns=\"4,8\">
    <div class=\"float-sm-left\">
	<wc-radiobutton id=\"radio-1\" name=\"v(radio)\" label=\"Apple\"  value=\"1\" required></wc-radiobutton>
    </div>
    <div class=\"float-sm-left\">
	<wc-radiobutton id=\"radio-2\" name=\"v(radio)\" label=\"Orange\" value=\"2\"></wc-radiobutton>
    </div>
    <div class=\"float-sm-left\">
	<wc-radiobutton id=\"radio-3\" name=\"v(radio)\" label=\"Peach\"  value=\"3\"></wc-radiobutton>
    </div>
</wc-groupbox>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-dropdown
"
<wc-dropdown id=\"my-dropdown\" title=\"My Dropdown\" width=\"180px\" type=\"btn-outline-danger\">
	<a class=\"dropdown-item\" href=\"#\">Action</a>
	<a class=\"dropdown-item\" href=\"#\">Another action</a>
	<a class=\"dropdown-item\" href=\"#\">Something else here</a>
</wc-dropdown>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-listbox
"
<wc-listbox id=\"my-listbox\" width=\"400px\">
    <ul class=\"list-group\">
	<li id=\"item-1\" class=\"list-group-item\">First item</li>
	<li id=\"item-2\" class=\"list-group-item active\">Second item</li>
	<li id=\"item-3\" class=\"list-group-item\">Third item</li>
	<li id=\"item-4\" class=\"list-group-item\">Fourth item</li>
	<li id=\"item-5\" class=\"list-group-item\">Fifth item</li>
    </ul>
</wc-listbox>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-maker
"
<wc-maker class=\"\" id=\"my-maker-1\" >
	<h4><i class=\"fa fa-info-circle\"></i> Used by maker to create consistent components</h4>
	<p>you can click on me to get a callback</p>
</wc-maker>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-modal
"
	<!-- Button trigger modal -->
	<button type=\"button\" class=\"btn btn-primary btn-sm\" data-toggle=\"modal\" data-target=\"#my-modal-dialog\" data-backdrop=\"static\" data-keyboard=\"false\">Launch my modal</button>
	
	<!-- SAMPLE -->
	<wc-modal id=\"my-modal\" title=\"My modal dialog title\" width=\"600px\" height=\"400px\">
	    <!-- START ACTUAL COMPONENT CODE -->
	    <wc-modal-body>
		<h4>Modal content goes here</h4>
		Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
		tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
		At vero eos et accusam et justo duo dolores et ea rebum.
		Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
		Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
		sed diam nonumy eirmod tempor 
	    </wc-modal-body>
	    <!-- END ACTUAL COMPONENT CODE -->

	    <wc-modal-controls>
		<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>
		<button type='button' class='btn btn-primary' onclick=\"alert('success')\">Save changes</button>
	    </wc-modal-controls>
	</wc-modal>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-slide
"
	<wc-slide id=\"my-slide\" toggler=\"toggle-menu\" speed=\"300\" search=\"true\" title=\"Application Menus\">
	    <wc-slide-menus>
		<ul>
		    <li><a id=\"link-1000\" href=\"#\">Card</a></li>
		    <li><a id=\"link-2000\" href=\"#\">Checkbox</a></li>
		    <li><a id=\"link-3000\" href=\"#\">Dialog</a></li>
		    <li><a id=\"link-4000\" href=\"#\">Dropdown</a></li>
		    <li><a id=\"link-5000\" href=\"#\">Form</a></li>
		    <li><a id=\"link-6000\" href=\"#\">Groupbox</a></li>
		    <li><a id=\"link-7000\" href=\"#\">Include</a></li>
		    <li><a id=\"link-8000\" href=\"#\">Listbox</a></li>
		    <li><a id=\"link-9000\" href=\"#\">Make</a></li>
		    <li><span>Panel Types</span>
			<ul>
			    <li><a id=\"link-10000\" href=\"#\">Panel</a></li>
			    <li><a id=\"link-11000\" href=\"#\">Accordion</a></li>
			</ul>
		    </li>
		</ul>
	    </wc-slide-menus>
	</wc-slide>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-table-json
"
 	<wc-table id='my-table' class=\"table table-striped\" json=\"../cfg/table.json\" datatable='{\"pagination\":false, \"search\":true, \"info\":false, \"height\":300}'>
	    <!-- WILL BE POPULATED WITH JSON CONTENT -->
	</wc-table>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-table
"
    <wc-table id='my-table' datatable='{\"pagination\":false, \"search\":false, \"info\":false, \"height\":\"300px\", \"sort\":{\"column\":2, \"direction\":\"asc\"}}'>
	<table class=\"table table-striped table-hover\" id=\"my-table-table\" style={{ border: '1px #CECECE solid' }}>
	    <thead>
		<tr>
		    <th>Issue Date</th>
		    <th>Product</th>
		    <th>Qty</th>
		    <th>Paid</th>
		    <th>Balance</th>
		    <th>Total</th>
		</tr>   
	    </thead>
		    <tbody>
		<tr>
		    <td>Jan 20, 2015</td>
		    <td>Normal Sim</td>
		    <td>1000</td>
		    <td><span class=\"pull-right\">$18,893.00</span></td>
		    <td><span class=\"pull-right\">$131,107.00</span></td>
		    <td><span class=\"pull-right\">$150,000.00</span></td>
		</tr>
	    </tbody>
	</table>
    </wc-table>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-toolbar
"
    <wc-toolbar id=\"my-toolbar-h\" class=\"wc-toolbar-horizontal\" bg=\"#EF6C00\" fg=\"#FFF\" isize=\"18px\">
	<wc-toolbar-item id=\"tb-1\" icon=\"save\"></wc-toolbar-item>
	<wc-toolbar-item wc-toolbar-sep></wc-toolbar-item>
	<wc-toolbar-item id=\"tb-2\" icon=\"cut\"></wc-toolbar-item>
	<wc-toolbar-item id=\"tb-3\" icon=\"copy\"></wc-toolbar-item>
	<wc-toolbar-item id=\"tb-4\" icon=\"paste\"></wc-toolbar-item>
	<wc-toolbar-item wc-toolbar-sep></wc-toolbar-item>
	<wc-toolbar-item id=\"tb-5\" icon=\"times\"></wc-toolbar-item>
    </wc-toolbar>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-typeahead
"
<wc-typeahead id=\"my-typeahead-2\" placeholder=\"Medium...\"  url=\"../cfg/states.json\" name=\"long\" value=\"short\" style=\"font-size:200%\" show=\"5\"></wc-typeahead>
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc-card
"
    <wc-card id=\"my-card-1\">
	<wc-card-header>
	    Card Header (image top)
	</wc-card-header>
		<wc-card-img position=\"top\">
	    <img src=\"/Melify/mtk/dev/tk/lib/components/w/img/tmp/12s.jpg\" width=\"100%\" />
	</wc-card-img>
		<wc-card-body>
	    Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt 
	    sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren
	</wc-card-body>
		<wc-card-footer>
	    Card Footer
	</wc-card-footer>
    </wc-card>
");
