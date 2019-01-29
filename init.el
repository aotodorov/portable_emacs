(require 'package)

(add-to-list 'package-archives '("org-plus-contrib" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(require 'use-package)

(use-package org
  :ensure org-plus-contrib
  )

(require 'evil)
(evil-mode t)
(require 'evil-surround)
(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)

(require 'htmlize)

(org-babel-do-load-languages
 'org-babel-load-languages '(
			     (python . t)
			     (shell . t)
			     ))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
