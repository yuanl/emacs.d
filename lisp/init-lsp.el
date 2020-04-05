;;; init-lsp.el --- Lsp editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (require 'nox)
  (define-key nox-mode-map (kbd "C-M-/") 'nox-show-doc))

(dolist (hook (list
               'js-mode-hook
               'rust-mode-hook
               'python-mode-hook
               'ruby-mode-hook
               'java-mode-hook
               'sh-mode-hook
               'php-mode-hook
               'c-mode-common-hook
               'c-mode-hook
               'c++-mode-hook
               'arduino-mode-hook
               'haskell-mode-hook
               ))
  (add-hook hook '(lambda () (nox-ensure))))

(provide 'init-lsp)
;;; init-lsp.el ends here
