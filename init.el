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

;; friendly backup file config
(setq saves-dir "~/.saves/")
(if (not (file-exists-p saves-dir)) (make-directory saves-dir))

(setq
 inhibit-startup-message t ; don't need that
 backup-by-copying t ; don't clobber symlinks
 backup-directory-alist '((".*" . ,saves-dir)) ; don't litter my fs
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t) ; use versioned backups

(server-start)
