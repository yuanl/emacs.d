;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'custom-theme-load-path
             (expand-file-name
              "emacs-color-theme-solarized" user-emacs-directory))

(add-hook 'after-init-hook 'toggle-frame-maximized)

(load-theme 'solarized t)

(provide 'init-local)
;;; init-local.el ends here
