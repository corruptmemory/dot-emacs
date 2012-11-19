(setq cursor-type 'bar)
(global-hl-line-mode t)

(set-default-font "Source Code Pro-12")
(set-frame-font "Source Code Pro-12")

(require 'tango-dark-theme)

(custom-set-variables
 '(auto-save-default nil)
 '(backup-inhibited t t)
 '(cursor-type (quote bar) t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes (quote ("36afe64261e1de73fcfadedf154e4bc2c9ec1969bde0c21798d31366897bc4d2" "5e0fad917cb12cfeb8a18d51d664bcb3efa9b494ff7222a9017808d135706b97" "9af36076d7d1b200def3e21d4f938d3bcfd1d8bb" "84e71fb8bf689e8c7f8b0414ed2c29bb2a0db036" default)))
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
 '(highline-face ((t (:background "black"))))
 '(helm-selection ((t (:background "black" :underline t))))
 '(highline-face ((t (:background "black"))) t))

;; Enable X clipboard
(setq x-select-enable-clipboard t)

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
