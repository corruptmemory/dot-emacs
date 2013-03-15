(setq cursor-type 'bar)
(global-hl-line-mode t)

(set-default-font "Source Code Pro-12")
(set-frame-font "Source Code Pro-12")

(require 'color-theme-sanityinc-tomorrow)

(custom-set-variables
 '(auto-save-default nil)
 '(backup-inhibited t t)
 ;; '(cursor-type (quote bar) t)
 '(cursor-type 'bar t)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes (quote ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default)))
 '(echo-keystrokes 0.01)
 '(fill-column 100)
 '(global-highline-mode t)
 '(indent-tabs-mode nil)
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(linum-format " %d ")
 '(mouse-drag-copy-region nil)
 '(recentf-max-saved-items 75)
 '(require-final-newline t)
 '(ruby-indent-level tab-width)
 '(sbt-program-name "/home/jim/bin/sbt")
 '(show-paren-delay 0)
 '(tab-width 2)
 '(vcl-indent-level 2)
 '(x-select-enable-clipboard t)
 '(x-select-enable-primary nil))

(custom-set-faces
 '(cursor ((((class color) (min-colors 89)) (:background "#fce94f"))))
 '(helm-selection ((t (:background "#002100" :underline nil))))
 '(highlight ((t (:inverse-video nil :background "#002100")))))

;; (custom-set-faces
;;  '(highline-face ((t (:background "black"))))
;;  '(helm-selection ((t (:background "black" :underline t))))
;;  '(highline-face ((t (:background "black"))) t))

;; Enable X clipboard
(setq x-select-enable-clipboard t)
(setq redisplay-dont-pause t)
(setq org-src-fontify-natively t)
(show-paren-mode t)
(transient-mark-mode t)
(make-variable-buffer-local 'transient-mark-mode)
(put 'transient-mark-mode 'permanent-local t)
(delete-selection-mode 1)
(setq-default transient-mark-mode t)
(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq-default indent-tabs-mode nil)

(provide 'setup-ui)
