(setq default-directory (concat (getenv "HOME") "/"))

(setq inhibit-startup-message t)

;; run package management
(load "~/.emacs.d/packages.el")

;; load ui configs after init
(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/ui.el")))

;; load mode configs after init
(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/modes.el")))

;; always track what's on disk; useful for git branch changes
(global-auto-revert-mode t)

;; friendly file and buffer finding
(ido-mode t)
(iswitchb-mode t)

;; friendly backup file config
(if (not (file-exists-p "~/.saves/")) (make-directory "~/.saves/"))

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups
