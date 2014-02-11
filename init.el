(setq default-directory (concat (getenv "HOME") "/"))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages")))

(setq inhibit-startup-message t)

;; load ui configs after init
(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/ui.el")))

;; always track what's on disk; useful for git branch changes
(global-auto-revert-mode t)

;; friendly file and buffer finding
(ido-mode t)
(iswitchb-mode t)
