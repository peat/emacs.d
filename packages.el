;; where to find the packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;; setup package management
(package-initialize)

;; clean start? go get package lists
(if (not (file-exists-p "~/.emacs.d/elpa/")) (package-refresh-contents))

;; the packages I expect to have around
(setq my-packages `(web-mode clojure-mode ruby-mode haskell-mode scala-mode markdown-mode zenburn-theme))

;; make sure those packages are installed
(dolist (p my-packages)
  (when (not (package-installed-p p)) (package-install p)))

