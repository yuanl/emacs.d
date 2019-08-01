;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook 'toggle-frame-maximized)

(sanityinc/enable-ivy-flx-matching)

(maybe-require-package 'arduino-mode)

(maybe-require-package 'vue-mode)


(setq tramp-default-method "ssh")

(provide 'init-local)
;;; init-local.el ends here
