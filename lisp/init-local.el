;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook 'toggle-frame-maximized)

(sanityinc/enable-ivy-flx-matching)

(maybe-require-package 'arduino-mode)

(when (maybe-require-package 'ace-window)
  (global-set-key (kbd "M-o") 'ace-window))

(when (maybe-require-package 'pipenv)
  (add-hook 'python-mode-hook #'pipenv-mode)
  (setq
   pipenv-projectile-after-switch-function
   #'pipenv-projectile-after-switch-extended))

(provide 'init-local)
;;; init-local.el ends here
