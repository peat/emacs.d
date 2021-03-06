;; load the pretty theme
(load-theme 'zenburn t)

;; kill all the pretty decorations
(menu-bar-mode -1)
(tool-bar-mode -1)
(if (boundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; set the default window size
(add-to-list 'default-frame-alist (cons 'width 150))
(add-to-list 'default-frame-alist (cons 'height 40))

;; font: Inconsolata, 16pt
(set-face-attribute 'default nil :family "Inconsolata")
(set-face-attribute 'default nil :height 160)
(setq-default line-spacing 2)

;; adjust mouse scrolling behavior to be sane
(setq mouse-wheel-scroll-amount '(1))
(setq mouse-wheel-progressive-speed nil)

;; line and column numbers, yo
(column-number-mode 1)

;; powerline
; (add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
; (setq powerline-color1 "grey22")
; (setq powerline-color2 "grey40")
; (require 'powerline)


;; open default org file
(find-file "~/scratch.org")
