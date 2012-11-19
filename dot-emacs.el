(defun add-path (p)
  (add-to-list 'load-path p))

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq elpa-dir (expand-file-name "elpa" dotfiles-dir))
(setq eproject-dir (expand-file-name "eproject" dotfiles-dir))

(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path elpa-dir)
(add-to-list 'load-path eproject-dir)

(dolist (project (directory-files elpa-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(setq inhibit-startup-message t)
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(column-number-mode)

(require 'ack-and-a-half)
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)
(require 'auto-indent-mode)
(require 'multi-term)
(setq multi-term-program "/bin/zsh")


(require 'autopair)
(autopair-global-mode)
(require 'multiple-cursors)
(require 'setup-misc)
(require 'setup-uniquify)
(require 'setup-package)
(require 'setup-expand-region)
;; (require 'setup-sbt)
(require 'setup-ui)
(require 'setup-modes)
(require 'setup-ido)
(require 'setup-helm)
(require 'setup-eproject)
(require 'setup-ecb)
(require 'setup-projects)
(require 'setup-eshell)
(require 'setup-keys)
