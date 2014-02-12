;; the packages I expect to have around
(setq my-packages `(web-mode clojure-mode ruby-mode haskell-mode scala-mode markdown-mode zenburn-theme))

;; make sure those packages are installed
(dolist (p my-packages)
  (when (not (package-installed-p p)) (package-install p)))
