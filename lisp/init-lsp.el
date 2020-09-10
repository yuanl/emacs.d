;;; init-lsp.el --- Lsp editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'lsp-mode)
  (require-package 'lsp-pyright)
  (dolist (hook (list
                 'c-mode-common-hook
                 'c-mode-hook
                 'c++-mode-hook
                 'sh-mode-hook
                 'python-mode-hook
                 'js-mode-hook
                 ))
    (add-hook hook '(lambda () #'lsp))))

;;; Increase the amount of data which Emacs reads from the process
(setq read-process-output-max (* 1024 1024)) ;; 1mb

(provide 'init-lsp)
;;; init-lsp.el ends here
