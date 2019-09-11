;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)

(maybe-require-package 'blacken)
(maybe-require-package 'pyvenv)

(when (maybe-require-package 'anaconda-mode)
  (after-load 'python
    (setq python-shell-interpreter-args "--simple-prompt -i")
    (add-hook 'python-mode-hook 'blacken-mode)
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'anaconda-eldoc-mode))
  (after-load 'anaconda-mode
    (define-key anaconda-mode-map (kbd "M-?") nil))
  (when (maybe-require-package 'company-anaconda)
    (after-load 'company
      (after-load 'python
        (push 'company-anaconda company-backends)))))


(provide 'init-python)
;;; init-python.el ends here
