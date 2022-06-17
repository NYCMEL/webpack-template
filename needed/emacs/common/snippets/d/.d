#!/Melify/bin/mac/tclkit

set ds {
    mdb      "/Melify/mtk/dev/app/_mdb/app.vfs/lib/app"
    wc       "/Melify/mtk/dev/tk/lib/components/wc/"
    mc       "/Melify/mtk/dev/tk/lib/components/mc/"
    angelica "/Melify/mtk/dev/app/angelica/app.vfs/lib/app"
    w        "/Melify/mtk/dev/tk/lib/components/w/"
    mwc      "/Melify/mtk/dev/tk/lib/components/mwc/"
    mtk      "/Melify/mtk/dev/tk/lib/components/mtk"
    takeda   "/Melify/mtk/dev/app/takeda/app.vfs/lib/app"
    wcw      "/Melify/mtk/dev/app/_wcw/app.vfs/lib/app"
    bs4      "/Melify/mtk/dev/app/bs4/app.vfs/lib/app"
    md       "/Melify/mtk/dev/app/md/app.vfs/lib/app"
    jq       "/Melify/mtk/dev/tk/lib/components/jq"
    maxure   "/Melify/mtk/dev/app/maxure/app.vfs/lib/app"
    maker    "/Melify/mtk/dev/app/maker/app.vfs/lib/app"
    maker-dd "/Melify/mtk/dev/app/maker-dd/app.vfs/lib/app"
    maker-2  "/Melify/mtk/dev/app/maker-2/app.vfs/lib/app"
    maker-3  "/Melify/mtk/dev/app/maker-3/app.vfs/lib/app"
    art      "/Melify/mtk/dev/app/_art/app.vfs/lib/app"
    search   "/Melify/mtk/dev/app/_search/app.vfs/lib/app"
    24       "/Melify/mtk/dev/app/twofour/app.vfs/lib/app/"
    free     "/Melify/mtk/dev/tk/lib/components/free/"
    melify   "/Melify/mtk/dev/app/melify/app.vfs/lib/app/"
    links    "/Melify/mtk/dev/app/links/app.vfs/lib/app/"
    margo    "/Melify/mtk/dev/app/margo/app.vfs/lib/app/"
    gallery  "/Melify/mtk/dev/app/gallery/app.vfs/lib/app"
    ivy   "/Melify/mtk/dev/app/ivy/app.vfs/lib/app"
    rapp   "/Melify/mtk/dev/app/rapp/src"
    git   "/Melify/mtk/dev/app/misc/git-server/example"
    designer "/Melify/mtk/dev/app/designer/app.vfs/lib/app"
    builder  "/Melify/mtk/dev/app/builder/app.vfs/lib/app"
    webpack  "/Melify/mtk/dev/tk/lib/components/misc/webpack/src/"
    react    "/Melify/mtk/dev/tk/lib/components/misc/react/src/"
    angular  "/Melify/mtk/dev/tk/lib/components/misc/angular/app/"
    misc     "/Melify/mtk/dev/tk/lib/components/misc/"
    void     "/Melify/mtk/dev/app/_void/app.vfs/lib/app/"
    nycmel   "/Melify/mtk/dev/app/NYCMel.github.io/"
}

set t {
# -*- mode: snippet -*-
# name: d-$i
# key: d
# type: command  
# --
(fset 'd-$i (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd $j")) arg)))
(execute-kbd-macro "cd $j")
}

foreach {i j} $ds {
    set f [open $i w]
    puts $f [string trim [subst $t]]
    close $f
}
