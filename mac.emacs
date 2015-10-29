; Maximize at startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

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

; Highlight current line
(global-hl-line-mode)
(set-face-background 'hl-line "dark blue")

; Font
(add-to-list 'default-frame-alist '(font . "GohuFont-14"))
(set-face-attribute 'default t :font "GohuFont-14")

; Prevent Emacs from making backup files
(setq make-backup-files nil)

; C/C++ stuff
(setq-default c-basic-offset 4 tab-width 4 indent-tab-mode t) ; Global 4 spaces indentation
(setq c-default-style "linux" c-basic-offset 4) ; switches from GNU style and sets it to 4 spaces

; Keyboard Shortcuts
(global-set-key (kbd "M-f") 'load-file) ; Alt+f
(global-set-key (kbd "M-k") 'delete-window)
(global-set-key (kbd "M-s") 'save-buffer) ; Mac style C-s
(global-set-key (kbd "M-w") 'other-window) ; easier than C-x o
(global-set-key (kbd "C-f") 'toggle-frame-maximized) ; C-f to fullscreen

; Stuff setup from Emacs (themes, font)
(custom-set-variables
 '(custom-enabled-themes (quote (wheatgrass))))
(custom-set-faces
 )

;; To launch Emacs with another .emacs than the $HOME one :
;; emacs -q(--no-init-file) -l .emacs_to_load
;; Equivalent of emacs -mm on Windows : (w32-send-sys-command 61488)
