;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook 'toggle-frame-maximized)

(after-load 'ivy
  (sanityinc/enable-ivy-flx-matching))

(maybe-require-package 'vue-mode)

(maybe-require-package 'protobuf-mode)

(when (maybe-require-package 'elfeed-goodies)
  (after-load 'elfeed
    (elfeed-goodies/setup)))

(after-load 'tramp
  (setq tramp-default-method "ssh"))

(global-set-key (kbd "s-t") 'eshell)

                                        ; clone eaf to ~/.emacs.d/site-lisp
(when (eq system-type "gnu/linux")
  (require 'eaf nil 'noerror))

(provide 'init-local)
;;; init-local.el ends here
