;;; init-rime.el --- provide chinese input method via librime -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(when (and (file-exists-p "~/.emacs.d/librime")
           (maybe-require-package 'rime))
  (require-package 'posframe)
  (require 'rime)
  (setq rime-librime-root (expand-file-name "librime/dist"
                                            user-emacs-directory)
        rime-user-data-dir (expand-file-name "~/Library/Rime")
        default-input-method "rime"
        rime-show-candidate 'posframe))

(provide 'init-rime)
;;; init-rime.el ends here
