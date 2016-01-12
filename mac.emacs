; Set fn as Ctrl
(setq ns-function-modifier 'control)

; Loading code
(add-to-list 'load-path "/Users/thomasguyot/elisp")
(add-to-list 'custom-theme-load-path "/Users/thomasguyot/elisp/themes/")
(require 'php-mode)
(require 'csharp-mode)
(require 'nyan-mode)

; Theme
(load-theme 'granger t)

; Nyan Cat
(nyan-mode 1)
(nyan-start-animation)
(setq nyan-wavy-trail t)

; Maximize at startup
;;(add-to-list 'default-frame-alist '(fullscreen . maximized))

; Clock
(display-time)

; Line numbers
(global-linum-mode)

; Startup Windowing
;;(split-window-horizontally)

; Menus
(tool-bar-mode -1)
(menu-bar-mode -1)

; Hide scroll bar
(scroll-bar-mode -1)

; Highlight current line
(global-hl-line-mode)
(set-face-background 'hl-line "grey14")

; Set 80 characters limit
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

; Font
(add-to-list 'default-frame-alist '(font . "tamsyn8x15-15"))
(set-face-attribute 'default t :font "tamsyn8x15-15")

; Prevent Emacs from making backup files
(setq make-backup-files nil)

; C/C++ stuff
(setq-default c-basic-offset 4 tab-width 4 indent-tab-mode t) ; Global 4 spaces indentation
(setq c-default-style "k&r" c-basic-offset 4) ; switches from GNU style and sets it to 4 spaces

; Custom functions
(defun load-config ()
  "Loads .emacs"
  (interactive)
  (load-file "~/dotfiles/mac.emacs"))

(defun edit-config ()
  "Loads .emacs for edition"
  (interactive)
  (find-file "~/dotfiles/mac.emacs")
  (emacs-lisp-mode))

; Keyboard Shortcuts
(global-set-key (kbd "C-c k") 'delete-window)
(global-set-key (kbd "s-s") 'save-buffer) ; Mac style C-s, cmd = super
(global-set-key (kbd "C-c w") 'other-window) ; easier than C-x o
(global-set-key (kbd "C-c f") 'toggle-frame-maximized) ; C-c f to fullscreen
(global-set-key (kbd "C-c n") 'global-linum-mode) ; Toggle line numbers
(global-set-key (kbd "C-c d") 'dired) ; Opens file manager
(global-set-key (kbd "C-c m") 'buffer-menu) ; Lists buffers
(global-set-key (kbd "C-c v") 'split-window-right) ; vsplit
(global-set-key (kbd "C-c h") 'split-window-below) ; hsplit
(global-set-key (kbd "C-c l") 'load-config) ; Quickload
(global-set-key (kbd "C-c e") 'edit-config) ; Quickedit
(global-set-key (kbd "<f5>") 'compile) ; Only the first time to setup the build system (script, make...)
(global-set-key (kbd "<f8>") 'recompile) ; 'compile without prompt asking for setup


;; ****************************************************************************************************
;; To launch Emacs with another .emacs than the $HOME one :
;; emacs -q(--no-init-file) -l .emacs_to_load
;; Equivalent of emacs -mm on Windows : (w32-send-sys-command 61488) ou
;; (toggle-frame-maximized) on line 1 of the file.
;; ABOUT KEYBOARD SHORTCUTS
;; The EmacsManual says that the combination of C-c
;; followed by a plain letter, and the function keys f5 through f9 are reserved for users. 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
