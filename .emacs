; Clock
(display-time)

; Startup Windowing
(split-window-horizontally)

; Line numbers
(global-linum-mode)

; Menus
(tool-bar-mode -1)
(menu-bar-mode -1)

; Hide scroll bar
(scroll-bar-mode -1)

; Font
(add-to-list 'default-frame-alist '(font . "Tamsyn-11"))
(set-face-attribute 'default t :font "Tamsyn-11")


; Stuff setup from Emacs (themes, font)
(custom-set-variables
 '(custom-enabled-themes (quote (wheatgrass))))
(custom-set-faces
 )

;; To launch Emacs with another .emacs than the $HOME one 
;; emacs -q(--no-init-file) -l .emacs_to_load