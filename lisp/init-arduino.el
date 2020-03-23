;;; init-arduino.el --- Arduino editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(when (maybe-require-package 'arduino-mode)
  (add-to-list 'auto-mode-alist '("\\.cpp\\'" . arduino-mode))
  (when (and (maybe-require-package 'eglot)
             (maybe-require-package 'platformio-mode))
    (after-load 'arduino-mode
      (require 'platformio-mode)
      (platformio-mode 1)
      (eglot-ensure))))

(provide 'init-arduino)
;;; init-arduino.el ends here
