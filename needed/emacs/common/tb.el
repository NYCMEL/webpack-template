;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-badge
 "put [span class=\"badge\" \"A\"]")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-includes-12-column
 "
    include \"/tk/inc/bootstrap-12/css/bootstrap.min.css\"
    include \"/tk/inc/bootstrap-12/js/bootstrap.min.js\"
    include \"/tk/inc/bootstrap-12/js/holder.js\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-font-awesome
 "
    include \"/tk/jquery/gits/Font-Awesome/css/font-awesome.min.css\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-place-holder
 "
        include \"/tk/inc/bootstrap-12/js/holder.js\"

	put [img \"holder.js/100%x300\"]
	put [img \"holder.js/100%x300/industrial\" class=\"img-rounded\"]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-icon "<i class='icon-envelope'></i>")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-meta-viewport
 "
    put {
	<meta charset=\"utf-8\">
	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
	<meta name=\"description\" content=\"applications at the speed of thought\">
	<meta name=\"author\" content=\"Melify.com\">
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-container
 "
    division class=\"container\" {
	division class=\"row\" {
	    division class=\"col-md-12\" {
		p [lorem 50]
	    }
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-row
 "
	division class=\"row\" {
	    division class=\"col-sm-12\" {
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-col
 "
    division class=\"col-sm-12\" {
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-page-header
 "
	division class=\"page-header\" {
	    h1 \"Example page header <small>Subtext for header</small>\"
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-menu-dropdown
 "
	division class=\"dropdown clearfix\" {
	    put [url \"Dropdown <b class=caret></b>\" \"#\" id=\"dropdownMenu\" role=\"button\" class=\"dropdown-toggle btn btn-success\" data-toggle=\"dropdown\"]

	    set menus [subst {
		page1 \"Page 1\" \"[URL callback test::page1]\"
		page2 \"Page 2\" \"[URL callback test::page2]\"
		-     -          -
		page3 \"Page 3\" \"[URL callback test::page3]\"
	    }]

	    bullet_list class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dropdownMenu\" {
		foreach {i j k} $menus {
		    if {$i == \"-\"} {
			li role=\"presentation\" class=\"divider\" \"\"
		    } else {
			li id=\"$i\" role=\"presentation\" [url \"$j\" \"$k\" role=\"menuitem\" tabindex=\"-1\"]
		    }
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-btn-group
 "
	division class=\"btn-group\" style=\"margin: 9px 0 5px\" {
	    set btns {
		page1 \"Page 1\" \"flipPage(1)\"
		page2 \"Page 2\" \"flipPage(2)\"
		page3 \"Page 3\" \"flipPage(3)\"
	    }

	    foreach {i j k} $btns {
		button $j type=\"button\" id=\"$i\" class=\"btn btn-default\" onclick=\"$k\"
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-btn-close
 "
<button class=\"close\">&times;</button>
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-btn-loading
 "
	button \"CLICK TO LOAD\" id=\"btn\" type=\"button\" id=\"fat-btn\" data-loading-text=\"Working...\" class=\"btn btn-primary\" style=width:200px

	javascript {
	    put {
		$(\"#btn\").click(function() {
		    $(\"#btn\").button('loading');
		    
		    setTimeout(function(){
			$(\"#btn\").button('reset');
		    }, 2000);
		});	    
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-menu-dropdown-btn
 "
	division class=\"btn-group\" {
	    button \"[lorem 5]\" type=\"button\" class=\"btn btn-default\"

	    put {
		<button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\"><span class=\"caret\"></span></button>
	    }

	    set menus [subst {
		page1 \"Page 1\" \"[URL callback test::page1]\"
		page2 \"Page 2\" \"[URL callback test::page2]\"
		-     -          -
		page3 \"Page 3\" \"[URL callback test::page3]\"
	    }]

	    bullet_list class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dropdownMenu\" {
		foreach {i j k} $menus {
		    if {$i == \"-\"} {
			li role=\"presentation\" class=\"divider\" \"\"
		    } else {
			li id=\"$i\" role=\"presentation\" [url \"$j\" \"$k\" role=\"menuitem\" tabindex=\"-1\"]
		    }
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-input-group-1
 "
	division class=\"input-group\" {
	    put [span class=\"input-group-addon\" \"\$\"]
	    text ta= class=\"form-control\"
	    put [span class=\"input-group-addon\" \".00\"]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-input-group-2
 "
	division class=\"input-group\" {
	    text ta= class=\"form-control\"

	    put [span class=\"input-group-btn\" [buffer {
		button \"GO\" class=\"btn btn-success\" type=\"button\"
	    }]]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-input-group-with-dropdown
 "
	division class=\"input-group\" {
	    text ta= class=\"form-control\"

	    division class=\"input-group-btn\" {
		put {
		    <button type=\"button\" class=\"btn btn-default\" tabindex=\"-1\">Search</button>
		    <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" tabindex=\"-1\">
		    <span class=\"caret\"></span>
		    </button>
		}

		bullet_list class=\"dropdown-menu pull-right\" role=\"menu\" {
		    li [url \"[lorem 3]\"]
		    li [url \"[lorem 3]\"]
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-tabs
 "
	# nav-justified (to stretch)
	bullet_list class=\"nav nav-tabs\" {
	    set menus [subst {
		page1 \"Page 1\" \"[URL callback test::page1]\"
		page2 \"Page 2\" \"[URL callback test::page2]\"
		page3 \"Page 3\" \"[URL callback test::page3]\"
	    }]

	    if {[info exist active] == 0} {
		set active [lindex $menus 0]
	    }

	    foreach {i j k} $menus {
		set state [expr {($active == $i) ? \"active\" : \"\"}]

		li class=\"$state\" [url \"$j\" \"#\"]
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-tabs-masthead
 "
    include \"/tk/inc/bootstrap-12/css/jumbotron.tabs.css\"

    set menus {
	tab-1 \"Home\" \"#\"
	tab-2 \"Products\" \"#\"
	tab-3 \"Downloads\" \"#\"
	tab-4 \"This\" \"#\"
	tab-5 \"And That\" \"#\"
    }

    division class=\"masthead\" {
	h3 class=\"text-muted\" \"Melified\"
	
	bullet_list class=\"nav nav-justified\" {
	    foreach {i j k} $menus {
		set state [expr {($i == [lindex $menus 0]) ? \"active\" : \"\"}]

		li class=\"$state\" [url \"$j\" \"#\"]
	    }
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-pills
 "
	bullet_list class=\"nav nav-pills nav-stacked\" {
	    li class=\"active\" [url \"[lorem 3]\"]
	    li class=\"normal\" [url \"[lorem 3]\"]
	    li class=\"normal\" [url \"[lorem 3]\"]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-navbar-with-header
 "
	tag nav class=\"navbar navbar-default\" role=\"navigation\" {
	    division class=\"navbar-header\" {
		put {
		    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-ex3-collapse\">
		    <span class=\"sr-only\">Toggle navigation</span>
		    <span class=\"icon-bar\"></span>
		    <span class=\"icon-bar\"></span>
		    <span class=\"icon-bar\"></span>
		    </button>
		}

		put [url \"BRAND\" \"#\" class=\"navbar-brand\"]
	    }

	    division class=\"collapse navbar-collapse navbar-ex3-collapse\" {
		p class=\"navbar-text\" \"Signed in as Mark Otto\"
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-navbar-fixed
 "
	array set pages {
	    lhs {
		page1 \"Home\"	  \"#\"
		page2 \"Products\"  \"#\"
		page3 \"Downloads\" \"#\"
	    }

	    rhs {
		login	\"Sign In\" \"#\"
	    }
	}

	tag nav class=\"navbar navbar-default navbar-fixed-top navbar-inverse\" role=\"navigation\" {
	    # BRAND AND TOGGLE GET GROUPED FOR BETTER MOBILE DISPLAY
	    division class=\"navbar-header\" {
		put {
		    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-ex5-collapse\">
		    <span class=\"sr-only\">Toggle navigation</span>
		    <span class=\"icon-bar\"></span>
		    <span class=\"icon-bar\"></span>
		    <span class=\"icon-bar\"></span>
		    </button>
		    <a class=\"navbar-brand\" href=\"#\">BRAND</a>
		}
	    }

	    # COLLECT THE NAV LINKS, FORMS, AND OTHER CONTENT FOR TOGGLING
	    division class=\"collapse navbar-collapse navbar-ex5-collapse\" {
		bullet_list class=\"nav navbar-nav\" {
		    foreach {i j k} $pages(lhs) {
			li id=\"$i\" [url $j $k]
		    }
		}

		bullet_list class=\"nav navbar-nav navbar-right\" {
		    foreach {i j k} $pages(rhs) {
			li id=\"$i\" [url $j $k]
		    }
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-breadcrumb
 "
	set crumbs [subst {
	    page1 \"Home\"      \"#\"
	    page2 \"Downloads\" \"#\"
	    page3 \"Products\"  \"#\"
	}]

	set last [expr [llength $crumbs] / 3*2]

	number_list class=\"breadcrumb\" style=\"margin-bottom: 5px\" {
	    foreach {i j k} $crumbs {
		if {[lindex $crumbs $last] == $i} {
		    li id=$i class=\"active\" $j
		} else {
		    li id=$i [url $j $k]
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-pagination
 "
	bullet_list class=\"pagination\" {
	    li [url \"&laquo;\" \"#\"]
	    li class=\"active\" [url \"[lorem 2]\" \"#\"]
	    li [url \"[lorem 2]\" \"#\"]
	    li [url \"[lorem 2]\" \"#\"]
	    li class=\"disabled\" [url \"[lorem 2]\" \"#\"]
	    li [url \"&raquo;\" \"#\"]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-pager
 "
	bullet_list class=\"pager\" {
	    li class=\"previous\" [url \"&larr; Older\" \"#\"]
	    li class=\"next\" [url \"Newer &rarr;\"  \"#\"]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-label
 "
	put [span class=\"label label-danger\" \"Default\"]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-badge
 "
	put [span class=\"badge\" \"42\"]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-pills-with-badges
 "
	bullet_list  class=\"nav nav-pills nav-stacked\" style=\"max-width: 260px\" {
	    foreach i {1 2 3 4} {
		set state [expr {($i == 1) ? \"active\" : \"\"}]
		li class=\"$state\" [url \"[lorem 3] <span class='badge pull-right'>42</span>\" \"#\"]
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-jumbotron
 "
	division class=\"jumbotron\" {
	    division class=\"container\" {
		h1 \"Hello, world!\"
		p [lorem 20]
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-alert-dismissable
 "
	division class=\"alert alert-warning alert-dismissable\" {
	    button \"x\" type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\"
	    p [lorem 100]
	    put [url [lorem 4] \"#\" class=\"alert-link\"]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-progressbar
 "
	division class=\"progress progress-striped active\" {
	    division class=\"progress-bar\" role=\"progressbar\" aria-valuenow=\"60\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 60%\" {
		put [span class=\"sr-only\" \"60% Complete\"]
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-progressbar-stacked
 "
	division class=\"progress\" {
	    division class=\"progress-bar progress-bar-success\" style=\"width: 35%\" {
		put [span class=\"sr-only\" \"35% Complete (success)\"]
	    }
	    division class=\"progress-bar progress-bar-warning\" style=\"width: 20%\" {
		put [span class=\"sr-only\" \"20% Complete (warning)\"]
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-list-group
 "
	bullet_list class=\"list-group\" {
	    set badge \"<span class=badge>[math::random 0 20]</span>\"

	    put [url \"[lorem 3] $badge\" \"#\" class=\"list-group-item active\"]
	    put [url \"[lorem 3]\" \"#\" class=\"list-group-item\"]
	    put [url \"[lorem 3]\" \"#\" class=\"list-group-item\"]
	    put [url \"[lorem 3]\" \"#\" class=\"list-group-item\"]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-list-group-custom
 "
	division class=\"list-group\" {
	    put [subst {
		<a href=\"#\" class=\"list-group-item active\">
		<h4 class=\"list-group-item-heading\">[lorem 4]</h4>
		<p class=\"list-group-item-text\">[lorem 30]</p>
		</a>

		<a href=\"#\" class=\"list-group-item\">
		<h4 class=\"list-group-item-heading\">[lorem 4]</h4>
		<p class=\"list-group-item-text\">[lorem 30]</p>
		</a>
	    }]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-panel
 "
	division class=\"panel panel-primary\" {
	    division class=\"panel-heading\" {
		h3 class=\"panel-title\" \"PANEL HEADING\"
	    }
	    division class=\"panel-body\" {
		put [lorem 100]
	    }
	    division class=\"panel-footer\" {
		put [lorem 5]
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-table
 "
	set cols 6
	set rows 4

	division class=\"table-responsive\" {
	    table id=\"mytable\" class=\"table table-hover table-striped table-bordered table-condensed\" {
		table_head {
		    table_row {
			for {set c 0} {$c < $cols} {incr c} {
			    table_th {
				put [string toupper [lorem 2]]
			    }
			}
		    }
		}

		table_body {
		    for {set r 0} {$r < $rows} {incr r} {
			table_row {
			    for {set c 0} {$c < $cols} {incr c} {
				table_data {
				    put [lorem 3]
				}
			    }
			}
		    }
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-inline
 "
	tk::form -name \"form-name\" -class \"form-inline\" -callback \"form::callback\" -guts {
	    division class=\"form-group\" [style margin-right 5px] {
		label class=\"sr-only\" for=\"email\" \"[lorem 3]\"
		text email= type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"Enter email\" required
	    }

	    division class=\"form-group\" [style margin-right 5px] {
		label class=\"sr-only\" for=\"paswd\" \"[lorem 3]\"
		text paswd= type=\"password\" class=\"form-control\" id=\"paswd\" placeholder=\"Password\" required
	    }

	    division class=\"checkbox\" {
		label [eval {
		    checkbox type=\"checkbox\" [style margin-right 5px]
		    put \"Keep me posted\"
		}]
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-horizontal
 "
	tk::form -name \"form-name\" -class \"form-horizontal\" -callback \"form-callback\" -guts {
	    division class=\"form-group\" {
		label for=\"email\" class=\"col-sm-2 control-label\" \"Email\"

		division class=\"col-sm-10\" {
		    text email= class=\"form-control\" id=\"email\" placeholder=\"Email\"
		}
	    }

	    division class=\"form-group\" {
		label for=\"paswd\" class=\"col-sm-2 control-label\" \"Password\"

		division class=\"col-sm-10\" {
		    text paswd= class=\"form-control\" id=\"paswd\" placeholder=\"Password\"
		}
	    }

	    division class=\"form-group\" {
		division class=\"col-sm-offset-2 col-sm-10\" {
		    division class=\"checkbox\" [style margin-top -5px] {
			label [eval {
			    checkbox remember= [style margin-top 10px]
			    put \"Remember me\"
			}]
		    }
		}
	    }

	    division class=\"form-group\" {
		label for=\"description\" class=\"col-sm-2 control-label\" \"Description\"

		division class=\"col-sm-10\" {
		    textarea description= class=\"form-control\" rows=\"3\" id=\"description\" placeholder=\"Description\"
		}
	    }

	    division class=\"form-group\" {
		division class=\"col-sm-offset-2 col-sm-10\" {
		    button \"Sign in\" type=\"submit\" class=\"btn btn-default\"
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-text
 "
	text ta= type=\"text\" class=\"form-control\" placeholder=\"Text input\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-text-area
 "
	textarea ta= class=\"form-control\" rows=\"3\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-checkbox
 "
    checkbox v(cb)=1 type=\"checkbox\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-checkbox-label
 "
	label [eval {
	    checkbox v(cb)=1 type=\"checkbox\"
	    put \"&nbsp;Yes\"
	}]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-checkbox-label-label
 "
	foreach {i j} {1 Yes 0 No 2 Maybe} {
	    label class=\"checkbox-inline\" [eval {
		checkbox v(cb)=$i type=\"checkbox\" id=\"cb-$i\"
		put \"&nbsp;$j\"
	    }]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-radio-button
 "
	foreach i {1 2 3} {
	    set state [expr {($i == 1) ? \"checked\" : \"\"}]

	    # radio-inline 
	    division class=\"radio\" {
		put \"<label>\"
		radio_button rb= type=\"radio\" value=\"$i\" $state
		put [lorem 3]
		put \"</label>\"
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-select
 "
	select sel class=\"form-control\" {
	    foreach i {1 2 3 4 5} {
		option [lorem 5] value=$i
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-select-label
 "
	label \"Pick One:\"
	select sel class=\"form-control\" {
	    foreach i {1 2 3 4 5} {
		option [lorem 5] value=$i
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-static
 "
	label class=\"col-sm-2 control-label\" \"Email:\"

	division {
	    put [span class=\"form-control-static\" \"email@example.com\"]
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-form-button
 "
	# btn-block or disabled=\"disabled\"
	button [lorem 3] type=\"button\" class=\"btn btn-primary\" disabled=\"disabled\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-popover
 "
	set content \"And here's some amazing content. It's very engaging. right?\"
	put [url \"Help?\" \"#\" class=\"btn btn-lg btn-danger\" data-toggle=\"popover\" data-content=\"$content\" title=\"Title goes here\"]
	    
	javascript {
	    put {
		$(\"[data-toggle='popover']\").popover()
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-dialog-modal
 "
	put [url \"Launch demo modal\" \"#myModal\" data-toggle=\"modal\" class=\"btn btn-primary btn-lg\"]

	division id=\"myModal\" class=\"modal fade\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\" style=\"display:none\" data-backdrop=\"static\" {
	    division class=\"modal-dialog\" {
		division class=\"modal-content\" {
		    division class=\"modal-header\" {
			button \"x\" type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"

			h4 class=\"modal-title\" id=\"myModalLabel\" \"Modal Heading\"
		    }

		    division class=\"modal-body\" {
			put [lorem 100]
		    }
		    
		    division class=\"modal-footer\" {
			button \"Close\" type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"
			button \"Save changes\" type=\"button\" class=\"btn btn-primary\"
		    }
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-carousel
 "
	set csize 3

	division id=\"carousel-example\" class=\"carousel slide\" [style background #333 height 500px] {
	    number_list class=\"carousel-indicators\" {
		for {set i 0} {$i < $csize} {incr i} {
		    set state [expr {($i == 0) ? \"active\" : \"\"}]
		    li data-target=\"#carousel-example\" data-slide-to=\"$i\" class=\"$state\" {}
		}
	    }

	    division class=\"carousel-inner\" {
		for {set i 0} {$i < $csize} {incr i} {
		    set state [expr {($i == 0) ? \"active\" : \"\"}]

		    division class=\"item $state\" {
			put [img \"/tk/img/common/placeholder.png\" [style width 100% height 500px]]

			division class=\"carousel-caption\" {
			        h3 \"SLIDE-$i\"
			    p [lorem 10]
			}
		    }
		}
	    }

	    put [url [span class=\"icon-prev\" \"\"] \"#carousel-example\" class=\"left  carousel-control\" data-slide=\"prev\"]
	    put [url [span class=\"icon-next\" \"\"] \"#carousel-example\" class=\"right carousel-control\" data-slide=\"next\"]
	}
    }

    javascript {
	put {
	    $(\".carousel\").carousel({interval: 1000, wrap: true})
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-tooltip
 "
	set tooltip [lorem 10]
	put [url \"TOOLTIP ON TOP\" \"#\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" title=\"$tooltip\"]

	javascript {
	    put {
		$(\"[data-toggle='tooltip']\").tooltip()
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-tabable
 "
	# $(\"#myTab a[href=\"#profile\"]\").tab(\"show\")
	# $(\"#myTab a:first\").tab(\"show\")
	# $(\"#myTab a:last\").tab(\"show\")
	# $(\"#myTab li:eq(2) a\").tab(\"show\")

	bullet_list id=\"myTab\" class=\"nav nav-tabs\" {
	    for {set i 0} {$i < 5} {incr i} {
		set state [expr {($i == 0) ? \"active\" : \"\"}]
		li class=\"$state\" [url [lorem 2] \"#page-$i\" data-toggle=\"tab\"]
	    }
	}

	division id=\"myTabContent\" class=\"tab-content\" {
	    for {set i 0} {$i < 5} {incr i} {
		set state [expr {($i == 0) ? \"active\" : \"\"}]

		division class=\"tab-pane fade in $state\" id=\"page-$i\" {
		    p [lorem 50]
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-accordion
 "
	division class=\"panel-group\" id=\"accordion\" {
	    for {set i 0} {$i < 4} {incr i} {
		division class=\"panel panel-default\" {
		    division class=\"panel-heading\" {
			h4 class=\"panel-title\" [url \"[lorem 4]\" \"#div-$i\" class=\"accordion-toggle collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\"]
		    }

		    division id=\"div-$i\" class=\"panel-collapse collapse\" style=\"height:0px\" {
			division class=\"panel-body\" {
			    p [lorem 200]
			}
		    }
		}
	    }
	}

	javascript {
	    put {
		$(\"#accordion\").on(\"show.bs.collapse\", function () {
		    alert(\"SHOW\")
		})	    

		$(\"#accordion\").on(\"hide.bs.collapse\", function () {
		    alert(\"HIDE\")
		})	    
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-afix
 "
	division class=\"container\" {
	    division class=\"row\" {
		division class=\"col-sm-4\" {
		    division id=\"myAffix\" data-spy=\"affix\" data-offset-top=\"50\" {
			foreach i {1 2} {
			    division [style width 300px] {
				p [lorem 50]
			    }
			}
		    }
		}
		division class=\"col-sm-8\" {
		    p [lorem 300]
		    p [lorem 300]
		    p [lorem 300]
		    p [lorem 300]
		}
	    }
	}
	
	javascript {
	    put {
		$(\"#myAffix\").affix()
	    }
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-auto-complage
 "
    # NOT FULLY WORKING

    set states {
	Alabama  Alaska  Arizona  Arkansas  California  Colorado  Connecticut  Delaware  
	Florida  Georgia  Hawaii  Idaho  Illinois  Indiana  Iowa  Kansas  Kentucky  
	Louisiana  Maine  Maryland  Massachusetts  Michigan  Minnesota  Mississippi  Missouri 
	Montana  Nebraska  Nevada  New Hampshire  New Jersey  New Mexico  New York  North Dakota  
	North Carolina  Ohio  Oklahoma  Oregon  Pennsylvania  Rhode Island  South Carolina  
	South Dakota  Tennessee  Texas  Utah  Vermont  Virginia  Washington  West Virginia  
	Wisconsin  Wyoming
    }
    
    set data \"\[\"

    foreach i $states {
	append data \"'$i',\"
    }
    set data [string replace $data end end]

    append data \"\]\"

    division [style padding 100px] {
	put {
	    <input type=\"text\" class=\"typeahead span3\" style=\"margin: 0 auto;\" data-provide=\"typeahead\" data-items=\"4\" data-source=$data>
	}

	javascript {
	    put {
		$(\".typeahead\").typeahead()
	    }
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-media
 "
    include \"/GitHub/bootstrap/docs/assets/js/vendor/holder.js\"
    
    division [style margin 100px] {
	bullet_list class=\"media-list\" {
	    li class=\"media\" [eval {
		division class=\"pull-left\" [style margin-right 5px] {
		    put [url \"<img src=holder.js/100x100/industrial>\" \"#\"]
		}

		division class=\"media-body\" {
		    h4 class=\"media-heading\" \"Media heading\"

		    p [lorem 50]
		}
	    }]
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-text-types
 "
    text password datetime datetime-local date month time week number email url search tel and color
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-column-ordering
 "
	division class=\"row\" {
	    division class=\"col-md-9 col-md-push-3\" [style background wheat] {
		put \".col-md-9 .col-md-push-3\"
	    }
	    division class=\"col-md-3 col-md-pull-9\" [style background blue] {
		put \".col-md-3 .col-md-pull-9\"
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-img-thumbnail
 "
	put [img \"/tk/img/common/mel.gif\" class=\"img-thumbnail\"]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-imports
 "
@import url(\"http://localhost/GitHub/bootstrap/less/variables.less\");
@import url(\"http://localhost/GitHub/bootstrap/less/type.less\");
@import url(\"http://localhost/GitHub/bootstrap/less/mixins.less\");
@import url(\"http://localhost/GitHub/elements/elements.less\");
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-toolbar
 "
	division class=\"btn-toolbar\" role=\"toolbar\" [style padding 5px background wheat] {
	    division class=\"btn-group pull-left\" {
		button [lorem 2] class=\"btn btn-default\"
		button [lorem 2] class=\"btn btn-default\"
		button [lorem 2] class=\"btn btn-default\"
		button [lorem 2] class=\"btn btn-default\"
	    }
	    division class=\"btn-group pull-right\" {
		button \"New Track\" class=\"btn btn-default\"
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tb-html-container
 "
	<div class=\"container\" >
	    <div class=\"row\" >
		<div class=\"col-md-12\">
		    One of three columns
		</div>
	    </div>
	</div>
")

