#!/Melify/bin/mac/tclkit

file delete -force /tmp/snippets
file mkdir /tmp/snippets

set comps [glob /Melify/mtk/dev/tk/lib/components/misc/webpack/src/w/html/*.html]

foreach i $comps {
    set f [open $i r]
    set t [file rootname [file tail $i]]

    set html [subst {# -*- mode: snippet -*-
# name: w-$t
# key: w-$t
# --
    }]

    while {[gets $f line] >= 0} {
	if {[string first "<!-- SAMPLE -->" $line] != -1} {
	    break
	}
    }

    while {[gets $f line] >= 0} {
	if {[string first "<!-- SAMPLE -->" $line] == -1} {
	    if {[string first "<!--" $line] == -1} {
		append html "$line\n"
	    }
	} else {
	    break
	}
    }

    close $f

    set f [open ./w/$t w]
    puts $f $html
    close $f
}
