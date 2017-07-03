;; Copyright (C) 2017 Arpaka <git@arpaka.com>
;; Released under the MIT license
;; http://opensource.org/licenses/mit-license.php

;; package list
(defvar my-favorite-package-list
  '(company
    tabbar
    verilog-mode
    web-mode
    rainbow-mode)
  "packages to be installed")

;; package from melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; auto install
(unless package-archive-contents (package-refresh-contents))
(dolist (pkg my-favorite-package-list)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; company
(require 'company)
(global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)

;; tabbar
(require 'cl)
(require 'tabbar)
(tabbar-mode 1)
(tabbar-mwheel-mode -1)
(setq tabbar-buffer-groups-function nil)
(setq tabbar-use-images nil)
;; remove temporary tab
(setq tabbar-buffer-list-function
      (lambda ()
        (remove-if
         (lambda(buffer)
           (find (aref (buffer-name buffer) 0) " *"))
         (buffer-list))))
;; disable button
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))
;; separator
(setq tabbar-separator '(2.0))

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; rainbow-mode
(require 'rainbow-mode)
(add-hook 'web-mode-hook 'rainbow-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-mode)
