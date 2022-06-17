;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'w3c-form
"
tag wc-form name=\"my-form\" role=\"form\" id=\"my-form\" size=\"form-control-md\" class=\"border\"  {
}
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'w3c-text
"
tag wc-text id=\"text-1\" name=\"fname\" label=\"First Name\" columns=\"4,8\" placeholder=\"Your first name\" help=\"First name is a required field\" data-error=\"Please enter alphanumeric\" required {}
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'w3c-avatar
"
mtk::avatar -id \"test-avatar-1\" -img \"/Melify/mtk/dev/tk/img/common/mel.co.png\" -width \"100px\" -height \"100px\" -title \"Mel\"
");

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'w3c-accordion
"
mtk::accordion -id \"My-Accordion\" -cfg \"/tk/lib/components/w/cfg/accordion.json\" -show 1
");

