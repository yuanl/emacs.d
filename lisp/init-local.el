;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook 'toggle-frame-maximized)

(sanityinc/enable-ivy-flx-matching)

(maybe-require-package 'arduino-mode)

(maybe-require-package 'vue-mode)

(when (maybe-require-package 'elfeed-goodies)
  (elfeed-goodies/setup))

(setq tramp-default-method "ssh")

(global-set-key (kbd "s-t") 'eshell)

; clone eaf to ~/.emacs.d/site-lisp
(require 'eaf nil 'noerror)

(provide 'init-local)
;;; init-local.el ends here
