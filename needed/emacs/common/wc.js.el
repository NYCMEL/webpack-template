;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; load
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc.load
"wc.load($(\"wc-maker\")[0],\"/mtk/render?callback=tk::dummy::3\")
    .then(function(value) {
	console.log(\">>>>>>>>>>>>\", value);
    })
    .fail(function(value) {
	console.log(\">>>>>>>>>>>>\", value);
    });
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc.when
"wc.when(function() {
    return $(\"#xx\").length;
}, 1000, 3)
  .then(function(args) {
      $(\"body\").append(\"<h1>\" + args + \"<h1>\");
  }).fail(function(args) {
      alert(args);
  });
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc.subscribe
"
  wc.subscribe(\"wc-maker\", function(e) {
      console.log(\">>>>>>>\", e.detail);
  });
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc.publish
"
wc.publish(\"wc-maker\", {
    id: this.id,
    user: \"Mel\",
    action: \"click\"
});
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc.load
"
wc.load($(\"wc-maker\")[0],\"/mtk/render?callback=tk::dummy::3\")
    .then(function(value) {
	console.log(\">>>>>>>>>>>>\", value);
    })
    .fail(function(value) {
	console.log(\">>>>>>>>>>>>\", value);
    });
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'wc.xxx
"
")

