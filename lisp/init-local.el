;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook 'toggle-frame-maximized)

(after-load 'ivy
  (sanityinc/enable-ivy-flx-matching))

(maybe-require-package 'vue-mode)

(maybe-require-package 'protobuf-mode)

(when (maybe-require-package 'elfeed-goodies)
  (when (maybe-require-package 'elfeed-org)
    (elfeed-org)
    (setq rmh-elfeed-org-files (list "~/org/nas/elfeed.org")))
  (after-load 'elfeed
    (elfeed-goodies/setup)))

(after-load 'tramp
  (setq tramp-default-method "ssh"))

(global-set-key (kbd "s-t") 'eshell)

(unless (eq system-type 'windows-nt)
  (when (maybe-require-package 'vterm)
    (global-set-key (kbd "C-s-t") 'vterm)
    (setq vterm-shell "/usr/bin/fish")
    ))

(global-set-key (kbd "s-b") 'ivy-switch-buffer)

;;; eaf to ~/.emacs.d/site-lisp
(when (eq system-type 'gnu/linux)
  (require 'eaf nil 'noerror))

(provide 'init-local)
;;; init-local.el ends here
