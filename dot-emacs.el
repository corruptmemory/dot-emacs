(setq inhibit-startup-message t)
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(defun add-path (p)
  (add-to-list 'load-path p))

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq elpa-dir (expand-file-name "elpa" dotfiles-dir))
(setq local-elisp-dir (expand-file-name "local-elisp" dotfiles-dir))

(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path elpa-dir)
(add-to-list 'load-path local-elisp-dir)

(dolist (project (directory-files elpa-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(require 'setup-package)

(require 'setup-ui)

(column-number-mode)

(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

(require 'smart-tab)
(global-smart-tab-mode 1)

(require 'yasnippet)
(yas-global-mode 1)

(require 'dired-x)
(require 'dired+)
(require 'dired-details)
(require 'dired-details+)

(require 'rainbow-mode)
(require 'auto-indent-mode)
;; (require 'multi-term)
;; (setq multi-term-program "/bin/zsh")
(require 'markup-faces)

(require 'autopair)
(autopair-global-mode)
(require 'multiple-cursors)
(require 'setup-misc)
(require 'setup-uniquify)
(require 'setup-expand-region)
(require 'setup-modes)
(require 'setup-projects)
(require 'setup-helm)
(require 'setup-eproject)
(require 'setup-eshell)
;; (require 'setup-evil)
(require 'setup-keys)
