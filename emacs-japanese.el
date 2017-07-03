;; Copyright (C) 2017 Arpaka <git@arpaka.com>
;; Released under the MIT license
;; http://opensource.org/licenses/mit-license.php

;; japanese
(set-language-environment "Japanese") ; 22.2
(prefer-coding-system 'utf-8)         ; 22.6
;(set-file-name-coding-system 'utf-8) ; 22.11
;(set-terminal-coding-system 'utf-8)  ; 22.12
;(set-keyboard-coding-system 'utf-8)  ; 22.12
(setq coding-system-for-read 'utf-8)  ; 32.10.6
(setq coding-system-for-write 'utf-8) ; 32.10.6

;; mozc
(require 'mozc)
(setq default-input-method "japanese-mozc")      ; 22.4
(define-key global-map (kbd "C-SPC") 'mozc-mode) ; 49.3.6
