;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'css-bg
"\
div {
    background:url(/images/junk.png);
    background-size:80px 60px;
    background-repeat:no-repeat;
}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-replace
"
tk::replace -element \"#G100\" -proc tk::dummy::3
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-append
"
tk::append  -element \"#G200\" -proc tk::dummy::3
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'state
"
	set state [expr {($i == 0) ? \"active\" : \"\"}]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'no-ie
"
include \"/tk/inc/check.4ie.js\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'find
      "find . -name \"*.tcl\" | xargs grep -i \"RedOlive\""
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-dom-data
"put [span dom-data=\"tk(fname)\" \"UNDEFINED\"]"
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-dom-data-raw
      "<span dom-data=tk(fname)>UNDEFINED</span>"
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-dom-data-sample
"      
	p [span dom-data=\"tk(fname)\" \"UNDEFINED\"]

	set ::tk(fname) [lorem 10]

	javascript {
	    put {
		setTimeout(function(){
		    tk.updateDOM();
		}, 4000);
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'findr
      "find . -name \".svn\" -exec rm -rf {} \\;"
)

(fset 'git-search
"alias gsearch=\"git grep <string> $(git rev-list --all)\"")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'timestamp
"Time-stamp: <2013-11-12 08:57:40 (a527951)>")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'gb
"git clone --bare --mirror melify@www.melify.com:/Repos/"
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'spull
"
alias spull=\"ssh -t melify@www.melify.com 'cd $PWD && exec git pull'\"
spull
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TIME STAMP
;;
;;   add 'Time-stamp: <2013-11-12 08:46:19 (a527951)>' to your file first
;;
;;   and then M-x time-stamp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq 
  time-stamp-active t          ; do enable time-stamps
  time-stamp-line-limit 10     ; check first 10 buffer lines for Time-stamp: 
  time-stamp-format "%04y-%02m-%02d %02H:%02M:%02S (%u)") ; date format

(add-hook 'write-file-hooks 'time-stamp) ; update when saving

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-onclick
"onclick=\"tk.load('#div-id','[URL callback tk::dummy::2]')\"")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-button
"button [lorem 3] class=\"btn btn-default\"")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-grid
"
	division class=\"clearfix\" {
	    tk::grid -id \"g-1\" -width \"300px\" -height \"300px\" -background \"lime\" -content {
		division [style padding 10px] {
		    p [lorem 10]
		}
	    }

	    tk::grid -id \"g-2\" -width \"700px\" -height \"300px\" -background \"yellow\" -content {
		division [style padding 10px] {
		    p [lorem 30]
		}
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-div
"division class=\"clearfix\" {
}")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-div-styled
"
    division class=\"clearfix\" [style background wheat] {
	put [img /tk/img/common/testing.gif]
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-style
"[style margin 30px]")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'span
"<span></span>")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-dom-data-test
"
	h1 [style color red]  dom-data=\"tk(test)\" \"Hello World\"
	h1 [style color blue] dom-data=\"tk(test)\" \"Bye\"
	
	set ::tk(test) [lorem 20]

	javascript {
	    put {
		setTimeout(function(){
		    tk.updateDOM();
		}, 2000);
	    }
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-blink
"
    h1 id=\"blink\" \"Loading...\"
    put \"<script>tk.blink('#blink', 5)</script>\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-shuffle
"
    include \"/tk/jquery/gits/cycle/jquery.cycle.all.js\"
    include \"/tk/jquery/gits/jquery-easing/jquery.easing.min.js\"

    division [style padding 200px margin-left 200px] {
	division id=\"shuffle\" class=\"pics\" [style position relative overflow visible] {
	    foreach i {skyblue yellow khaki pink} {
		division [style position absolute width 400px height 300px background $i padding 10px border-radius 5px] {
		    put [strong $i]
		    hr
		    p [lorem 20]
		}
	    }
	}
    }

    # fx: zoom, shuffle, turnDown, curtainX, scrollRight
    javascript {
	put {
	    $(\"#shuffle\").cycle({ 
		fx:     \"shuffle\", 
		easing: \"easeInBack\", 
		delay:  -4000 
	    });
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-buffer
"
set url [URL callback tk::dummy::3]
h1 [url \"Update\" \"#\" class=\"tk-link\" tk-url=\"$url\" tk-src=\"dummy-3\" tk-target=\"rhs\" tk-cache=\"1\"]
put \"<script>tk.buffer()</script>\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-text-blur
"
    include \"/tk/jquery/gits/foggy/jquery.foggy.min.js\"

    division [style padding 100px] id=\"xx\" {
	p [lorem 100]
	put [img /tk/img/common/soon.gif]
    }

    javascript {
	put {
	    $(\"#xx\").foggy();

	    setTimeout(function(){
		$(\"#xx\").foggy(false);
	    }, 2000);
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-text-mask
"
    #http://www.igorescobar.com/blog/2012/05/06/masks-with-jquery-mask-plugin

    include \"/tk/jquery/gits/jQuery-Mask-Plugin/jquery.mask.min.js\"
    
    text ta= class=\"money\" type=\"text\"

    javascript {
	put {
	    $(\".money\").mask(\"(000) 000-0000\", {reverse: false});
	}
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-text-mask-inline
"
    text ta= data-mask=\"(000) 000-0000\"

    include \"/tk/jquery/gits/jQuery-Mask-Plugin/jquery.mask.min.js\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-text-mask-examples
"
  $('.date').mask('11/11/1111');
  $('.time').mask('00:00:00');
  $('.date_time').mask('00/00/0000 00:00:00');
  $('.cep').mask('00000-000');
  $('.phone').mask('0000-0000');
  $('.phone_with_ddd').mask('(00) 0000-0000');
  $('.phone_us').mask('(000) 000-0000');
  $('.mixed').mask('AAA 000-S0S');
  $('.cpf').mask('000.000.000-00', {reverse: true});
  $('.money').mask('000.000.000.000.000,00', {reverse: true});
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'mproc
"
	######################################################
	##### Time-stamp: <2013-10-26 16:28:51 (melify)>
	######################################################
	m::proc -public proc-name {
	} {
	    DOCUMENTATION GOES HERE...
	} {    
	    Trace
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-bg
 "
	set bg \"#EBEBEB\"
	set bg [expr {($bg == \"#EBEBEB\") ? \"#FFFFFF\" : \"#EBEBEB\"}]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-form
 " 
	tk::form -name \"form-name\" -callback \"form-callback\" -guts {
	}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-option
"
    option $x [expr {($y == $i) ? \"selected\" : \"\"}]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'put-js
"
	put \"<script language=\'javascript\' src=\'file.js\'></script>\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'put-css
"
	cgi_relationship \"stylesheet\" \"file.css\" \"text/css\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'print:array
"
	tk::print:array v
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-bullet-list
 " 
    bullet_list {
	li \"something goes here\"
	li \"something goes here\"
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-number-list
 " 
    number_list {
	li \"something goes here\"
	li \"something goes here\"
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-db-sqlite-query
"set res [tk::db::sqlite::query \"select * from users\"]")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-db-sqlite-query-v
"tk::db::sqlite::query:v -variable v \"select * from users\"")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-url
"put [url \"Click here\" \"[href callback tk::dummy::3]\"]")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-url-target
"
h1 [url \"Click Here\" \"#\" url=\"[URL callback tk::dummy::3]\" dom-target=\"ele-id\"]
p id=\"ele-id\" [waiting]
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-includes
"
tk::include::viewport
tk::include::common
tk::include::bootstrap -local 1
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-include-navbar
"
    if {$::userid == \"\"} {
	put [subst [file:read /RedOlive/mtk/dev/app/$::APP/app.vfs/data/navbar.public.html]]
    } else {
	put [subst [file:read /RedOlive/mtk/dev/app/$::APP/app.vfs/data/navbar.private.html]]
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'font-face
"
@font-face {
    font-family: 'Carrois Gothic SC', sans-serif;
    src: url('/tk/fonts/Carrois Gothic SC regular.ttf');
}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'ellipsis
"
.ellipsis {
    white-space: nowrap;
    width: 100%;
    overflow: hidden;
    text-overflow: ellipsis;
}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'f-expr
"[expr {([info exist ::tk(fname)] == 0) ? \"\" : \"$::tk(fname)\"}]")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'f-text
"text v(name)=[expr {([info exist ::tk(name)] == 0) ? \"\" : \"$::tk(name)\"}] type=\"text\" class=\"required\"")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'f-radio
"radio_button v(name)=1 id=\"rb-status-self\" [expr {($::tk(name) == 1) ? \"checked\" : \"\"}]");


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-table
"
table id=\"mytable\" {
    table_row {
	table_data {
	    put [lorem 3]
	}
    }
}
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-table-full
"
set cols 6
set rows 4

table id=\"mytable\" class=\"table\" {
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
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-table-full-db
"
	tk::db::sqlite::query:v -variable v \"select * from users\"

	set head [lrange $v(*) 1 end]
	set cols [llength $head]
	set rows [lindex $v(*) 0]

	table id=\"mytable\" class=\"table\" {
	    table_head {
		table_row {
		    for {set c 0} {$c < $cols} {incr c} {
			table_th {
			    put [lindex $head $c]
			}
		    }
		}
	    }

	    table_body {
		for {set r 0} {$r < $rows} {incr r} {
		    table_row {
			for {set c 0} {$c < $cols} {incr c} {
			    table_data {
				put $v($r,[lindex $head $c])
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
(fset 'table-id
"
    set tid \"mytable\"
    set row -1
    
    table id=\"$tid\" class=\"table\" {
	incr row

	table_row class=\"$tid-row-$row\" {
	    set col -1

	    table_data class=\"$tid-row-$row-col\" id=\"$tid-row-$row-col-[incr col]\" {
		put [lorem 3]
	    }
	    table_data class=\"$tid-row-$row-col\" id=\"$tid-row-$row-col-[incr col]\" {
		put [lorem 3]
	    }
	}
    }
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'google-fonts
"
@font-face {
    font-family: \"OverlockSC\";
    src: url(\"/GitHub/googlefontdirectory/fonts/overlocksc/OverlockSC-Regular.ttf\") format(\"truetype\");
}
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'css-ellipsis
"
	width:200px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
")

(fset 'spa-setup 
"\
    division id=\"${_id}\" {
	division id=\"${_id}-home\" {
	    public::home::content
	}
	division id=\"${_id}-register\" {
	    public::register::init
	}
    }
    
    javascript {
	put [subst {
	    tk.flip(\"${_id}\",\"${_id}-home\");
	}]
    }
");

(fset 'tk-submit-button
      "put \"<button type='submit' class='btn btn-primary'><i class='fa fa-smile-o'></i> PUSH IT</button>\"");

(fset 'shebang
      "#!/usr/bin/env tclkit");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'tk-table-full-2
"
# STYLE COLUMNS HERE
    put {
	<style>
	.col-wheat {
	    background: wheat;
	    text-align:center!important;
	}
	</style>
    }

    # DEFINE HEADERS
    set headers [subst {
	apple	\"[lorem 2]\"
	orange	\"[lorem 2]\"
	peach	\"[lorem 2]\"
	pear	\"[lorem 2]\"
	wheat	\"[lorem 2]\"
	white	\"[lorem 2]\"
	blue	\"[lorem 2]\"
    }]

    set r -1

    table id=\"mytable\" class=\"table table-bordered table-striped table-hover\" {
	# CREATE TABLE HEADERS
	table_head {
	    table_row class=\"row-$r\" {
		incr r
		set col -1
		foreach {i j} $headers {
		    table_th class=\"row-$r col-$i\" {
			put $j
		    }
		}
	    }
	}

	# ADD TABLE BODY
	table_body {
	    foreach row {0 1 2} {
		incr r

		table_row class=\"row-$r\" {
		    foreach {i j} $headers {
			table_data class=\"row-$r col-$i\" {
			    put [lorem 2]
			}
		    }
		}
	    }
	}
    }
");
