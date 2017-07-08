;; Copyright (C) 2017 Arpaka <git@arpaka.com>
;; Released under the MIT license
;; http://opensource.org/licenses/mit-license.php

;; memo: move cursor in paren and M-x help<enter> S
;; init
(setq inhibit-startup-screen t)    ; 5
(setq initial-scratch-message nil) ; 27.10: empty *scratch*

;; selection
(delete-selection-mode 1) ; 11.3
(transient-mark-mode 1)   ; 11.7
;; mode line
(line-number-mode 1)      ; 14.18
(column-number-mode 1)    ; 14.18
(display-time-mode 1)     ; 14.18
;; cursor
(blink-cursor-mode 0)     ; 14.20
(global-hl-line-mode)     ; 14.20
;; line number
(global-linum-mode t)
(setq linum-format " %4d ")

;; font lock
(global-font-lock-mode 1) ; 14.12
(setq search-highlight t) ; 14.12
(setq query-replace-highlight t)
(setq-default show-trailing-whitespace t) ; 14.16
(show-paren-mode t) ; 26.4.3
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)

;; tab indent and backspace
(setq-default tab-width 8) ; 14.19
(add-hook 'after-change-major-mode-hook
	  (lambda() (electric-indent-mode -1))) ; 24.4
(setq backward-delete-char-untabify-method 'hungry) ; 31.6

;; save
(setq require-final-newline t) ; 18.3.3
(fset 'yes-or-no-p 'y-or-n-p)  ; 19.7
(setq uniquify-buffer-name-style 'post-forward-angle-brackets) ; 19.7.1 name<quux/mumble>
(add-hook 'before-save-hook 'copyright-update)

;; no backup
(setq make-backup-files nil)          ; 18.3.2: no backup-files~
(setq auto-save-default nil)          ; 18.6.2: no #auto-save#
(setq auto-save-list-file-prefix nil) ; 18.6.3: no ~/.saves-*~

;; user interface
(scroll-bar-mode 1)          ; 21.12
(set-scroll-bar-mode 'right) ; 21.12
(menu-bar-mode -1)           ; 21.14
(tool-bar-mode -1)           ; 21.15
(set-frame-parameter nil 'alpha 95) ; 28.3.1
(setq frame-title-format
      '("%f - " invocation-name " " emacs-version)) ; 28.5 title
(setq ring-bell-function 'ignore) ; 37.22

;; disable suspend
(global-unset-key (kbd "C-z")) ; 49.3.5
(global-unset-key (kbd "C-x C-z"))

