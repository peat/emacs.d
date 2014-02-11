;; load the pretty theme
(load-theme 'zenburn t)

;; kill all the pretty decorations
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; set the default window size
(add-to-list 'default-frame-alist (cons 'width 150))
(add-to-list 'default-frame-alist (cons 'height 50))

;; font: Inconsolata, 13pt
(set-face-attribute 'default nil :family "Inconsolata")
(set-face-attribute 'default nil :height 150)



