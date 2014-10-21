;; global modes
(ido-mode t) ; friendly finding
(iswitchb-mode t) ; friendly buffers
(auto-save-mode t) ; auto save files

;; web
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; ruby
(add-to-list 'auto-mode-alist '("Vagrantfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))

;; scala
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))
(add-to-list 'auto-mode-alist '("\\.sbt\\'" . scala-mode))

;; org-mode
(add-hook 'org-mode-hook (lambda () (flyspell-mode t) (org-indent-mode t) (visual-line-mode t)))

;; markdown
(add-hook 'markdown-mode-hook (lambda () (flyspell-mode t)))

;; ispell hack
(setq ispell-program-name "/usr/local/bin/ispell")
