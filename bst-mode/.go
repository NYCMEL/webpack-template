#!/Melify/bin/mac/tclkit

cd ../
source .wct
cd ./bst-mode

foreach i [glob *] {
    if {$i == "z"} {
	continue
    }

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
