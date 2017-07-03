;; Copyright (C) 2017 Arpaka <git@arpaka.com>
;; Released under the MIT license
;; http://opensource.org/licenses/mit-license.php

;; load arpaka files
(add-to-list 'load-path "~/.emacs.arpaka/")
(load "emacs-reset.el")
(load "emacs-japanese.el")
(load "emacs-packages.el")
(load "color-theme-arpaka.el")

;; color-theme
;(load-theme 'color-theme-arpaka t)
;(enable-theme 'color-theme-arpaka)

;; shortcut
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "<C-right>") 'tabbar-forward-tab)
(global-set-key (kbd "<C-left>")  'tabbar-backward-tab)
(global-set-key (kbd "<C-down>")  'kill-this-buffer)
