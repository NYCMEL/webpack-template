;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(load-file "/Melify/private/emacs/linux/start-emacs.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (dash hydra visual-fill auto-correct chess company html5-schema auto-complete yasnippet-classic-snippets)))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-header-delimiter-face ((t (:inherit font-lock-function-name-face :underline t :weight bold))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 1.5))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.3))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :underline t :height 1.2))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :underline t :height 1.1))))
 '(markdown-header-face-5 ((t (:inherit markdown-header-face :underline t))))
 '(markdown-header-face-6 ((t (:inherit markdown-header-face :underline t)))))

(add-to-list 'load-path "/GitHub/yasnippet") (require 'yasnippet) (yas-global-mode 1)

(fset 'd-mdb      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/_mdb/app.vfs/lib/app")) arg)))
(fset 'd-wc       (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/wc/")) arg)))
(fset 'd-mc       (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/mc/")) arg)))
(fset 'd-angelica (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/angelica/app.vfs/lib/app")) arg)))
(fset 'd-w        (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/w/")) arg)))
(fset 'd-mwc      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/mwc/")) arg)))
(fset 'd-mtk      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/mtk")) arg)))
(fset 'd-takeda   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/takeda/app.vfs/lib/app")) arg)))
(fset 'd-wcw      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/_wcw/app.vfs/lib/app")) arg)))
(fset 'd-bs4      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/bs4/app.vfs/lib/app")) arg)))
(fset 'd-md       (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/md/app.vfs/lib/app")) arg)))
(fset 'd-jq       (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/jq")) arg)))
(fset 'd-maxure   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/maxure/app.vfs/lib/app")) arg)))
(fset 'd-maker    (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/maker/app.vfs/lib/app")) arg)))
(fset 'd-maker-dd (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/maker-dd/app.vfs/lib/app")) arg)))
(fset 'd-maker-2  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/maker-2/app.vfs/lib/app")) arg)))
(fset 'd-maker-3  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/maker-3/app.vfs/lib/app")) arg)))
(fset 'd-art      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/_art/app.vfs/lib/app")) arg)))
(fset 'd-search   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/_search/app.vfs/lib/app")) arg)))
(fset 'd-24       (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/twofour/app.vfs/lib/app/")) arg)))
(fset 'd-free     (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/free/")) arg)))
(fset 'd-melify   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/melify/app.vfs/lib/app/")) arg)))
(fset 'd-links    (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/links/app.vfs/lib/app/")) arg)))

(fset 'd-margo    (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/margo/app.vfs/lib/app/")) arg)))
(fset 'd-gallery  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/gallery/app.vfs/lib/app")) arg)))
(fset 'd-ivy	  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/ivy/app.vfs/lib/app")) arg)))
(fset 'd-rapp	  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/rapp/src")) arg)))
(fset 'd-git	  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/misc/git-server/example")) arg)))
(fset 'd-designer (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/designer/app.vfs/lib/app")) arg)))
(fset 'd-builder  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/builder/app.vfs/lib/app")) arg)))

(fset 'd-webpack  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/misc/webpack/src/")) arg)))
(fset 'd-react    (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/misc/react/src/")) arg)))
(fset 'd-angular  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/misc/angular/app/")) arg)))
(fset 'd-misc     (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/tk/lib/components/misc/")) arg)))

(fset 'd-void     (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/_void/app.vfs/lib/app/")) arg)))
(fset 'd-nycmel   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/mtk/dev/app/NYCMel.github.io/")) arg)))
(fset 'd-snippets (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("cd /Melify/private/emacs/common/snippets/")) arg)))

(fset 'pkill      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("kill \$(lsof -t -i:3000)")) arg)))

(yas-load-directory "/Melify/private/emacs/common/snippets/")

