;;; init-arduino.el --- Arduino editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(when (maybe-require-package 'arduino-mode)
  (when (maybe-require-package 'company-irony)
    (add-hook 'arduino-mode-hook 'irony-mode)
    (add-hook 'irony-mode-hook #'irony-eldoc)
    (after-load 'irony
      (add-to-list 'irony-supported-major-modes 'arduino-mode)
      (add-to-list 'irony-lang-compile-option-alist '(arduino-mode . "c++")))
    )
  (maybe-require-package 'platformio-mode))


(provide 'init-arduino)
;;; init-arduino.el ends here
