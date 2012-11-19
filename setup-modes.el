(require 'scala-mode)
(require 'scala-mode-auto)

(setq
 nxhtml-global-minor-mode t
 mumamo-chunk-coloring 'submode-colored
 nxhtml-skip-welcome t
 indent-region-mode t
 rng-nxml-auto-validate-flag nil)

(add-to-list 'auto-mode-alist '("\\.hbs$" . handlebars-mode))
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.watchr$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))

(setq c-mode-hook
      (function (lambda ()
                  (setq indent-tabs-mode nil)
                  (setq c-indent-level 2))))

(setq objc-mode-hook
      (function (lambda ()
                  (setq indent-tabs-mode nil)
                  (setq c-indent-level 2))))

(setq c++-mode-hook
      (function (lambda ()
                  (setq indent-tabs-mode nil)
                  (setq c-indent-level 2))))

(ansi-color-for-comint-mode-on)

(setq javascript-mode-hook
      (function (lambda ()
                  (setq indent-tabs-mode nil)
                  (setq c-indent-level 2))))

(setq scala-mode-hook
      (function (lambda ()
                  (local-set-key [f1] 'helm-for-files)
                  (yas/minor-mode-on)
                  (setq indent-tabs-mode nil)
                  (setq c-indent-level 2))))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(setq haskell-program-name "/usr/bin/ghci")

(provide 'setup-modes)
