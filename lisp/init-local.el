;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'custom-theme-load-path
             (expand-file-name "emacs-color-theme-solarized" user-emacs-directory))
(load-theme 'solarized t)

(provide 'init-local)
;;; init-local.el ends here
