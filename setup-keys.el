(require 'duplicate-thing)

(defun select-current-line ()
  "Select the current line"
  (interactive)
  (end-of-line) ; move to end of line
  (push-mark (line-beginning-position) nil 1))

(defun my-markdown-mode()
  (interactive)
  (gfm-mode)
  (longlines-mode)
  (flyspell-mode)
  (setq fill-column 100))

(defun edit-thoughts()
  (interactive)
  (find-file "~/thoughts.org")
  (org-mode)
  (flyspell-mode))

(defun edit-dot-emacs()
  (interactive)
  (find-file "~/.emacs.d/dot-emacs.el"))

(defun edit-xmonad-config()
  (interactive)
  (find-file "~/.xmonad/xmonad.hs"))

(global-set-key [f11] 'compile)
(global-set-key [f6] 'linum-mode)
(global-set-key [(meta return)] 'toggle-fullscreen)
(global-set-key (kbd "C-S-d") 'duplicate-thing)
(global-set-key (kbd "s-L") 'helm-eproject)
(global-set-key (kbd "C-{") 'shrink-window-horizontally)
(global-set-key (kbd "C-}") 'enlarge-window-horizontally)
(global-set-key (kbd "M-{") 'shrink-window)
(global-set-key (kbd "M-}") 'enlarge-window)
(global-set-key [f1] 'helm-for-files)

(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-l") 'select-current-line)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-S-c C-a") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-S-M-SPC") 'set-rectangular-region-anchor)

(global-set-key [\M-f12] 'my-markdown-mode)
(global-set-key [f12] 'magit-status)
(global-set-key [\M-f11] 'edit-thoughts)
(global-set-key [\M-f10] 'kickass-project)
(global-set-key [\C-f10] 'kickass-project-build)
(global-set-key [\M-f4] 'edit-xmonad-config)
(global-set-key [\M-f9] 'patch-config-project)
(global-set-key [\M-f1] 'edit-dot-emacs)
(global-set-key [\M-f2] 'ecb-toggle-ecb-windows)
(global-set-key [\C-f2] 'ecb-activate)
(global-set-key (kbd "C-'") 'comment-region)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-x ^") 'join-line)
(global-set-key (kbd "\C-x\C-r") 'rgrep)
(global-set-key (kbd "C-x \\") 'align-regexp)

(global-set-key (kbd "M-/") 'hippie-expand)
;; (global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)

(provide 'setup-keys)
