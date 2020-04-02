;;; init-arduino.el --- Arduino editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(when (maybe-require-package 'arduino-mode)
  (add-to-list 'auto-mode-alist '("\\.cpp\\'" . arduino-mode))
  (when (maybe-require-package 'platformio-mode)
    (after-load 'arduino-mode
      (require 'platformio-mode)
      (platformio-conditionally-enable))))

  (provide 'init-arduino)
;;; init-arduino.el ends here
