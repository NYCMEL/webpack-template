;;;
;;(set-default-font "-misc-fixed-bold-r-normal--13-120-75-75-c-70-iso10646-1")

(auto-compression-mode 't)
(global-font-lock-mode 't)
(transient-mark-mode 't)
(font-lock-mode 't)
(display-time)

(add-hook 'help-mode-hook 'turn-on-font-lock)
(setq font-lock-maximum-decoration '((tcl-mode . 5) (c-mode . 5) (c++-mode . 5)))

;(set-mouse-color	"wheat")
(set-background-color	"black")
(set-foreground-color	"white")
(set-cursor-color	"wheat")

(setq auto-mode-alist	(cons '("\\.tcl$"  . tcl-mode)  auto-mode-alist))
(setq auto-mode-alist	(cons '("\\.cgi$"  . tcl-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.C$"    . c++-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.java$" . java-mode) auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.js$"   . js-mode)   auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.ts$"   . js-mode)   auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.jsx$"  . js-mode)   auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.c$"    . c++-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.sass$" . css-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.scss$" . css-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.less$" . css-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.css$"  . css-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.el$"   . lisp-mode) auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.jsp$"  . web-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.html$" . web-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.tsx$"  . web-mode)  auto-mode-alist))
(setq auto-mode-alist   (cons '("\\.h$"    . c++-mode)  auto-mode-alist))

(fset 'clean "> <")

(setq web-mode-enable-auto-closing t)
(setq web-mode-enable-auto-pairing t)

;(setq load-path (cons (expand-file-name "~/elisp") load-path))
(require 'ange-ftp)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; KEY BINDINGS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq auto-save-interval    '0)
(setq auto-save-default     'f)
(setq require-final-newline 't)
(setq make-backup-files     'f)
(setq c-indent-level        '4)
(setq search-repeat-char    ?/)   ; use a '/' to repeat i-search forward

(put 'eval-expression 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'paren)
;
; GNU Emacs auto-mode definitions
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq auto-mode-alist
      (cons '("\\.cpp$" . c++-mode) auto-mode-alist))

(setq auto-mode-alist
      (cons '("\\.C$"   . c++-mode) auto-mode-alist))

(setq auto-mode-alist
      (cons '("\\.c$"   . c++-mode) auto-mode-alist))

(setq auto-mode-alist
      (cons '("\\.h$"   . c++-mode) auto-mode-alist))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; GNU Emacs Meta key bindings
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key "\M-e"  'eval-current-buffer)
(global-set-key "\M-j"  'fill-paragraph)
(global-set-key "\M-k"  'describe-key)
(global-set-key "\M-q"  'query-replace)
(global-set-key "\M-r"  'replace-string)
(global-set-key "\M-s"  'replace-string)
(global-set-key "\M-\/" 'isearch-forward)
(global-set-key "\M-\?" 'isearch-backward)

(global-set-key "\M-\ " 'set-mark-command)
(global-set-key "\M-g"  'goto-line)
(global-set-key "\M-z"  'enlarge-window)
(global-set-key "\M-0"  'copy-region-as-kill)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; GNU Emacs GLOBAL key bindings
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key "\C-\\" 	're-search-forward)
(global-set-key "\C-xb" 	'switch-to-buffer-other-window)
(global-set-key "\C-xp" 	'other-window)
(global-set-key "\C-xq" 	'quoted-insert)
(global-set-key "\C-xs" 	'shell)
(global-set-key "\C-x\C-c" 	'save-buffers-kill-emacs)
(global-set-key "\C-xr" 	'vm)
(global-set-key "\C-xx" 	'next-file)
(global-set-key "\C-x\?" 	'command-apropos)
(global-set-key "\C-x\!" 	'shell-command)
(global-set-key "\C-x\+" 	'untabify)
(global-set-key "\C-x\-" 	'tabify)
(global-set-key "\C-xc"  	'compile)
(global-set-key "\C-xI"  	'indent-region)
(global-set-key "\C-xT"  	'goto-top)
(global-set-key "\C-xR"  	'run)
(global-set-key "\C-xE"  	'next-error)
(global-set-key "\C-x\C-i" 	'insert-file)
(global-set-key "\C-x\C-k" 	'global-set-key)
(global-set-key "\C-x\C-l" 	'load-file)
(global-set-key "\C-x\C-u" 	'undo)
(global-set-key "\C-xM"    	'compile)
(global-set-key "\C-xG"    	'cdalias)
(global-set-key "\C-x\C-n"   	'shell)
(global-set-key "\C-xC"      	'clean)

(global-set-key "\C-x\C-v" 	'find-file-other-window)
(global-set-key "\C-xt" 	'tcl-mode)
(global-set-key "\C-xn" 	'text-mode)
