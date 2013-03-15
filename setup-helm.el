(require 'helm-config)
(require 'helm-themes)

(helm-mode 1)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(global-set-key (kbd "C-x C-p") 'helm-eproject)

(define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
(define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point)

(require 'helm-git)

(global-set-key (kbd "C-x g") 'helm-git-find-files)


(provide 'setup-helm)
