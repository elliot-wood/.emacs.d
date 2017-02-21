;;;; == E M A C S  I N I T I A L  C O N F I G  ==

;;;; General

;; User details
(setq user-full-name "Elliot Wood")
(setq user-mail-address "bjp@fourside.me")

;; Package management
(load "package")
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; Themes
(if window-system
    (load-theme 'solarized-dark t)
  (load-theme 'wombat t))

;; Misc
(show-paren-mode t)

(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

(setq confirm-kill-emacs 'yes-or-no-p)

;;;; Start-up options

;; Splash screen
(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode)

;; Interface customisations
(scroll-bar-mode -1)
(tool-bar-mode -1)
(column-number-mode)

;; yes/no prompts
(defalias 'yes-or-no-p 'y-or-n-p)

;;;; Package-specfic

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;;;; Operating system specific

;; macOS
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-function-modifier 'hyper)
