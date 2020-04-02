;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


;; See the following note about how I set up python + virtualenv to
;; work seamlessly with Emacs:
;; https://gist.github.com/purcell/81f76c50a42eee710dcfc9a14bfc7240


(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(setq python-shell-interpreter "python3")

(require-package 'pip-requirements)

(when (maybe-require-package 'blacken)
  (after-load 'python
    (add-hook 'python-mode-hook 'blacken-mode)))

;;; clone shim to site-lisp
(when (and (executable-find "pyenv")
           (require 'shim nil 'noerror))
  (shim-init-python)
  (add-hook 'python-mode-hook #'shim-mode))

(provide 'init-python)
;;; init-python.el ends here
