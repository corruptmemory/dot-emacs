(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(backup-inhibited t t)
 '(cursor-type (quote bar) t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes (quote ("36afe64261e1de73fcfadedf154e4bc2c9ec1969bde0c21798d31366897bc4d2" "5e0fad917cb12cfeb8a18d51d664bcb3efa9b494ff7222a9017808d135706b97" "9af36076d7d1b200def3e21d4f938d3bcfd1d8bb" "84e71fb8bf689e8c7f8b0414ed2c29bb2a0db036" default)))
 '(echo-keystrokes 0.01)
 '(erc-autojoin-channels-alist (quote (("freenode.net" "#haskell" "#scala" "#emacs" "#mongodb" "#snapframework" "#scalaz") ("outside.in" "#hackerz" "#subhackerz"))))
 '(erc-autojoin-delay 5)
 '(erc-away-nickname "corruptmemory-away")
 '(erc-email-userid "jim@corruptmemory.com")
 '(erc-fill-column 100)
 '(erc-fill-mode nil)
 '(erc-modules (quote (autoaway autojoin completion dcc fill list log match move-to-prompt notify readonly stamp spelling track truncate hl-nicks netsplit button networks ring noncommands irccontrols menu)))
 '(erc-nick "corruptmemory")
 '(erc-nickserv-passwords (quote ((freenode (("corruptmemory" . "4a55word"))))))
 '(erc-port 8001)
 '(erc-user-full-name "Jim Powers")
 '(fill-column 78)
 '(frame-title-format (quote ("%f - " user-real-login-name "@" system-name)) t)
 '(global-highline-mode t)
 '(ido-auto-merge-work-directories-length nil)
 '(ido-create-new-buffer (quote always))
 '(ido-enable-flex-matching t)
 '(ido-enable-prefix nil)
 '(ido-everywhere t)
 '(ido-ignore-extensions t)
 '(ido-max-prospects 8)
 '(ido-use-filename-at-point (quote guess))
 '(indent-tabs-mode nil)
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(linum-format "  %d  ")
 '(mouse-drag-copy-region nil)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(puppet-indent-level tab-width)
 '(recentf-max-saved-items 75)
 '(require-final-newline t)
 '(ruby-indent-level tab-width)
 '(sbt-program-name "/home/jim/bin/sbt")
 '(show-paren-delay 0)
 '(tab-width 4)
 '(vcl-indent-level 2)
 '(x-select-enable-clipboard t)
 '(x-select-enable-primary nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highline-face ((t (:background "black")))))

;; No startup graphic
(setq inhibit-startup-message t)

;; Font
;;(set-default-font "Envy Code R-12")
;;(set-frame-font "Envy Code R-12")

(set-default-font "Mensch-12")
(set-frame-font "Mensch-12")

;; Enable X clipboard
(setq x-select-enable-clipboard t)

;; Some general customizations
(tool-bar-mode nil)
(menu-bar-mode nil)
(scroll-bar-mode -1)
(show-paren-mode t)
(transient-mark-mode t)
(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 2)
(setq line-number-mode t)
(setq column-number-mode t)
(setq compile-command "mvn install")

(setq cursor-type 'bar)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

;; full screen toggle using command+[RET]
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))

;; Make buffer names unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

(global-hl-line-mode 1)

(setq
 nxhtml-global-minor-mode t
 mumamo-chunk-coloring 'submode-colored
 nxhtml-skip-welcome t
 indent-region-mode t
 rng-nxml-auto-validate-flag nil)

;; Load the ensime lisp code...
(add-to-list 'load-path "~/.emacs.d/ensime/elisp/")
(require 'ensime)

;; Load the scamacs sbt lisp code...
(add-to-list 'load-path "~/.emacs.d/scamacs/sbt/")
(require 'sbt)

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
                (yas/minor-mode-on)
                (setq indent-tabs-mode nil)
                (setq c-indent-level 2))))

(require 'tramp)

(global-set-key [f11] 'compile)
(global-set-key [f6] 'linum-mode)
(global-set-key [(meta return)] 'toggle-fullscreen)

(defun un-camelcase-string (s &optional sep start)
      "Convert CamelCase string S to lower case with word separator SEP.
    Default for SEP is a hyphen \"-\".
    If third argument START is non-nil, convert words after that
    index in STRING."
      (let ((case-fold-search nil))
        (while (string-match "[A-Z]" s (or start 1))
          (setq s (replace-match (concat (or sep "-")
                                                 (downcase (match-string 0 s)))
                                         t nil s)))
        (downcase s)))

(defun un-camelcase (start end)
  "Un-CamelCase the current selection.

Un-CamelCase the current selection."
  (interactive "r")
  (let ((result (un-camelcase-string (buffer-substring start end) "_")))
    (save-restriction
      (narrow-to-region start end)
      (goto-char (point-min))
      (delete-region start end)
      (insert result))))

(defun mapcar-head (fn-head fn-rest list)
  "Like MAPCAR, but applies a different function to the first element."
  (if list
      (cons (funcall fn-head (car list)) (mapcar fn-rest (cdr list)))))
(defun camelize (s)
  "Convert under_score string S to CamelCase string."
  (mapconcat 'identity (mapcar
                        '(lambda (word) (capitalize (downcase word)))
                        (split-string s "_")) ""))
(defun camelize-method (s)
  "Convert under_score string S to camelCase string."
  (mapconcat 'identity (mapcar-head
                        '(lambda (word) (downcase word))
                        '(lambda (word) (capitalize (downcase word)))
                        (split-string s "_")) ""))

(defun mo-toggle-identifier-naming-style ()
  "Toggles the symbol at point between C-style naming,
e.g. `hello_world_string', and camel case,
e.g. `HelloWorldString'."
  (interactive)
  (let* ((symbol-pos (bounds-of-thing-at-point 'symbol))
         case-fold-search symbol-at-point cstyle regexp func)
    (unless symbol-pos
      (error "No symbol at point"))
    (save-excursion
      (narrow-to-region (car symbol-pos) (cdr symbol-pos))
      (setq cstyle (string-match-p "_" (buffer-string))
            regexp (if cstyle "\\(?:\\_<\\|_\\)\\(\\w\\)" "\\([A-Z]\\)")
            func (if cstyle
                     'capitalize
                   (lambda (s)
                     (concat (if (= (match-beginning 1)
                                    (car symbol-pos))
                                 ""
                               "_")
                             (downcase s)))))
      (goto-char (point-min))
      (while (re-search-forward regexp nil t)
        (replace-match (funcall func (match-string 1))
                       t nil))
      (widen))))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(setq haskell-program-name "/usr/bin/ghci")
;;(setq haskell-program-name "cabal-dev ghci")

;; (require 'inf-haskell)

(add-to-list 'load-path "~/.emacs.d/")
(require 'bar-cursor)
(bar-cursor-mode t)
(blink-cursor-mode 1)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))

(global-set-key (kbd "C-S-d") 'duplicate-line)

(require 'erc)

(add-hook 'erc-mode-hook
          '(lambda ()
             (custom-theme-set-faces
              'tango-dark
              '(highlight ((t nil))))))

(load "~/.emacs.d/ats/ats-mode.el")

(load "~/.emacs.d/modes/vcl-mode.el")

;;(require 'confluence)

(load "~/.emacs.d/elpa/sr-speedbar-0.1.8/sr-speedbar.el")
(require 'sr-speedbar)
