(require 'eproject)
(require 'eproject-extras)
;; (require 'eproject-compile)
;; (require 'eproject-tags)
(require 'helm-files)
(require 'cl)

(define-project-type scala (generic)
  (look-for "project/")
  :relevant-files ("\\.scala$" "\\.sbt$")
  :irrelevant-files ("target/"))

(define-project-type git (generic)
  (look-for ".git")
  )

(add-hook 'find-file-hook 'eproject-maybe-turn-on)

;; eproject global bindings
(defmacro .emacs-curry (function &rest args)
  `(lambda () (interactive)
     (,function ,@args)))

(defmacro .emacs-eproject-key (key command)
  (cons 'progn
        (loop for (k . p) in (list (cons key 4) (cons (upcase key) 1))
              collect
              `(global-set-key
                (kbd ,(format "C-x p %s" k))
                (.emacs-curry ,command ,p)))))

(defvar helm-eproject-source
  '((name . "Eproject")
    (type . file)
    (candidates . (lambda ()
		    (with-helm-current-buffer
		      (when (and (boundp 'eproject-mode) eproject-mode)
			(eproject-list-project-files)))))))

(defun helm-eproject ()
  "helps helm to use eproject to find a file"
  (interactive)
  (helm :sources '(helm-eproject-source)
        :buffer "*Helm Eproject*"))

(defun eproject-helm-configure ()
  "Bind C-x f to `helm-eproject'."
  (global-set-key [(control x) (f)] 'helm-eproject))

(.emacs-eproject-key "k" eproject-kill-project-buffers)
(.emacs-eproject-key "v" eproject-revisit-project)
(.emacs-eproject-key "b" eproject-ibuffer)
(.emacs-eproject-key "o" eproject-open-all-project-files)

(provide 'setup-eproject)
