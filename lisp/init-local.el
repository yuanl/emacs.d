;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook 'toggle-frame-maximized)
(global-unset-key (kbd "C-SPC"))
(setq default-directory "~/")

;; (with-eval-after-load 'ivy
;;   (sanityinc/enable-ivy-flx-matching))

(maybe-require-package 'vue-mode)

(maybe-require-package 'protobuf-mode)

(when (maybe-require-package 'elfeed-goodies)
  (when (maybe-require-package 'elfeed-org)
    (with-eval-after-load 'elfeed
      (elfeed-org)
      (setq rmh-elfeed-org-files (list "~/org/elfeed.org"))
      (elfeed-goodies/setup))))

(with-eval-after-load 'tramp
  (setq tramp-default-method "ssh"))

(global-set-key (kbd "C-s-t") 'eshell)

(unless (eq system-type 'windows-nt)
  (when (maybe-require-package 'vterm)
    (global-set-key (kbd "s-t") 'vterm)
    (setq vterm-shell (executable-find "fish"))
    ))

(global-set-key (kbd "s-b") 'ivy-switch-buffer)

;;; eaf to ~/.emacs.d/site-lisp
(when (eq system-type 'gnu/linux)
  (require 'eaf nil 'noerror))

(when (maybe-require-package 'org2ctex)
  (with-eval-after-load 'org
    (require 'org2ctex)
    (org2ctex-toggle t)))

(when (maybe-require-package 'treemacs)
  (global-set-key (kbd "s-/") 'treemacs)
  (require-package 'treemacs-projectile)
  (require-package 'treemacs-magit)
  (with-eval-after-load 'treemacs
    (treemacs-resize-icons 16)))

(provide 'init-local)
;;; init-local.el ends here
