;; remap fn to ctrl on mac
(setq ns-function-modifier 'control)

;; remap alt to option and meta to command
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Evil stuff
(package-initialize)
;(evil-mode 1)
;(require 'evil-leader)
;(global-evil-leader-mode)
;; rebinding <ESC>
;(setq-default evil-escape-key-sequence "jk")
;(evil-leader/set-leader "<SPC>")
;(evil-leader/set-key
;  "o" 'find-file
;  "k" 'kill-buffer
;  "d" 'replace-string
;  "f" 'search-forward
;  "s" 'write-file
;  "l" 'load-file
;  "b" 'list-buffers)

;; turn off the menu and tool bar
;;(menu-bar-mode -1)
(tool-bar-mode -1)

;; display time
(display-time)

;; line numbers
(global-linum-mode)

;; ring bell FUCKING OFF
(setq ring-bell-function #'ignore)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (granger)))
 '(custom-safe-themes
   (quote
    ("3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "47e37fa090129214330d13a68549d5c86ccc2c41f4979cb4be130ff945a9859a" "adbe7ba38c551281f21d760de0840cab0e1259964075a7e46cc2b9fdea4b82d6" "4ba6aa8a2776688ef7fbf3eb2b5addfd86d6e8516a701e69720b705d0fbe7f08" default)))
 '(display-time-mode t)
 '(visible-bell nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "White" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Source Code Pro")))))

;; Enable mouse support
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] '(lambda ()
			       (interactive)
			       (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
			       (interactive)
			       (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
  )
;; no startup msg
(setq inhibit-startup-message t)

;; MELPA stuff
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Live browser editing
(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

;; Localhost
(require 'simple-httpd)
;; -- set root folder for httpd server
(setq httpd-root "~/Desktop/canvas_stuff")

;; copy to clipboard
(defun pbcopy ()
  (interactive)
  (call-process-region (point) (mark) "pbcopy")
  (setq deactivate-mark t))

(defun pbpaste ()
  (interactive)
  (call-process-region (point) (if mark-active (mark) (point)) "pbpaste" t t))

(defun pbcut ()
  (interactive)
  (pbcopy)
  (delete-region (region-beginning) (region-end)))

(global-set-key (kbd "C-c c") 'pbcopy)
(global-set-key (kbd "C-c v") 'pbpaste)
(global-set-key (kbd "C-c x") 'pbcut)

;; Associate .js to js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
