#!/Melify/bin/mac/tclkit

foreach i [glob ../bs-mode/*] {
    file copy $i .
}

foreach i [glob *] {
    puts $i
    set f [open $i r]
    set r [read $f]
    close $f

    regsub -all "# name: b-" $r "# name: bt-" r
    regsub -all "# key: b"   $r "# key: bt"   r

    set f [open $i w]

    foreach i [split $r \n] {
	puts $f $i

	if {$i == "# --"} {
	    puts $f "puts \{"
	}
    }

    puts $f "\}"
    close $f
}
