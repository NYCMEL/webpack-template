#!/Melify/bin/mac/tclkit

set tmp {# -*- mode: snippet -*-
# name: j-$i
# key: j
# --
}

set funcs {
    "hide"	"(sel)"
    "hideElements"	"(elements)"
    "hideElement"	"(element)"
    "show"	"(sel,a)"
    "showElements"	"(elements)"
    "showElement"	"(element)"
    "addStyle"	"(sel,prop,val)"
    "styleElements"	"(elements,prop,val)"
    "styleElement"	"(element,prop,val)"
    "toggleShow"	"(sel)"
    "addClass"	"(sel,name)"
    "addClassElements"	"(elements,name)"
    "addClassElement"	"(element,name)"
    "removeClass"	"(sel,name)"
    "removeClassElements"	"(elements,name)"
    "removeClassElement"	"(element,name)"
    "toggleClass"	"(sel,c1,c2)"
    "toggleClassElements"	"(elements,c1,c2)"
    "toggleClassElement"	"(element,c1,c2)"
    "getElements"	"(id)"
    "filterHTML"	"(id,sel,filter)"
    "sortHTML"	"(id,sel,sortvalue)"
    "slideshow"	"(sel,ms,func)"
    "ss.start"	"()"
    "ss.next"	"()"
    "ss.previous"	"()"
    "ss.display"	"(n)"
    "include"	"(cb)"
    "xhttp.onreadystatechange"	"()"
    "getHttpData"	"(file,func)"
    "getHttpObject"	"(file,func)"
    "displayHttp"	"(id,file)"
    "http"	"(target,readyfunc,xml,method)"
    "getElementsByAttribute"	"(x,att)"
    "displayObject"	"(id,data)"
    "ready"	"( fn )"
    "forEach"	"( collection,callback,scope )"
    "getHeight"	"( elem )"
    "getOffsetTop"	"( elem )"
    "getClosest"	"( elem,selector )"
    "getParents"	"( elem,selector )"
    "getSiblings"	"( elem )"
    "publish"	"(ele,name,values)"
    "subscribe"	"(name,callback)"
    "load"	"(element,url)"
    "getAttributes"	"(node)"
    "setStats"	"(obj,cname,version)"
    "type"	"(obj)"
    "fadeIn"	"(elem,ms)"
    "fadeOut"	"(elem,ms)"
    "hasClass"	"(el,className)"
    "children"	"(el)"
    "clone"	"(el)"
    "append"	"(el,html)"
    "slideDown"	"(element,duration,finalheight,callback)"
    "notify"	"(options)"
    "infoTest"	"()"
    "warningTest"	"()"
    "errorTest"	"()"
    "dialogTest"	"()"
    "workingTest"	"()"
    "check4chrome"	"()"
    "delay"	"(ms)"
    "when"	"(condition,wait,times,deferred)"
    "rounded"	"()"
    "scroller"	"()"
    "formatMoney"	"(n,c,d,t)"
}

file delete -force /tmp/snippets
file mkdir /tmp/snippets

foreach {i j} $funcs {
    set f [open /tmp/snippets/wcj-$i w]
    puts $f [subst $tmp]
    puts -nonewline $f "wc.$i$j\;"
    close $f
}