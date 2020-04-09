;;; init-pyim.el --- provide chinese input method -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (and (or (eq system-type 'gnu/linux)
               (eq system-type 'darwin))
           (maybe-require-package 'pyim))
  (require 'pyim)
  (require 'pyim-basedict)
  (pyim-basedict-enable)

  (setq default-input-method "pyim"
        pyim-default-scheme 'xiaohe-shuangpin)

  (when (maybe-require-package 'posframe)
    (require 'posframe)
    (setq pyim-page-tooltip 'posframe))

  (pyim-isearch-mode -1))


(provide 'init-pyim)
;;; init-pyim.el ends here
