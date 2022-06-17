	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'ang-component-tabs
	     "
    ang::component::tabs::init -id \"ang-tabs\" -items {
	home	 \"Home\"	    \"tk::dummy::1\"
	contacts \"Contacts\" \"tk::dummy::1\"
	test	 \"Test\"	    \"tk::dummy::1\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'ch-component-barchart-stacked
	     "
    ch::component::barchart::stacked::init -id \"barchart-stacked\" -width 800 -height 80 -values {
	Google	10 #CCC
	Melify	70 red
	IBM	20 steelblue
    } -animation true -tooltip true
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'ch-component-donut-1
	     "
    ch::component::donut::1::init -id \"test\" -use \"highcharts\" -width 200px -height 150px -showkeys 1 -label {Total<BR>$200,000} -innersize \"135%\" -colors {
	\"#1962C8\" \"#79B3FD\" \"#387800\" \"#D3CB4F\" \"#EB793E\" \"#9D61CC\"
    } -values {
	\"Domestic Stock\" 68.0 \"Foreign Stock\" 10.0 \"Bonds\" 4.0 \"Unknown\" 6.0 \"Other\" 12.0
    } -variance {
	\"(10%)\" \"(5%)\" \"5%\" \"5%\" \"N/A\" \"N/A\"
    } -assetmix {
	\"49%\" \"21%\" \"25%\" \"5%\" \"N/A\"  \"N/A\"
    } 
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'ch-component-highstocks
	     "
    ch::component::highstocks::init -id \"ch-component-highstocks-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'ch-component-lines
	     "
    ch::component::lines::init -use \"highcharts\" -id \"test\" -title \"Temperature\" -subtitle \"Melify.com\" -width \"80%\" -height \"300px\" -xvalues {\"Jan\" \"Feb\" \"Mar\" \"Apr\" \"May\" \"Jun\" \"Jul\" \"Aug\" \"Sep\" \"Oct\" \"Nov\" \"Dec\"} -yvalues {
	    \"Tokyo\" \"7.0 6.9 9.5 14.5 18.2 21.5 25.2 26.5 23.3 18.3 13.9 9.6\"
	    \"New York\" \"-0.2 0.8 5.7 11.3 17.0 22.0 24.8 24.1 20.1 14.1 8.6 2.5\"
	    \"Berlin\" \"-0.9 0.6 3.5 8.4 13.5 17.0 18.6 17.9 14.3 9.0 3.9 1.0\"
	    \"London\" \"3.9 4.2 5.7 8.5 11.9 15.2 17.0 16.6 14.2 10.3 6.6 4.8\"
	}
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'ch-component-piebar
	     "
    ch::component::piebar::init -id \"test\" -use \"highcharts\" -title \"A Pie Chart\" -type \"pie\" -width \"400px\" -height \"200px\" -values {
	\"Firefox\"	45.0
	\"IE\"		26.8
	\"Safari\"	8.5
	\"Others\"	19.7
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'd3-component-chart-bar
	     "
    d3::component::chart::bar::init -id \"chart-bar-test\" -width 500 -height 250 -file \"/tk/lib/components/d3/data/d3.component.chart.bar.tsv\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'd3-component-chart-bubble
	     "
    d3::component::chart::bubble::init -id \"bubble-1\" -width \"600\" -file \"/tk/lib/components/d3/data/d3.component.chart.bubble.json\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'd3-component-graph-directed
	     "
    d3::component::graph::directed::init -id \"graph-directed\" -width 500 -height 500
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'd3-component-progress-radial
	     "
    division class=\"clearfix\" {
	d3::component::progress::radial::init -id \"rp-1\" -diameter 200 -value 84
    }
    # SUBSCRIBE TO CLICKS 
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"d3ComponentProgressRadial callback: \" + action + \" \" + id);
	    }
	    jQuery.subscribe(\"d3ComponentProgressRadial\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'd3-component-tree-collapsible
	     "
    d3::component::tree::collapsible::init -id \"d3-component-tree-collapsible-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'd3-component-tree-radial
	     "
    d3::component::tree::radial::init -id \"d3-component-tree-radial-test\" -width 500
    javascript {
	put {
	    jQuery(document).ready(function() {
		setTimeout(function(){
		    $(\".node circle\").css(\"fill\",\"indianred\").css(\"stroke\",\"#CCC\");
		    $(\"text\").css(\"fill\",\"steelblue\").css(\"cursor\",\"pointer\").on(\"click\", function() {
			var t = $(this).text();
			alert(t);
		    });
		}, 0);
	    });
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'fm-component-header
	     "
    global conf
    if {[info exist conf(menus)] == 0} {
	set menus {
	    home HOME products PRODUCTS download DOWNLOADS
	}
    } else {
	set menus \"\"
	foreach i $conf(menus) {
	    lappend menus [lindex $i 1] [lindex $i 3]
	}
    }
    if {[info exist conf(logo)] == 0} {
	set logo \"/tk/img/common/martian.png\"
    } else {
	set logo $conf(logo)
    }
    if {[info exist conf(callback)] == 0} {
	set callback \"fmComponentHeader.callback\"
    } else {
	set callback $conf(callback)
    }
    if {[info exist conf(id)] == 0} {
	set id \"header-test\"
    } else {
	set id $conf(id)
    }
    fm::component::header::init -id \"$id\" -menus \"$menus\" -logo \"$logo\" -callback \"$callback\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'fm-component-header
	     "
    global conf
    if {[info exist conf(menus)] == 0} {
	set menus {
	    home HOME products PRODUCTS download DOWNLOADS
	}
    } else {
	set menus \"\"
	foreach i $conf(menus) {
	    lappend menus [lindex $i 1] [lindex $i 3]
	}
    }
    if {[info exist conf(logo)] == 0} {
	set logo \"/tk/img/common/martian.png\"
    } else {
	set logo $conf(logo)
    }
    if {[info exist conf(callback)] == 0} {
	set callback \"fmComponentHeader.callback\"
    } else {
	set callback $conf(callback)
    }
    if {[info exist conf(id)] == 0} {
	set id \"header-test\"
    } else {
	set id $conf(id)
    }
    fm::component::header::init -id \"$id\" -menus \"$menus\" -logo \"$logo\" -callback \"$callback\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'fm-component-table
	     "
    global conf
    if {[array exist conf] == 0} {
	set conf(id)		\"fm-component-table\"
	set conf(class)		\"table table-bordered table-striped table-hover\"
	set conf(source)	\"json:$::cpath/fm/components/table/fm.component.table.1.0/data/table.json\"
	set conf(searchable)	\"true\"
	set conf(sortable)	\"true\"
	set conf(paginate)	\"true\"
	set conf(columns)	\"{id id label ID} {id name label NAME} {id price label PRICE}\"
	set conf(height)	\"\"
    }
    if {[info exist conf(height)] == 0} {
	set conf(height) \"\"
    }
    fm::component::table::init -id \"$conf(id)\" -columns \"$conf(columns)\" -class \"$conf(class)\" -source \"$conf(source)\" -searchable \"$conf(searchable)\" -sortable \"$conf(sortable)\" -paginate \"$conf(paginate)\" -height \"$conf(paginate)\" -height \"$conf(height)\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'fm-component-table
	     "
    global conf
    if {[array exist conf] == 0} {
	set conf(id)		\"fm-component-table\"
	set conf(class)		\"table table-bordered table-striped table-hover\"
	set conf(source)	\"json:/Melify/mtk/dev/tk/lib/components/mtk/dat/mtk.component.datatable.virtual.json\"
	set conf(columns)	\"{id id label ID} {id fname label FNAME} {id lname label LNAME} {id zip label ZIP} {id country label COUNTRY}\"
	set conf(virtual)	false
	set conf(sortable)	true
	set conf(filter)	true
	set conf(searchable)	true
	set conf(length)	false
	set conf(info)		false
	set conf(paginate)	true
    }
    #parray conf
    fm::component::table::init -id \"$conf(id)\" -columns \"$conf(columns)\" -class \"$conf(class)\" -source \"$conf(source)\" -virtual \"$conf(virtual)\" -sortable \"$conf(sortable)\" -filter \"$conf(filter)\" -searchable \"$conf(searchable)\" -length \"$conf(length)\" -info \"$conf(info)\" -paginate \"$conf(paginate)\" 
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'fm-component-tabs
	     "
    global conf
    if {[array exist conf] == 0} {
	set conf(id)		\"test-tabs\"
	set conf(selected)	\"downloads\"
	set conf(menus)		\"{id home label HOME} {id products label PRODUCTS} {id downloads label DOWNLOADS}\"
	set conf(callback)	\"fmComponentTabs.callback\"
    }    
    #parray conf
    fm::component::tabs::init -id \"$conf(id)\" -menus \"$conf(menus)\" -selected \"$conf(selected)\" -callback \"$conf(callback)\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'fm-component-questions
	     "
    Trace
    fm::component::questions::init -id \"fm-component-questions-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-accordion
	     "
    division [style width 700px] {
	jq::component::accordion::init -id \"test\" -use \"jquery-ui\" -select 0 -guts {
	    foreach i {1 2 3} {
		h1 [url \"Frame $i\" #]
		division [style height 200px overflow auto border-top \"1px #cecece solid\"] {
		    tk::dummy::3 -size 1
		}
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-block
	     "
    division class=\"container-fluid\" {
	division class=\"row-fluid\" {
	    division class=\"span16\" {
		foreach i {1 2 3} {
		    division class=\"pull-left\" [style padding-right 2px] {
			jq::component::block::init -id \"block-$i\" -use \"jquery-ui\"  -width 250px -content {
			    h4 \"<i class=icon-envelope></i> [string toupper [lorem 2]]\"
			    put [jq::component::block::dummy]
			}
		    }
		}
	    }
	}
	division class=\"row-fluid\" {
	    division class=\"span16\" {
		division id=\"mydiv\" [style border \"1px #CCC solid\" height 300px overflow auto] {
		    #h1 waiting...
		}
	    }
	}
    }
    javascript {
	put {
	    jQuery(document).ready(function() {
		jQuery(\".block\").jqBlock();
		jQuery(\"#block1\").jqBlock(\"glow\",true);
		jQuery(\"#block2\").jqBlock(\"disabled\",true);
		jQuery(\"#block3\").jqBlock(\"disabled\",false);
	    });
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-calendar
	     "
    jq::component::calendar::init -id \"test\" -use \"jquery-ui\" -variable date
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-container
	     "
    jq::component::container::init -guts \"tk::dummy::1\" -title [lorem 3] -id \"test\" -use \"jquery-ui\" -height 200px
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-content-slider-b
	     "
    set content {
	page-1	\"jq::component::content::slider::b::dummy\"
	page-2	\"jq::component::content::slider::b::dummy\"
	page-3	\"jq::component::content::slider::b::dummy\"
    }
    foreach {i j} $content {
	put [url \"$i\" \"javascript:jq.component.content.slider.b.goto('test','$i')\" class=\"btn\" [style margin 10px]]
    }
    division [style width 800px border \"1px #CCC solid\" border-radius 5px] {
	jq::component::content::slider::b::init -id \"test\" -use \"jquery-ui\" -width 800 -height 300 -content $content
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-content-slider
	     "
    jq::component::content::slider::init -id \"test\" -width \"800\" -height \"300\" -active \"tab-1\" -menus [subst {
	tab-1	\"Home\"       \"tk::dummy::1\"
	tab-2	\"Products\"   \"tk::dummy::2\"
	tab-3	\"Download\"   \"tk::dummy::3\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-background-scroll
	     "
    division id=\"mydiv\" [style width 100% height 250px border \"1px #CCC solid\"] {
    }
    jq::component::background::scroll::init -id \"test\" -use \"jquery-ui\" -target \"mydiv\" -fade \"2000\" -duration \"3000\" -images {
	\"/tk/lib/components/tb/img/antennae.jpg\"
	\"/tk/lib/components/tb/img/carina.jpg\"
	\"/tk/lib/components/tb/img/echo.jpg\"
    }
    h3 \"Updated every 3 seconds\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-bricks
	     "
    #HAVE ENOUGH SPACE FOR $size BRICKS
    set size 10
    jq::component::bricks::init -id \"test\" -use \"jquery-ui\" -size $size -visible 6
    #FILL IN THE BRICKS NOW
    set jstr \"\"
    for {set i 0} {$i < $size} {incr i} {
	set id \"jq-brick-$i\"
	append jstr \"jq.brick.append('$id','$i<BR>[lorem 2]');\"
    }
    append jstr \"jq.brick.init();\"
    #EXECUTE JAVASCRIPT
    javascript {
	put \"$jstr\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-chart-bar-stacked
	     "
    jq::component::chart::bar::stacked::init -id \"test-[clock seconds]\"  -label1 \"What you need\" -label2 \"Potential Gap\"  -total \"35000\" -values \"25000 #0C57BF 3000 skyblue\" -width 600 -height 200
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-chart-donut
	     "
    jq::component::chart::donut::init -id \"test-[clock seconds]\" -width 200 -colors {
	\"#1962C8\" \"#79B3FD\" \"#387800\" \"#D3CB4F\" \"#EB793E\" \"#9D61CC\"
    } -values {
	\"Domestic Stock\" 68 \"Foreign Stock\" 10 \"Bonds\" 4 \"Unknown\" 6 \"Other\" 12
    } -variance {
	\"(10%)\" \"(5%)\" \"5%\" \"5%\" \"N/A\" \"N/A\"
    } -assetmix {
	\"49%\" \"21%\" \"25%\" \"5%\" \"N/A\"  \"N/A\"
    } -total \"450000\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-datepicker
	     "
    division [style width 210px] {
	jq::component::datepicker::init -id \"mydate\" -class \"form-control\" -required 1 -format \"dd/mm/yyyy\" -width \"210px\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-db-spreadsheet
	     "
    jq::component::db::spreadsheet::init -id \"test\" -callback \"jq::component::db::spreadsheet::cb\" -query \"select id,fname,lname,email,company  from users\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-dialog-2
	     "
    tk::dummy::3
    jq::component::dialog::2::init -id \"test-dialog-2\" -url \"[URL callback jq::component::dialog::2::callback ajax 1]\" -trigger \".pop1\" -modal \"true\"
    button \"DISCLAIMER\" class=\"btn btn-default jqModal pop1\"
    # OR FROM JAVASCRIPT: jQuery('#test-dialog-2').jqmShow();
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-dialog
	     "
    put [jq::component::dialog::init -id \"D1000\" -use \"jquery-ui\"  -label \"Simple Dialog\" -url [URL callback tk::dummy::3] -title [lorem 3]]
    br;br
    put [jq::component::dialog::init -id \"D2000\" -label \"Dialog with Buttons\" -url [URL callback tk::dummy::3] -title [lorem 3] -buttons {
	buttons: {
	    \"Cancel\": function() {
		jQuerydialog.dialog(\"close\")
	    },
	    \"OK\": function() {
		alert(\"OK Pressed !\");
	    }
	}		
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-editable
	     "
    division [style margin 30px] {
	division {
	    h3 \"DOUBLE CLICK ON TEXT BELOW TO EDIT\"
	}
	foreach i {1 2 3} {
	    division class=\"col-sm-4 editable\" id=\"div-$i\" {
		h3 \"div-$i\"
		p [lorem 20]
	    }
	}
	jq::component::editable::init -id \"test\" -callback \"alert\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-expander
	     "
    set style {
	[style background $i width 50% text-align center]
    }
    jq::component::expander::init -id \"test\" -use \"jquery-ui\" -guts {
	division class=\"expander-test\" [style position relative] {
	    division class=\"clearfix\" {
		division class=\"pull-left tk-expander\" [style background \"#72cca7\" width 50% text-align center] url=\"[URL callback jq::component::expander::dummy]\" {
		    division [style padding 25px vertical-align middle margin-top 100px] {
			h1 \"<i class=icon-question-sign></i> [string toupper [lorem 3]]\"
		    }
		}
		division class=\"pull-left tk-expander\" [style background \"#fa987d\" width 50% text-align center] url=\"[URL callback jq::component::expander::dummy]\" {
		    division [style padding 25px vertical-align middle margin-top 100px] {
			h1 \"<i class=icon-question-sign></i> [string toupper [lorem 3]]\"
		    }
		}
	    }
	    division class=\"clearfix\" {
		division class=\"pull-left tk-expander\" [style background \"#f06060\" width 50% text-align center] url=\"[URL callback jq::component::expander::dummy]\" {
		    division [style padding 25px vertical-align middle margin-top 100px] {
			h1 \"<i class=icon-question-sign></i> [string toupper [lorem 3]]\"
		    }
		}
		division class=\"pull-left tk-expander\" [style background \"#10a296\" width 50% text-align center] url=\"[URL callback jq::component::expander::dummy]\" {
		    division [style padding 25px vertical-align middle margin-top 100px] {
			h1 \"<i class=icon-question-sign></i> [string toupper [lorem 3]]\"
		    }
		}
	    }
	}
    }
    # SET EACH DIV'S HEIGHT 45% OF WINDOW HEIGHT
    javascript {
	put {
	    jQuery(\".tk-expander\").height($(window).height()*30/100)
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-expose
	     "
    jq::component::expose::init -callback \"tk::dummy::3\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-faq-2
	     "
    jq::component::faq::2::init -id \"test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-faq
	     "
    jq::component::faq::init -id \"myFAQ\" -db \"/Melify/mtk/dev/tk/lib/components/jq/db/faq/sqlite.db\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-finder
	     "
    Trace
    if {[info exist ::rootdir] == 0} {
	set root \"/Melify/mtk/dev/app/Melify/img\"
    } else {
	set root $::rootdir
	javascript {
	    put {
		$(\"#thecode\").hide();
	    }
	}
    }
    jq::component::finder::init -id \"test\" -root $root
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-flyout
	     "
    division [style margin 30px] {
	jq::component::flyout::init -id \"test\" -use \"jquery-ui\" -guts jq::component::flyout::open
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-form-select-multi
	     "
    jq::component::form::select::multi::init -id \"test1\" -use \"jquery-ui\" -variable \"v(select1)\" -values {
	1	aaa
	2	bbb
	3	ccc
	4	ddd
    }
    br;br
    jq::component::form::select::multi::init -id \"test2\" -use \"jquery-ui\" -variable \"v(select2)\" -type \"group\" -values {
	\"Group One\" {
	    11	eee
	    12	fff
	    13	ggg
	}
	\"Group Two\" {
	    21	hhh
	    22	iii
	    23	jjj
	    24	kkk
	    25	mmm
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-google-tabs
	     "
    jq::component::google::tabs::init -id \"test\" -pages [subst {
	p1 \"Home\" \"[URL callback tk::dummy::1]\"
	p2 \"Work\" \"[URL callback tk::dummy::2]\"
	p3 \"Downloads\" \"[URL callback tk::dummy::3]\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-graph
	     "
    set items {
	\"Wishing Well\" {
	    \"WHO WE ARE\" {}
	    \"WHAT WE DO\" {}
	    \"Contact Information\" {}
	    \"Sandbox\" {}
	}
    }
    jq::component::graph::init -id \"test\" -use \"jquery-ui\" -items $items -height 300 -width 800
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-grid-responsive
	     "
    jq::component::grid::responsive::init -id \"test\" -use \"jquery-ui\" -guts {
	division class=\"container\" {
	    division class=\"sixteen columns\" {
		h1 class=\"remove-bottom\" style=\"margin-top: 40px\" \"[string toupper [lorem 2]]\"
		h5 \"[lorem 4]\"
		hr
	    }
	    foreach i {1 2 3} {
		division class=\"one-third column\" {
		    h3 [string toupper [lorem 2]]
		    p [lorem 100]
		}
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-ios-page-slider
	     "
    division [style margin-top 100px] {
	h1 align=center \"Resize window and view me on your other devices too!\"
	h3 align=center \"Swipe me with your finger, mouse or wheatever....\"
	br
	jq::component::ios::page::slider::init -id \"test\" -use \"jquery-ui\" -height \"480\" -background \"#FFF\" -callback \"alert('A')\" -items {
	    tab-1	\"tk::dummy::1\"
	    tab-2	\"tk::dummy::2\"
	    tab-3	\"tk::dummy::3\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-ios-slider
	     "
    division [style margin 30px] {
	jq::component::ios::slider::init -id \"test\" -use \"jquery-ui\" -width \"600\" -height \"250\" -background \"wheat\" -items {
	    tab-1	\"tk::dummy::1\"
	    tab-2	\"tk::dummy::2\"
	    tab-3	\"tk::dummy::3\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-location
	     "
    jq::component::location::init -id \"test\" -use \"jquery-ui\" -width 500px -height 300px
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-menu-drop
	     "
    division [style margin 10px height 350px overflow auto overflow hidden position relative] {
	set style [style padding 10px background green color #FFF border \"1px #999\"]
	jq::component::menu::drop::init -id \"test\" -use \"jquery-ui\" -overlay 0 -background \"#333\" -callback \"[URL callback jq::component::menu::drop::callback]\" -height \"150\" -guts {
	    #ADD MENUS HERE
	    table width=\"100%\" {
		table_row {
		    foreach i {0 1 2 3 4} {
			table_data id=\"menu-$i\" align=center $style class=\"menu-drop\" {
			    put [string toupper [lorem 2]]
			}
		    }
		}
	    }
	    #CREATE SPACE FOR DROP-DOWNS
	    division id=\"jq-component-menu-drop-content\" {
		# CALLBACK FILLS THIS AREA WHEN MENUS ARE CLICKED
	    }
	    #SPACE FILLERS HERE
	    division class=\"container-fluid\" {
		division class=\"row-fluid\" {
		    division class=\"span8\" [style color brown] {
			put [lorem 50]
		    }
		    division class=\"span4\" {
			put [lorem 20]
		    }
		    division class=\"span4\" [style color navy] {
			put [lorem 20]
		    }
		}
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-mmenus
	     "
    Trace
    jq::component::mmenus::init -id \"test\" -menus [subst {
	p1	\"Home\"		\"#\"
	p1	\"Contact us\"	\"#\"
	p1	\"Register\"	\"#\"
	p1	\"Sign In\"	\"#\"
    }] -guts {
	tk::dummy::1
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-nav-vertical-2
	     "
    jq::component::nav::vertical::2::init -id \"test\" -height 400px -width 700px -menus [subst {
	T1000	\"[URL callback tk::dummy::1]\"	\"Welcome to the Machine\"
	T2000	\"[URL callback tk::dummy::2]\"	\"Products\"
	T3000	\"[URL callback tk::dummy::3]\"	\"Downloads\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-nav-vertical-3
	     "
    jq::component::nav::vertical::3::isolate
    jq::component::nav::vertical::3::init -id \"test\" -height 400px -width 700px -selected \"T1000\" -menus [subst {
	T1000	\"[URL callback tk::dummy::1]\"	\"Personal Information\"
	T2000	\"[URL callback tk::dummy::2]\"	\"Retirement\"
	T3000	\"[URL callback tk::dummy::3]\"	\"Savings Goals\"
	T4000	\"[URL callback tk::dummy::3]\"	\"Accounts\"
	T5000	\"[URL callback tk::dummy::3]\"	\"Questions & Quizzes\"
	T6000	\"[URL callback tk::dummy::3]\"	\"Saved Articles\"
	T7000	\"[URL callback tk::dummy::3]\"	\"Financial Profile\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-noty
	     "
    # types: 
    #    alert  success  error  warning  information  confirm 
    #
    # positions: 
    #     bottom bottomCenter bottomLeft bottomRight center centerLeft centerRight inline top topCenter topLefttopRight
    # callback:
    #     tknoty.close(); will close the popup
    jq::component::noty::init  -id \"test\" -use \"jquery-ui\"  -type \"success\" -msg [lorem 100] -position \"top\" -callback \"[URL callback jq::component::noty::callback]\" -buttons {Cancel|btn-danger Apply|btn-primary}
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-orgchart
	     "
    division id=\"test\" {
	#placeholder for my orgchart
    }
    jq::component::orgchart::init -id \"test\" -use \"jquery-ui\" -items {
	\"aaa\"	\"OrgChart\"
	\"bbb\"	\"OrgChart\"
	\"b1\"	\"bbb\"
	\"b2\"	\"bbb\"
	\"b21\"	\"b2\"
	\"b22\"	\"b2\"
	\"b3\"	\"bbb\"
	\"ccc\"	\"OrgChart\"
	\"c1\"	\"ccc\"
	\"c2\"	\"ccc\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-overlay-2
	     "
    division [style margin 30px] {
	jq::component::overlay::2::init -id \"test\" -head {
	    h1 class=\"head white\" \"Overlay Example,\"
	    p [style color #666] \"Welcome to your Overlay.\"
	} -body {
	    division [style padding 20px] {
		put [lorem 50]
	    }
	} -controls {
	    put [url \"Cancel\" \"#\"]
	    space 20 0
	    put [url \"Skip Questions and Continue\" \"#\" class=\"btn btn-primary\" id=\"skip\"]
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-overlay
	     "
    division [style margin 30px] {
	jq::component::overlay::init -id \"test\" -use \"jquery-ui\" -content {
	    p [url [img \"/tk/img/common/mel.gif\"] \"#\" rel=\"#myoverlay\"]
	    division class=\"simple_overlay\" id=\"myoverlay\" {
		put [img \"/tk/img/common/placeholder.png\" [style height 300px width 100%]]
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-page-html
	     "
    division id=\"view\" {
	if {[file exist /tmp/page.tcl] == 1} {
	    eval [file:read /tmp/page.tcl]
	} else {
	    br;br;br
	    h1 align=center \"Open your editor...<BR><small>And bang away!</small>\"
	}
    }
    jq::component::page::html::init -id \"test\" -ele \"view\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-page-slide
	     "
    h1 \"Programatically\"
    hr
    put [quote_html {
	<a href=\"javascript:$.pageslide({ direction: 'left', href='_secondary.html' })\">CLICK HERE</a>
    }]
    hr
    br
    division id=\"slidepage-content\" [style margin auto] {
	put [url [string toupper  \"LEFT\"] \"#\" id=\"btn-1\" class=\"btn slide-page\" direction=\"right\" menus=\"[URL callback jq::component::page::slide::dummy]\" parent=\"slidepage-content\"]
	space 50 0
	put [url [string toupper \"RIGHT\"] \"#\" id=\"btn-2\" class=\"btn slide-page\" direction=\"left\"  menus=\"[URL callback jq::component::page::slide::dummy]\" parent=\"slidepage-content\"]
	br
	p [lorem]
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-page-transition
	     "
    division [style width 900px height 400px margin 30px] {
	jq::component::page::transition::init -id \"page-t-use \"jquery-ui\" ransition\" -content {
	    \"pt-page-1\"	\"jq::component::page::transition::dummy\"
	    \"pt-page-2\"	\"jq::component::page::transition::dummy\"
	    \"pt-page-3\"	\"jq::component::page::transition::dummy\"
	    \"pt-page-4\"	\"jq::component::page::transition::dummy\"
	}
	division class=\"pt-triggers\" {
	    put {
		<button id=\"iterateEffects\" class=\"pt-touch-button\">Next page transition</button>
	    }
	}
    }
    include \"/GitHub/PageTransitions/js/jquery.dlmenu.js\"
    include \"/GitHub/PageTransitions/js/pagetransitions.js\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-pager
	     "
    division [style margin 30px] {
	put [url \"Display Pager\" [URL callback jq::component::pager::test:show] target=_blank class=\"btn btn-warning btn-large\"]
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-parallax
	     "
    jq::component::parallax::init -id \"test\" -use \"jquery-ui\" -pages {
	\"page-1\" \"tk::dummy::3\" \"/tk/lib/components/jq/img/parallax/page-1.png\"
	\"page-2\" \"tk::dummy::3\" \"/tk/lib/components/jq/img/parallax/page-2.png\"
	\"page-3\" \"tk::dummy::3\" \"/tk/lib/components/jq/img/parallax/page-3.png\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-quote-rotator
	     "
    jq::component::quote::rotator::init -id \"test\" -quotes {
	division class=\"cbp-qtcontent\" {
	    put [img \"/tk/img/common/mel.png\" alt=\"img01\" height=150]
	    blockquote [subst {
		<p> [lorem 20] </p>
		-[string toupper [lorem 2]]
	    }]
	}
	division class=\"cbp-qtcontent\" {
	    put [img \"/tk/img/common/mel.gif\" alt=\"img02\" height=150]
	    blockquote [subst {
		<p> [lorem 20] </p>
		-[string toupper [lorem 2]]
	    }]
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-radio-combo
	     "
    jq::component::radio::combo::init -id \"test\" -use \"jquery-ui\" -active 0 -blocks {
	{
	    \"Goal\"
	    \"Please select\"
	    \"1: one\"
	    \"2: two\"
	}
	{
	    \"Account\"
	    \"Please select\"
	    \"1: four\"
	    \"2: five\"
	    \"2: six\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-reader
	     "
    jq::component::reader::init -id \"reader\" -use \"bootstrap\" -version \"2.x\" -label \"Gone with the Wind\" -content \"[lorem 50]\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-reveal
	     "
    jq::component::reveal::init -id \"test-reveal\" -position \"top 0 right 0 width 300\" -guts tk::dummy::3
    division class=\"pull-left\" [style padding-right 20px] {
	button \"Open\"  class=\"btn\" onclick=\"jqComponentReveal.open('test-reveal')\"
    }
    division class=\"pull-left\" [style padding-right 20px] {
	button \"Close\" class=\"btn\" onclick=\"jqComponentReveal.close('test-reveal')\"
    }
    division class=\"pull-left\" [style padding-right 20px] {
	button \"Toggle\" class=\"btn btn-danger\" onclick=\"jqComponentReveal.toggle('test-reveal')\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-scrollable
	     "
    jq::component::scrollable::init -id \"test\" -use \"jquery-ui\" -height 200 -width 900 -items {
	{
	    1001 \"dummy\" 2001 \"dummy\" 3001 \"dummy\" 4001 \"dummy\"
	}
	{
	    1002 \"dummy\" 2002 \"dummy\" 3002 \"dummy\" 4002 \"dummy\"
	}
	{
	    1003 \"dummy\" 2003 \"dummy\" 3003 \"dummy\" 4003 \"dummy\"
	}
	{
	    1004 \"dummy\" 2004 \"dummy\" 3004 \"dummy\" 4004 \"dummy\"
	}
	{
	    1005 \"dummy\" 2005 \"dummy\" 3005 \"dummy\" 4005 \"dummy\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-scroller
	     "
    division [style margin 30px] {
	jq::component::scroller::init -id \"test\" -use \"jquery-ui\" -pages {
	    \"page-1\"	jq::component::scroller::dummy
	    \"page-2\"	jq::component::scroller::dummy
	    \"page-3\"	jq::component::scroller::dummy
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-share
	     "
    jq::component::share::init
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-slick-select
	     "
    put {
	<style>
	.dd-select, .dd-options {
	    width:400px!important;
	    padding:0!important;
	    margin:0!important;
	}
	.dd-options {
	    padding:0!important;
	    margin:0!important;
	}
	.dd-option {
	    padding:3px!important;
	    margin:0!important;
	}
	.sep {
	    margin:10px;
	    border-right: 1px #CCC solid;
	}
	.follow {
	    color:red;
	    font-size:10px;
	}
	</style>
    }
    set str [subst {
	<table>
	<tr>
	<td style=width:150px>[lorem 3]</td>
	<td class=sep></td>
	<td>&nbsp;[lorem 2]&nbsp;</td>
	<td class=sep></td>
	<td>&nbsp;[lorem 2]&nbsp;</td></tr>
	</table>
    }]
    division [style margin 100px] {
	jq::component::slick::select::init -id \"test-[clock seconds]\" -items [subst {
	    0 \"\" \"$str\" \"\"
	    1 \"/tk/img/common/check48.png\" \"[string toupper [lorem 2]]\" \"[lorem 5]\"
	    2 \"/tk/img/common/check48.png\" \"[string toupper [lorem 2]]\" \"[lorem 5]\"
	    3 \"/tk/img/common/check48.png\" \"[string toupper [lorem 2]]\" \"[lorem 5]\"
	}]
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-slider-2
	     "
    Trace
    division [style width 500px padding 0 margin 50px margin-top -50px] class=\"clearfix\" {
	jq::component::slider::2::init -id \"test\" -use \"jquery-ui\" -selected \"Slow\" -options {
	    \"Slower\"
	    \"Slow\"
	    \"Med\"
	    \"Fast\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-slider-3
	     "
    division [style margin 30px] {
	jq::component::slider::3::init -id \"test\" -use \"jquery-ui\" -value \"3\" -max \"6\" -width \"300px\" -height \"12px\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-slider
	     "
    Trace
    tb::component::responsive::indicator::init -container \"#template\"
    jq::component::slider::init -id \"test\" -use \"jquery-ui\" -width \"800px\" -callback \"tk::dummy::1\" -background \"#333\"
    division class=\"container-fluid\" {
	division class=\"row-fluid\" {
	    division class=\"span4\" {
		h2 \"Ctrl+S opens the slider\"
		put [lorem 100]
	    }
	    division class=\"span4\" {
		put [lorem 100]
	    }
	    division class=\"span4\" {
		put [lorem 100]
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-sliding-panel
	     "
    division class=\"container-fluid\" {
	division class=\"row-fluid\" {
	    division class=\"span4\" {
		put [lorem 20]
	    }
	    division class=\"span4\" {
		put [lorem 20]
		p align=center [url \"Show Panel\" \"[URL page tk::help]\" data-slidepanel=\"panel\" class=\"btn btn-danger\"]
	    }
	    division class=\"span4\" {
		put [lorem 20]
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-snap
	     "
    jq::component::snap::init -id \"test\" -title \"[string toupper [lorem 3]]\" -menus [subst {
	p-1 \"Home\"	\"[URL callback tk::dummy::1]\"
	p-2 \"Products\"	\"[URL callback tk::dummy::2]\"
	p-3 \"Downloads\" \"[URL callback tk::dummy::3]\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-stack-pages
	     "
    jq::component::stack::pages::init -id \"test\" -show \"welcome\" -pages {
	welcome home login logout
    }
    javascript {
	put [subst {
	    tk.load(\"#jq-component-stack-pages-welcome\",  \"[URL callback jq::component::stack::pages::dummy apage Welcome]\", true);
	    tk.load(\"#jq-component-stack-pages-home\",     \"[URL callback jq::component::stack::pages::dummy apage Home]\",    true);
	    tk.load(\"#jq-component-stack-pages-login\",    \"[URL callback jq::component::stack::pages::dummy apage Login]\",   true);
	    tk.load(\"#jq-component-stack-pages-logout\",   \"[URL callback jq::component::stack::pages::dummy apage Logout]\",  true);
	}]
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-steps
	     "
    jq::component::steps::init -id \"test\" -use \"jquery-ui\" -selected \"2000\" -menus [subst {
	1000	\"#\"	\"Personal Information\"
	2000	\"#\"	\"Salary\"
	3000	\"#\"	\"Account\"
	4000	\"#\"	\"Lifestyle\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-stock-ticker
	     "
    jq::component::stock::ticker::init -id \"test\" -symbols {
	C,HOV,MS,AAPL
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-stocks
	     "
    jq::component::stocks::init -id \"stocks\" -symbols {
	c,hov,tol,aapl,goog,yhoo
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-swiper
	     "
    Trace
    jq::component::swiper::init -id \"test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-tabs-1
	     "
    jq::component::tabs::1::init -id \"test\" -use \"jquery-ui\" -selected \"0\" -height \"200px\" -background \"#FFF\" -menus [subst {
	home	 \"Home\"       \"[href callback tk::dummy::3 ajax 1]\"
	products \"Products\"   \"[href callback tk::dummy::2 ajax 1]\"
	contact	 \"Download\"   \"[href callback tk::dummy::1 ajax 1]\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-tabs-2
	     "
    jq::component::tabs::2::init -id \"test\" -use \"jquery-ui\" -background \"#666\" -target \"my-content\" -menus [subst {
	tab-1 \"[href callback tk::dummy::1]\"	\"Download\"
	tab-2 \"[href callback tk::dummy::2]\"	\"Demos\"
	tab-3 \"[href callback tk::dummy::3]\"	\"Development\"
    }]
    division id=\"my-content\" [style padding 20px height 200px overflow auto] {
	h1 loading...
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-tabs-liquid-slide
	     "
    division [style margin 30px] {
	jq::component::tabs::liquid::slide::init -id \"myTabs\" -showtabs \"1\" -autoplay \"0\" -selected \"2\" -speed \"1000\" -items {
	    tab-1 \"Page 1\" jq::component::tabs::liquid::slide::dummy
	    tab-2 \"Page 2\" jq::component::tabs::liquid::slide::dummy
	    tab-3 \"Page 3\" jq::component::tabs::liquid::slide::dummy
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-tabs-slide
	     "
    jq::component::tabs::slide::init -id \"myTabs\" -selected \"1\" -tabs \"true\" -indicators \"false\" -speed 1000 -autoplay false -items {
	tab-1 tk::dummy::3 \"tk::dummy::3\"
	tab-2 tk::dummy::3 \"tk::dummy::3\"
	tab-3 tk::dummy::3 \"tk::dummy::1\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-video-2
	     "
    division class=\"container$::fluid\" {
	division class=\"row$::fluid\" {
	    division class=\"col-md-12\" {
		jq::component::video::2::init -id \"my-video\" -file \"/videos/Melified/Martians\" -title \"Martians Building an app...\"
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jq-component-video
	     "
    division [style background \"#000\" padding 20px border-radius 5px width 700px margin \"0 auto\"] {
	division {
	    jq::component::video::show -id \"my-video\" -video \"/videos/All-Hands-II.mp4\" -width 640 -height 480
	}
	division [style text-align center] {
	    put \"Mel's Production Line Presents...\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jqw-component-accordion
	     "
    division [style width 300px] {
	jqw::component::accordion::init -id \"jqw-component-accordion-test\" -mode \"multiple\" -selected \"0\" -guts {
	    foreach i {0 1 2 3 4} {
		division {
		    put [lorem 3]
		}
		division [style padding 10px] {
		    put [lorem 30]
		}
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jqw-component-grid
	     "
    division [style margin 50px] {
	jqw::component::grid::init -id \"jqw-component-grid-test\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jqw-component-tabs
	     "
    jqw::component::tabs::init -id \"jqw-tabs-test\" -selected 1 -width 1000 -height 300 -guts {
	bullet_list {
	    foreach i {\"Home\" \"Documents\" \"Contact Info\" \"Others\"} {
		li [style margin-left 5px] $i
	    }
	}
	foreach i {\"Home\" \"Documents\" \"Contact Info\" \"Others\"} {
	    division [style padding 10px] {
		tk::dummy::3
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jqw-component-upload
	     "
    division [style margin 100px] {
	jqw::component::upload::init -id \"jqw-component-upload-test\" -callback [URL ajax 1 callback jqw::component::upload::test:cb]
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'jqw-component-window
	     "
    division [style margin 0px] {
	tk::dummy::3 -size 1
	h1 align=center [url \"Open Window\" \"#\" class=\"btn btn-default\" onclick=\"jqwComponentWindow.open('jqw-window-test-window')\"]
    }
    jqw::component::window::init -id \"jqw-window-test\" -resizable false -draggable true -open false -position \"{x:30, y:30}\" -guts {
	division id=\"windowHeader\" {
	    put \"<i class='fa fa-smile-o'></i> WINDOW TITLE\"
	}
	division style=\"overflow:hidden\" id=\"windowContent\" {
	    # PLACE YOUR STATIC CODE HERE OR USE url OPTION
	    h1 waiting...
	}
    } -modal true -url [URL ajax 1 callback tk::dummy::3]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-accordion
	     "
    mtk::component::accordion::init -id \"mtk-component-accordion-test\" -panels [subst {
	\"[lorem 3]\" \"tk::dummy::3\"
	\"[lorem 3]\" \"tk::dummy::3\"
	\"[lorem 3]\" \"tk::dummy::3\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-alert
	     "
    mtk::component::alert::init -id \"tb3-component-tb3-alert-test\" -type [set type \"info\"] -close 1 -guts {
	p [lorem 40]
	p [lorem 30]
	put [url \"First Link\" \"#\" class=\"alert-link\"]
	space 10 0
	put \"|\"
	space 10 0
	put [url \"Second Link\" \"#\" class=\"alert-link\"]
	hr
	button \"GOT IT!\" class=\"btn btn-$type\" data-dismiss=\"alert\" aria-hidden=\"true\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-block
	     "
    br;br
    set inc 0
    division class=\"container$::fluid\" {
	division class=\"row$::fluid\" {
	    foreach i {1 2 3} {
		division class=\"col-md-4\" {
		    mtk::component::block::init -id \"block-test-[incr inc]\"
		}
	    }
	}
	division class=\"row$::fluid\" {
	    foreach i {1 2} {
		division class=\"col-md-6\" {
		    mtk::component::block::init -id \"block-test-[incr inc]\"
		}
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-boxed
	     "
    set values [list]
    lappend values 1 \"red\"	\"box-1<BR><small>[string range [lorem 3] 0 10]</small>\"
    lappend values 2 \"blue\"	\"box-2<BR><small>[string range [lorem 3] 0 10]</small>\"
    lappend values 3 \"green\"	\"box-3\"
    mtk::component::boxed::init -id \"test\" -radio \"0\" -var \"rb\" -values \"$values\" -bind \"mybox\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-breadcrumb
	     "
    mtk::component::breadcrumb::init -id \"mtk-component-breadcrumb-test\" -items [subst {
	page1 \"[lorem 3]\"
	page2 \"[lorem 3]\"
	page3 \"[lorem 3]\"
	page4 \"[lorem 3]\"
    }]
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		// DO WHATEVER YOU NEED TO HERE
		// ...
		//alert(id);
	    }
	    jQuery.subscribe(\"mtkComponentBreadcrumbClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-bricks
	     "
    division [style margin 30px] {
	mtk::component::bricks::init -id \"bricks-test\" -guts {
	    division class=\"demo\" {
		division class=\"item\" {
		    bullet_list id=\"content-slider\" class=\"content-slider\" {
			foreach i {0 1 2 3 4 5 6 7 8 9} {
			    li [img /tk/lib/components/mtk/img/proline/$i.png]
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
	    (fset 'mtk-component-btn-group
	     "
    mtk::component::btn::group::init -id \"mtk-component-btn-group-test\" -items [subst {
	page1 \"[lorem 2]\"
	page2 \"[lorem 2]\"
	page3 \"[lorem 2]\"
	page4 \"[lorem 2]\"
    }] -active \"page2\" -vertical \"1\"
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		// DO WHATEVER YOU NEED TO HERE
		// ....
		// ACTIVATE THE CLICKED TAB
		mtkComponentBtnGroup.active(\"mtk-component-btn-group-test\", id);
	    }
	    jQuery.subscribe(\"mtkComponentBtnGroupClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-card
	     "
    set images {
	/Melify/mtk/dev/app/prolineboots/img/products/images/121B-T.jpg
	/Melify/mtk/dev/app/prolineboots/img/products/images/2012.jpg
	/Melify/mtk/dev/app/prolineboots/img/products/images/WIN14502OT.jpg
	/Melify/mtk/dev/app/prolineboots/img/products/images/DC93201MX5.jpg
    }
    division [style position fixed top 20px right 20px] {
	put [url \"FLIP\" \"#\" class=\"btn btn-xs btn-warning\" onclick=\"mtkComponentCard.flip()\"]
    }
    division class=\"container\" {
	foreach i $images {
	    mtk::component::card::init -id \"mtk-component-card-test\" -image $i -description {
		put [lorem [math::random 20 300]]
	    } -short [string toupper [lorem [math::random 2 15]]]
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-carousel
	     "
    mtk::component::carousel::init -id \"mtk-component-carousel-test\" -interval 5000 -active 2000 -slides {
	1000 \"/GitHub/bootstrap/docs/assets/img/components.png\" \"[lorem -language chinese 8]\"
	2000 \"/GitHub/bootstrap/docs/assets/img/devices.png\"    \"[lorem -language hebrew  8]\"
	3000 \"/GitHub/bootstrap/docs/assets/img/sass-less.png\"  \"[lorem -language korean  8]\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-config
	     "
    mtk::component::config::init -id \"config-test\" -fluid \"1\" -rows {
	{
	    r1c1 xs 4 \"mtk::component::config::dummy -size 4\"
	    r1c2 xs 8 \"mtk::component::config::dummy -size 8\"
	}
	{
	    r2c1 xs 4 \"mtk::component::config::dummy -size 4\"
	    r2c2 xs 4 \"mtk::component::config::dummy -size 4\"
	    r2c3 xs 4 \"mtk::component::config::dummy -size 4\"
	}
	{
	    r3c1 xs 2 \"mtk::component::config::dummy -size 2\"
	    r3c2 xs 2 \"mtk::component::config::dummy -size 2\"
	    r3c3 xs 2 \"mtk::component::config::dummy -size 2\"
	    r3c4 xs 2 \"mtk::component::config::dummy -size 2\"
	    r3c4 xs 2 \"mtk::component::config::dummy -size 2\"
	    r3c4 xs 2 \"mtk::component::config::dummy -size 2\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-dashboard
	     "
    put {
	<style>
	#panel-1 .sDashboardWidgetHeader {background: #99CC03;color:#FFF}
	#panel-2 .sDashboardWidgetHeader {background: #FE4445;color:#FFF}
	#panel-3 .sDashboardWidgetHeader {background: #33B5E6;color:#FFF}
	#panel-4 .sDashboardWidgetHeader {background: #FF8800;color:#FFF}
	#panel-1 .sDashboardWidget {border:1px #99CC03 solid;}
	#panel-2 .sDashboardWidget {border:1px #FE4445 solid;}
	#panel-3 .sDashboardWidget {border:1px #33B5E6 solid;}
	#panel-4 .sDashboardWidget {border:1px #FF8800 solid;}
	</style>
    }
    division class=\"clearfix\" {
	mtk::component::dashboard::init -id \"mtk-component-dashboard-test\" -panels {
	    panel-1 \"Panel 1\" \"tk::dummy::3\"
	    panel-2 \"Panel 2\" \"tk::dummy::3\"
	    panel-3 \"Panel 3\" \"tk::dummy::3\"
	    panel-4 \"Panel 4\" \"tk::dummy::3\"
	} -width \"45%\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-datatable-virtual
	     "
    mtk::component::datatable::virtual::init -id \"mtk-component-datatable-test\" -table \"mtk::component::datatable::test:table\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-datepicker
	     "
    # CALL THIS ONCE FOR ALL CALENDARS
    mtk::component::datepicker::init -id \"mydate\" -format \"mm/dd/yyyy\"
    text date= class=\"date text form-control\" [style width 150px]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-dialog
	     "
    put [url \"Launch demo modal\" \"#\" id=\"mylink\" class=\"btn btn-primary btn-lg\"]
    mtk::component::dialog::init -id \"mtk-component-dialog-test\" -link \"mylink\" -title \"My First Dialog\" -content \"tk::dummy::3\" -fade \"\" -buttons {
	button \"Close\"  type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"
	button \"Update\" type=\"button\" class=\"btn btn-primary\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-editor
	     "
    mtk::component::editor::init -id \"mtk-component-tb3-editor-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-form
	     "
    mtk::component::form::init -name \"mtk-component-form-test\" -callback \"mtk::component::form::cb\" -guts {
	division class=\"form-group\" {
	    label \"Name:\"
	    text v(name)= class=\"form-control\" id=\"name\" required
	}
	division class=\"form-group\" {
	    radio_button v(rb)=1 required id=\"rb1\"
	    space 5 0
	    label for=\"rb1\" \"Talk to me!\"
	    space 25 0
	    radio_button v(rb)=2 required id=\"rb2\"
	    space 5 0
	    label for=\"rb2\" \"Don't bother me\"
	}
	division class=\"form-group\" {
	    checkbox v(cb)=1 id=\"cb\"
	    space 5 0
	    label for=\"cb\" \"Keep me logged in\"
	}
	division class=\"form-group\" {
	    submit_button action=Submit class=\"btn btn-default\"
	}
    } -custom {
    	jQuery(\"#name\").rules(\"add\", { 
    	    required:true,  
    	    minlength: 6,
    	    messages: {
    		required: \"Enter at least 6 characters\"
    	    }
    	});	    
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-form-wizard
	     "
    br
    mtk::component::form::wizard::init -id \"form-wizard-test\" -form \"aform::1\" -formid \"form-1\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-google-donut
	     "
    set ::isolate 1
    division class=\"clearfix\" {
	mtk::component::google::donut::init -id \"donut-test\" -values {
	    [[\"You\",  40],[\"Them\", 60],]
	} -colors {
	    [\"steelblue\",\"orange\"]
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-headroom
	     "
    mtk::component::headroom::init -id \"headroom-test\" -height 100 -offset 300 -guts {
	include \"/Melify/mtk/dev/app/fannie/doc/navbar.html\"
    }
    division [style height 200px background steelblue margin-bottom 30px] {
    }
    division class=\"container\" {
	division class=\"row\" {
	    division class=\"col-md-3\" {
		p [lorem 300]
	    }
	    division class=\"col-md-3\" {
		p [lorem 300]
	    }
	    division class=\"col-md-3\" {
		p [lorem 300]
	    }
	    division class=\"col-md-3\" {
		p [lorem 300]
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-hierarchy
	     "
    mtk::component::hierarchy::init -id \"hierarchy-test\" -rootdir $::starkit::topdir/data/tracks
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-icons
	     "
    br;br
    division class=\"clearfix\" {
	mtk::component::icons::init -id \"mtk-component-icons-test\" -items {
	    burgers	\"Burgers\"
	    soups	\"Soups\"
	    salads	\"Salads\"
	    sandwichs	\"Sandwiches\"
	    drinks	\"Drinks\"
	    customs	\"Customize\"
	} -orientation \"horizontal\" -iconWidth \"50px\" -iconHeight \"50px\" -active \"soups\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-layer
	     "
    division [style padding 20px] {
	button \"layer-test-1\" class=\"btn btn-success\" onclick=\"mtkComponentLayer.show({id:'layer-test-1', block:'red'})\"
	put \"&nbsp;\"
	button \"layer-test-2\" class=\"btn btn-success\" onclick=\"mtkComponentLayer.show({id:'layer-test-2', block:'green'})\"
	tk::dummy::2
    }
    mtk::component::layer::init -id	 \"layer-test-1\" -show	 0 -width   800px -height  400px -center  0 -left	 50px -top	 60px -content \"mtk::component::layer::dummy\"
    mtk::component::layer::init -id	 \"layer-test-2\" -show	 0 -width   400px -height  400px -center  1 -left	 100px -top	 100px -content \"mtk::component::layer::dummy\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-list-group-custom
	     "
    mtk::component::list::group::custom::init -id \"mtk-component-list-group-custom-test\" -items [subst {
	1000 \"[lorem 4]\" \"[lorem 30]\"
	2000 \"[lorem 4]\" \"[lorem 30]\"
	3000 \"[lorem 4]\" \"[lorem 30]\"
    }] -active 3000
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		mtkComponentListGroupCustom.active(\"mtk-component-list-group-custom-test\", id);
	    }
	    jQuery.subscribe(\"mtkComponentListGroupCustomClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-list-group
	     "
    mtk::component::list::group::init -id \"mtk-component-list-group-test\" -items [subst {
	1000 \"[lorem 5]\"
	2000 \"[lorem 5]\"
	3000 \"[lorem 5]\"
    }] -active \"3000\"
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		mtkComponentListGroup.active(\"mtk-component-list-group-test\", id);
	    }
	    jQuery.subscribe(\"mtkComponentListGroupClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-login
	     "
    mtk::component::login::init -id \"mtk-component-login-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-media
	     "
    mtk::component::media::init -id \"mtk-component-media-test\" -items [subst {
	1000 \"holder.js/150x100/industrial\" \"[lorem 2]\" \"[lorem 50]\"
	2000 \"holder.js/150x100/industrial\" \"[lorem 2]\" \"[lorem 50]\"
	3000 \"holder.js/150x100/industrial\" \"[lorem 2]\" \"[lorem 50]\"
    }]
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		// DO WHATEVER YOU NEED TO HERE
		// .... ....
	    }
	    jQuery.subscribe(\"mtkComponentMediaClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-menu-dropdown
	     "
    mtk::component::menu::dropdown::init -id \"mtk-component-menu-dropdown-test\" -title \"[lorem 3]\" -items [subst {
	menu1 \"[lorem 2]\"
	menu2 \"[lorem 2]\"
	-     -       
	menu3 \"[lorem 2]\"
    }]
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		// DO WHATEVER YOU NEED TO HERE
		// ...
		//alert(id);
	    }
	    jQuery.subscribe(\"mtkComponentMenuDropdownClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-menu-mega
	     "
    mtk::component::menu::mega::init -id \"mtk-component-menu-mega-test\" -guts {
	include \"/Melify/mtk/dev/tk/lib/components/mtk/html/menu.mega.html\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-navbar
	     "
    mtk::component::navbar::init -id \"navbar-test\" -file \"/Melify/mtk/dev/tk/lib/components/mtk/dat/navbar.dat\" -active \"home\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-node
	     "
    division id=\"root\" {
	mtk::component::node::init -id \"node-1\" -parent \"root\"
	mtk::component::node::init -id \"node-2\" -parent \"node-1\"
	mtk::component::node::init -id \"node-3\" -parent \"node-1\"
	mtk::component::node::init -id \"node-4\" -parent \"node-3\"
	mtk::component::node::init -id \"node-5\" -parent \"node-3\"
	mtk::component::node::init -id \"node-6\" -parent \"node-4\"
	mtk::component::node::init -id \"node-7\" -parent \"node-4\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-panel
	     "
    mtk::component::panel::init -id \"panel-test\" -guts1 tk::dummy::3 -guts2 tk::dummy::2
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-persona
	     "
    tk::db::sqlite::query:v -variable users \"select * from users\"
    for {set i 0} {$i < [lindex $users(*) 0]} {incr i} {
	mtk::component::persona::init -id \"$users($i,id)\" -gender \"$users($i,gender)\" -name \"$users($i,fname) $users($i,lname)\" -role \"$users($i,role)\" -email \"$users($i,email)\" -paswd \"$users($i,paswd)\"
    }
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"JUNK CALLBACK: \" + action + \" \" + id);
	    }
	    jQuery.subscribe(\"mtkComponentPersona\", myCallback);  // SUBSCRIBE1
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-portfolio
	     "
    set style [style width 100px]
    division [style margin 100px margin-top 0] {
	division [style padding 20px] {
	    button \"ALL\" class=\"filter btn btn-default\" data-filter=\".all\" $style
	    space 20 0
	    button \"Category 0\" class=\"filter btn btn-default\" data-filter=\".category-0\" $style
	    space 20 0
	    button \"Category 1\" class=\"filter btn btn-default\" data-filter=\".category-1\" $style
	    space 20 0
	    button \"Category 2\" class=\"filter btn btn-default\" data-filter=\".category-2\" $style
	}
	mtk::component::portfolio::init -id \"mtk-component-portfolio-test\" -guts {
	    division id=\"Container\" {
		for {set i 0} {$i <20} {incr i} {
		    set m [math::random 0 3]
		    division class=\"mix all category-$m\" data-my-order=\"$i\" {
			h4 \"category-$m\"
			put [lorem 10]
		    }
		}
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-raty
	     "
    br
    division class=\"container\" [style border \"1px green solid\" padding 20px] {
	division class=\"row\" {
	    division class=\"col-md-6\" {
		p [lorem 50]
	    }
	    division class=\"col-md-6\" {
		division class=\"pull-right\" {
		    division {
			mtk::component::raty::init -id \"raty-1\" -readonly false -score 3.5 -number 7
		    }
		    division {
			mtk::component::raty::init -id \"raty-2\" -readonly false -score 2 -number 3
		    }
		    division {
			mtk::component::raty::init -id \"raty-3\" -half true
		    }
		}
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-register
	     "
    mtk::component::register::init -id \"mtk-component-register-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-section
	     "
    mtk::component::section::init -id \"section-test\" -sections {
	0	\"tk::dummy::3\"
	1	\"tk::dummy::3\"
	3	\"tk::dummy::3\"
	4	\"tk::dummy::3\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-slick
	     "
    set images [glob /Melify/mtk/dev/app/proline2/img/products/images/small/*.jpg]
    division id=\"mtk-component-slick-test\" class=\"clearfix\" {
	mtk::component::slick::init -id \"test\" -guts {
	    for {set i 0} {$i < 10} {incr i} {
		division class=\"box\" {
		    put [img [lindex $images [math::random 0 [llength $images]]]]
		}
	    }
	} -options {\"centerMode\":false}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-slickgrid
	     "
    mtk::component::slickgrid::init -id \"mtk-component-grid-test\" -title \"SlickGrid table demo\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-slide
	     "
    mtk::component::slide::isolate
    division [style margin 30px] {
	put [url \"SHOW\" \"#\" class=\"btn btn-default\" onclick=\"mtkComponentSlide.slideLeftShow('panel',500)\"]
	space 20 0
	put [url \"HIDE\" \"#\" class=\"btn btn-default\" onclick=\"mtkComponentSlide.slideLeftHide('panel', 500)\"]
    }
    # YOU CAN ALSO SET POSITION TO ABSOLUTE
    division id=\"panel\" [style width 700px background yellow display none] {
	tk::dummy::3
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-socialist
	     "
    mtk::component::socialist::init -id \"socialist\" -url \"http://www.Melify.com\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-spa
	     "
    mtk::component::spa::init -id \"spa-test\" -items {
	home	 \"/mtk/render?callback=tk::dummy::3\"
	products \"/mtk/render?callback=tk::dummy::3\"
	tools	 \"/mtk/render?callback=tk::dummy::3\"
    } -default \"home\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-table-db
	     "
    #USERS SHOULD BREW THEIR OWN. THIS IS FOR TESTING
    mtk::component::table::db::init -id \"table-db-test\" -query \"select id,fname,lname,email,paswd,active,company,updated,role from users\" -custom \"mtk::component::table::db::custom\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-table
	     "
    division class=\"code\" {
	put {
	    <pre>
	    mtk::component::table::init -width \"800px\" -id \"test\" -sortable 1 -type \"csv\" -file \"/Melify/mtk/dev/tk/lib/components/mtk/dat/mtk.component.table.csv\"
	    </pre>
	}
    }
    mtk::component::table::init -width \"800px\" -id \"test\" -sortable 1 -type \"csv\" -file \"/Melify/mtk/dev/tk/lib/components/mtk/dat/mtk.component.table.csv\"
    division class=\"code\" {
	put {
	    <pre>
	    mtk::component::table::init -width \"800px\" -id \"test\" -sortable 1 -type \"query\" -query \"select * from users\"
	    </pre>
	}
    }
    mtk::component::table::init -width \"800px\" -id \"test\" -sortable 1 -type \"query\" -query \"select * from users\"
    division class=\"code\" {
	put {
	    <pre>
	    mtk::component::table::init -width \"800px\" -id \"test\" -sortable 1 -type \"values\" -values {
		{fname, lname, email, paswd, address}
		{Mel, Heravi, mel.heravi@fmr.com, guest, tempor invidunt ut labore et dolore magna aliquyam}
		{Sue, Ryu, sryu@there.com, guest, invidunt ut labore et dolore magna aliquyam tempor}
	    }
	    </pre>
	}
    }
    mtk::component::table::init -width \"800px\" -id \"test\" -sortable 1 -type \"values\" -values {
	    {fname, lname, email, paswd, address}
	    {Mel, Heravi, mel.heravi@fmr.com, guest, tempor invidunt ut labore et dolore magna aliquyam}
	    {Sue, Ryu, sryu@there.com, guest, invidunt ut labore et dolore magna aliquyam tempor}
	}
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-tabs-masthead
	     "
    mtk::component::tabs::masthead::init -id \"mtk-component-tabs-masthead-test\" -items [subst {
	tab-1 \"[string toupper [lorem 2]]\"
	tab-2 \"[string toupper [lorem 2]]\"
	tab-3 \"[string toupper [lorem 2]]\"
	tab-4 \"[string toupper [lorem 2]]\"
	tab-5 \"[string toupper [lorem 2]]\"
    }] -active \"tab-3\"
    division id=\"mtk-component-tabs-masthead-content\" {
	#LOAD INITIAL CONTENT NOW
	tk::dummy::3
    }
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		// DO WHATEVER YOU NEED TO HERE
		// HERE IS A SAMPLE
		tk.load(\"#mtk-component-tabs-masthead-content\", tk.siteurl + \"?callback=tk::dummy::3\");
		// ACTIVATE THE CLICKED TAB
		mtkComponentTabsMasthead.active(\"mtk-component-tabs-masthead-test\", id);
	    }
	    jQuery.subscribe(\"mtkComponentTabsMastheadClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-tabs-static
	     "
    mtk::component::tabs::static::init -id \"mtk-component-tabs-static-test\" -items {
	tab1 \"[lorem 2]\" \"tk-dummy::3\"
	tab2 \"[lorem 2]\" \"tk-dummy::3\"
	tab3 \"[lorem 2]\" \"tk-dummy::3\"
	tab4 \"[lorem 2]\" \"tk-dummy::3\"
    } -active \"tab1\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-tabs
	     "
    mtk::component::tabs::init -id \"mtk-component-tabs-test\" -items [subst {
	page1 \"[lorem 3]\"
	page2 \"[lorem 3]\"
	page3 \"[lorem 3]\"
    }] -active \"page3\" -justified \"\"
    division id=\"mtk-component-tabs-content\" {
	#LOAD INITIAL CONTENT NOW
	tk::dummy::3
    }
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		// DO WHATEVER YOU NEED TO HERE
		// HERE IS A SAMPLE
		tk.load(\"#mtk-component-tabs-content\", tk.siteurl + \"?callback=tk::dummy::3\");
		// ACTIVATE THE CLICKED TAB
		mtkComponentTabs.active(\"mtk-component-tabs-test\", id);
	    }
	    jQuery.subscribe(\"mtkComponentTabsClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-toolbar
	     "
    mtk::component::toolbar::init -id \"mtk-component-toolbar-test\" -items {
	{
	    btn1 \"[lorem 2]\" \"btn-default\"
	    btn2 \"[lorem 2]\" \"btn-default\"
	    btn3 \"[lorem 2]\" \"btn-default\"
	}
	{
	    btn4 \"[lorem 2]\" \"btn-success\"
	    btn4 \"[lorem 2]\" \"btn-info\"
	}
    }
    # SUBSCRIBE TO CLICK PUBLISHES
    javascript {
	put {
	    function myCallback(event, action, id) {
		console.log(\"SUBSCRIBED CALLBACK: \" + action + \" \" + id);
		// DO WHATEVER YOU NEED TO HERE
		// ...
		// ACTIVATE THE CLICKED TAB
		mtkComponentToolbar.active(\"mtk-component-toolbar-test\", id);
	    }
	    jQuery.subscribe(\"mtkComponentToolbarClicked\", myCallback);  // SUBSCRIBE
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-tree
	     "
    mtk::component::tree::init -id \"tree-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-treemap
	     "
    mtk::component::treemap::init -id \"treemap-test\" -width 500 -height 300
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-typeahead
	     "
    mtk::component::typeahead::init -id \"mtk-component-typeahead-test\" -variable \"v\" -placeholder \"type ahead...\" -min \"1\" -values {
	['Heravi', 'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California',
	 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
	 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana'
	]
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-us-map
	     "
    mtk::component::us::map::init -id \"mtk-component-us-map-test\" -width 500px -height 300px
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-word-cloud
	     "
    include \"/tk/lib/components/mtk/inc/mtk.component.word.cloud.test.js\"
    division class=\"clearfix\" {
	division id=\"alert\" {
	}
	mtk::component::word::cloud::init -id \"mtk-word-cloud\" -width 500px -height 350px
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'mtk-component-ymacs
	     "
    mtk::component::ymacs::init -id \"mtk-component-ymacs-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'polymer-component-card
	     "
    division [style margin 50px width 500px] {
	polymer::component::card::init -id \"card-test\" -guts {
	    h1 \"Mel Was Here\"
	    p [lorem 50]
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-box
	     "
    tb::component::box::init -use \"bootstrap\" -version \"2.x\" -id \"box\" -background \"#FFF\" -width \"500px\" -height \"150px\" -content {
	tk::dummy::3
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-btn-dropdown
	     "
    tb::component::btn::dropdown::init -id \"btn\" -use \"bootstrap\" -version \"2.x\" -class \"warning\" -label \"Click on Me\" -menus {
	\"#\"	\"Action I\"
	\"#\"	\"Action II\"
	\"#\"	\"Action III\"
	-	-
	\"#\"	\"Action IV\"
	\"#\"	\"Action V\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-bubble
	     "
    tb::component::bubble::init -id \"test\" -use \"bootstrap\" -version \"2.x\" -title \"STATIC POPOVER\" -direction \"top\" -position \"top 20px left 200px\" -width 200px -guts {
	p [lorem 10]
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-cards
	     "
    br
    division class=\"container\" {
	division class=\"row\" {
	    division class=\"col-md-12\" {
		tb::component::cards::init -id xxx
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-carousel
	     "
    tb::component::carousel::init -id \"carousel\" -use \"bootstrap\" -version \"2.x\" -width \"800px\" -height \"300px\" -delay \"4000\" -images [subst {
	\"/GitHub/bootstrap/docs/assets/img/components.png\" \"[lorem -language chinese 8]\"
	\"/GitHub/bootstrap/docs/assets/img/devices.png\"    \"[lorem -language hebrew  8]\"
	\"/GitHub/bootstrap/docs/assets/img/sass-less.png\"  \"[lorem -language korean  8]\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-container
	     "
    tb::component::container::init -use \"bootstrap\" -version \"2.x\" -id \"test-container\" -width \"800\" -height \"200\" -title \"My Container Title\" -close \"alert('wana close me ?')\" -content {
	    p [lorem 100]
	} -buttons {
	    \"Purchase\"	\"btn-primary\"	\"/mtk/render?callback=tb::component::container::dummy\"
	    \"Close\"	\"\"		\"/mtk/render?callback=tb::component::container::dummy\"
	}
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-dialog
	     "
    put [url \"Default - Dialog\" \"#dialog-1\" class=\"btn\" data-toggle=\"modal\"]
    space 30 0
    put [url \"Custom - Dialog\"  \"#dialog-2\" class=\"btn\" data-toggle=\"modal\"]
    tb::component::dialog::init -id \"dialog-1\" -use \"bootstrap\" -version \"2.x\" -title \"Default Dialog\" -guts {
	p [lorem 40]
    }
    tb::component::dialog::init -id \"dialog-2\" -use \"bootstrap\" -title \"Custom Dialog\" -type \"error\" -guts {
	tk::dummy::3 -size 1
    } -buttons [subst {
	{[url \"Register\" \"#\" class=\"btn btn-primary\"]}
	{[url \"Sign In\"  \"#\" class=\"btn btn-success\"]}
	{[url \"Cancel\"   \"#\" class=\"btn btn-danger\" data-dismiss=\"modal\"]}
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-drawer
	     "
    tb::component::drawer::init -id \"drawer-test\" -lhs {
	bullet_list class=\"nav navbar-stacked tb-component-drawer-lhs\" {
	    li [url \"Home\" \"#\" id=\"home\"]
	    li [url \"Products\" \"#\" id=\"products\"]
	    li [url \"Contact\" \"#\" id=\"contact\"]
	}
    } -mid {
	division class=\"page-header\" [style margin-top 0] {
	    h1 \"Welcome <small> -subtext for header</small>\"
	}
	tk::dummy::1
    } -rhs {
	division class=\"col-xs-7 col-sm-3 col-md-3 sidebar sidebar-right sidebar-animate\" {
	    bullet_list class=\"nav navbar-stacked tb-component-drawer-lhs\" {
	    li [url \"Hello\"   \"#\" id=\"hello\"]
		li [url \"Goodbye\" \"#\" id=\"goodbye\"]
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-dropdown
	     "
    division [style min-height 200px] {
	set label(1) [tb::component::dropdown::init -id \"p1\" -use \"bootstrap\" -version \"2.x\" -label \"Click here 4 Dropdown\"  -guts tk::dummy::3]
	set label(2) [tb::component::dropdown::init -id \"p2\" -use \"bootstrap\" -label \"<i class=icon-cog></i>\" -guts tk::dummy::2]
	put \"Gubergren, $label(1) no sea takimata sanctus est Lorem i $label(2) takimata sanctus est.\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-editor-1
	     "
    tb::component::editor::1::init -id \"editor\" -use \"bootstrap\" -version \"2.x\" 
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-faq
	     "
    tb::component::faq::init -id \"faq\" -use \"bootstrap\" -version \"2.x\" -csvfile \"$::TKSERVER/tk/lib/components/tb/data/FAQ.csv\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-form-countries
	     "
    tb::component::form::countries::init -id \"login\" -use \"bootstrap\" -version \"2.x\" -selected \"US\" -variable \"v(country)\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-form-languages
	     "
    tb::component::form::languages::init -id \"login\" -use \"bootstrap\" -version \"2.x\" -selected \"ja\" -variable \"v(language)\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-form-login
	     "
    division class=\"well well-small\" [style width 250px] {
	tb::component::form::login::init -id \"login\" -use \"bootstrap\" -version \"2.x\" -callback \"tb::component::form::login::callback\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-form-register
	     "
    division class=\"well well-small\" [style width 250px] {
	tb::component::form::register::init -id \"register\" -use \"bootstrap\" -version \"2.x\" -callback \"tb::component::form::register::callback\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-form-states
	     "
    tb::component::form::states::init -id \"login\" -use \"bootstrap\" -version \"2.x\" -selected \"NY\" -variable \"v(state)\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-form-timezones
	     "
    tb::component::form::timezones::init -id \"test\" -use \"bootstrap\" -version \"2.x\" -selected \"New_York\" -variable \"v(timezone)\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-message
	     "
    tb::component::message::init -id \"m-1\" -use \"bootstrap\" -version \"2.x\" -width \"500px\" -type \"warning\" -content {
	h3 \"alert...\"
	p \"[lorem 10]\"
    }
    tb::component::message::init -id \"m-2\" -use \"bootstrap\" -width \"500px\" -type \"error\" -content {
	h3 \"error...\"
	p \"[lorem 10]\"
    }
    tb::component::message::init -id \"m-3\" -use \"bootstrap\" -width \"500px\" -type \"success\" -content {
	h3 \"success...\"
	p \"[lorem 10]\"
    }
    tb::component::message::init -id \"m-4\" -use \"bootstrap\" -width \"500px\" -type \"info\" -content {
	h3 \"info...\"
	p \"[lorem 10]\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-nav-stacked
	     "
    # types are nav-tabs, nav-pills
    # direction nav-stacked or \"\"
    division class=\"container-fluid\" {
	division class=\"row-fluid\" {
	    division class=\"span3\" {
		#   ID          CALLBACK     LABEL
		#   ----------- ------------ ------------------
		tb::component::nav::stacked::init -id \"test-nav-stacked\" -use \"bootstrap\" -version \"2.x\" -menus {
		    home	tk::dummy::1 \"Home\"
		    profile	tk::dummy::2 \"Profile\"
		    downloads	tk::dummy::3 \"Downloads\"
		    contacts	tk::dummy::3 \"Contacts\"
		    misc	tk::dummy::3 \"Misc. Items\"
		} -selected \"profile\" -target \"rhs\" -type \"nav-tabs\" -direction \"nav-stacked\"
	    }
	    division class=\"span9\" id=\"rhs\" [style height 300px overflow auto] {
		put [lorem 100]
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-navbar
	     "
    tb::component::navbar::init -id \"navbar\" -active \"inbox\" -file \"$::TKSERVER/tk/lib/components/tb/data/navbar.html\" -fixed \"\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-popover
	     "
    division [style padding 100px background #FFF] {
	p [url [lorem 4] \"#\" id=\"danger\" data-placement=\"below\" title=\"\"]
	tb::component::popover::init -id \"test\" -link \"danger\" -content \"tb::component::popover::content\" -top \"140px\" -left \"100px\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-progressbar
	     "
    division [style width 600px] {
	tb::component::progressbar::init -id \"pbar\" -use \"bootstrap\" -version \"2.x\" -value \"75\" -stripe \"true\" -type \"info\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-reader
	     "
    tb::component::reader::init -id \"reader\" -use \"bootstrap\" -version \"2.x\" -label \"Gone with the Wind\" -content \"[lorem 300]\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-resizer
	     "
    tb::component::resizer::init -id \"test\" -use \"bootstrap\" -version \"2.x\" -position \"top 20px right 20px\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-responsive-indicator
	     "
    tb::component::responsive::indicator::init
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-slide-buttons
	     "
    Trace
    division [style margin 30px] {
	tb::component::slide::buttons::init -id \"test\" -use \"bootstrap\" -version \"2.x\" -items {
	    \"#\" \"Terms of Use\"           \"btn-warning\"
	    \"#\" \"Legal Info & Agreement\" \"btn-info\"
	    \"#\" \"Log In\"                 \"btn-success\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-social
	     "
    division [style width 300px] {
	tb::component::social::init -id \"social\" -use \"bootstrap\" -version \"2.x\" -url \"http://www.Melify.com\" -title \"Melify Internet Toolkit. Applications @ da speed of thought\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-tabable
	     "
    tb::component::tabable::init -id \"test\" -use \"bootstrap\" -version \"2.x\" -selected \"tab-1\" -menus {
	tab-1 \"Summary\"		\"tk::dummy::1\"
	tab-2 \"Positions\"	\"tk::dummy::3\"
	tab-3 \"Performance\"	\"tk::dummy::3\"
	tab-4 \"Analysis\"	\"tk::dummy::3\"
	tab-5 \"Activity\"	\"tk::dummy::3\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-table-datatable
	     "
    tb::component::table::datatable::init -id \"datatable\" -use \"bootstrap\" -version \"2.x\" -file $::starkit::topdir/data/inventory.csv
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-table-db
	     "
    # GO AHEAD AND RESIZE THE SCREEN (see columns appear/disappear based on the media size)
    tb::component::table::db::init -id \"dbtable\" -use \"bootstrap\" -version \"2.x\" -datatable \"false\" -dbtype \"sqlite\" -media {
	right   id	\"ID\"		\"optional\"
	left    fname	\"First Name\"	\"essential\"
	left    lname	\"Last Name\"	\"essential\"
	left    email	\"Email\"		\"essential\"
	center  company	\"Company\"	\"optional\"
	center  paswd	\"Password\"	\"optional\"
	center  updated	\"Updated\"	\"optional\"
	center  active	\"Active\"	\"optional\"
	center  role	\"Role\"		\"optional\"
    } -query {
	select id,fname,lname,email,active,updated,role from users
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-tabs-1
	     "
    tb::component::tabs::1::init -id \"tabs-1\" -use \"bootstrap\" -version \"2.x\" -selected \"0\" -background \"#FFF\" -menus [subst {
	home	 \"Home\"       \"[href callback tk::dummy::3 ajax 1]\"
	products \"Products\"   \"[href callback tk::dummy::2 ajax 1]\"
	contact	 \"Download\"   \"[href callback tk::dummy::1 ajax 1]\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-tabs-2-static
	     "
    tb::component::tabs::2::static::init -id \"tabs-2\" -use \"bootstrap\" -version \"2.x\" -background \"#FFF\" -menus {
	tab-home      \"Home\"       \"tk::dummy::3\"
	tab-products  \"Products\"   \"tk::dummy::3\"
	tab-download  \"Download\"   \"tk::dummy::3\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-tabs-2
	     "
    tb::component::tabs::2::init -id \"tabs-2\" -use \"bootstrap\" -version \"2.x\" -background \"#FFF\" -menus [subst {
	tab-home      \"Home\"       \"[href callback tk::dummy::1]\"
	tab-products  \"Products\"   \"[href callback tk::dummy::2]\"
	tab-contact   \"Download\"   \"[href callback tk::dummy::3]\"
    }]
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-tabs-3
	     "
    tb::component::tabs::3::init -id \"test\" -use \"bootstrap\" -version \"2.x\" -selected \"tab-2\" -menus {
	tab-1 \"Summary\"		\"tk::dummy::3\"
	tab-2 \"Positions\"	\"tk::dummy::3\"
	tab-3 \"Performance\"	\"tk::dummy::3\"
	tab-4 \"Analysis\"	\"tk::dummy::3\"
	tab-5 \"Activity\"	\"tk::dummy::3\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-tags
	     "
    division [style margin 30px] {
	tb::component::tags::init -id \"test\" -use \"bootstrap\" -version \"2.x\" -class \"success\" -callback \"tb::component::tags::callback\" -values {
	    \"microsoft\"
	} -suggestions {
	    \"c++\",\"office\",\"jquery\",\"Bootstrap\",\"Melify\"
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-typeahead
	     "
    division [style margin 100px width 300px] {
	text t= id=\"search\" type=\"text\" class=\"form-control\" data-provide=\"typeahead\" data-items=\"4\" 
    }
    tb::component::typeahead::init -id \"search\" -list {
	\"PHP\" \"MySQL\" \"SQL\" \"PostgreSQL\" \"HTML\" \"CSS\" \"HTML5\" \"CSS3\" \"JSON\"
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tb-component-video
	     "
    division [style margin 100px] {
	tb::component::video::init -id \"test\" -file \"/FID-VIDEOS/Goal-College\" -width 300 -height 400
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'tk-component-card
	     "
    division [style padding 20px background #FFF] {
	division class=\"container\" {
	    division class=\"row\" {
		division class=\"col-md-12\" {
		    foreach i {angle-down home angle-right} {
			tk::component::card::init -id \"card-$i\" -icon $i -label [string toupper [lorem 5]] -color \"indianred\"
		    }
		}
	    }
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'wc-context-menu
	     "
    division [style margin 50px] {
	wc::context::menu::init -id \"wc-context-menu-1\" -items {
	    cm-1 \"<i class='fa fa-file'></i>\" \"Context Menu One\"
	    cm-2 \"<i class='fa fa-refresh'></i>\" \"Context Menu Two\"
	    cm-3 \"<i class='fa fa-cog'></i>\" \"Context Menu Three\"
	} -selected cm-2
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'wc-table-group
	     "
    Trace
    wc::table::group::init -id \"wc-table-group\" -tid \"mytable\" -pid \"table-group\"
    br
    division class=\"container\" {
	division class=\"row\" {
	    division class=\"col-md-12\" {
		put \"<a id='table-group' data-placement='down' href='#'><i class='fa fa-bars fa-lg'></i></a> Customize Columns\"
	    }
	}
	division class=\"row\" {
	    division class=\"col-md-12\" {
		set cols 6
		set rows 4
		table id=\"mytable\" class=\"table table-bordered table-striped table-condensed\" {
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
	}
    }
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'wc-table
	     "
    wc::table::init -id \"wc-table-test\"
	     ")

	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    ;;
	    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    (fset 'wc-header
	     "
    wc::header::init -id \"wc-header-test\"
	     ")

