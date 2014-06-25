(setq default-directory "e:/")

(setq inhibit-startup-message -1)
(setq initial-scratch-message "")

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(global-linum-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(set-language-environment 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'gbk)
(setq file-name-coding-system 'gbk)

(add-to-list 'load-path "~/plugins")

(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)

(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list())
(loop for x downfrom 40 to 1 do
      (setq tab-stop-list (cons (* x 4) tab-stop-list)))

(require 'psvn)
