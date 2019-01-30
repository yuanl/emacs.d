;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (add-to-list 'custom-theme-load-path
;;              (expand-file-name
;;               "emacs-color-theme-solarized" user-emacs-directory))

(add-hook 'after-init-hook 'toggle-frame-maximized)

;; (load-theme 'solarized t)

(sanityinc/enable-ivy-flx-matching)

(maybe-require-package 'arduino-mode)

(when (maybe-require-package 'ace-window)
  (global-set-key (kbd "M-o") 'ace-window))

(provide 'init-local)
;;; init-local.el ends here
