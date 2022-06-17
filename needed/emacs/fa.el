;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FONT AWESOME STUFF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa
 "<i class='fa fa-home fa-5x'></i>")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-bullet-list
 "
    bullet_list class=\"fa-ul\" {
	li \"<i class='fa-li fa fa-check-square'></i> [lorem 3]\"
	li \"<i class='fa-li fa fa-spinner fa-spin'></i> [lorem 3]\"
	li \"<i class='fa-li fa fa-square'></i> [lorem 3]\"
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-spin
 "put \"<i class='fa fa-spinner fa-spin fa-5x fa-border'></i>\"")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-rotate
 "
    put \"<i class='fa fa-shield fa-rotate-90'></i>\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-ban
 "
    put {
	<span class='fa-stack fa-lg'>
	<i class='fa fa-camera fa-stack-1x'></i>
	<i class='fa fa-ban fa-stack-2x text-danger'></i>
        </span>
    }
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-delete
 "
    put \"<a class='btn btn-danger' href='#'><i class='fa fa-trash-o fa-lg'></i> Delete</a>\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-twitter
 "
    put \"<i class='fa fa-twitter fa-stack-1x'></i>\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-quote
 "
    put \"<i class='fa fa-quote-left fa-2x pull-left fa-border'></i>\"
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-icon
 "<i class='fa fa-smile-o'></i>")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'fa-stack
 "	<span class=\"fa-stack fa-lg\">
	<i class=\"fa fa-home fa-stack-1x\"></i>
	<i class=\"fa fa-ban fa-stack-2x text-danger\"></i>
	</span>
")
