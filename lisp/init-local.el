;;; init-local.el --- Yuanl's customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook 'toggle-frame-maximized)

(sanityinc/enable-ivy-flx-matching)

(maybe-require-package 'arduino-mode)

(maybe-require-package 'vue-mode)


(setq tramp-default-method "ssh")

(when (require 'mu4e)
  (setq
   mail-user-agent 'mu4e-user-agent
   mu4e-get-mail-command "offlineimap"
   mu4e-update-interval 300
   mu4e-view-show-images t
   )
  (setq
   user-full-name  "Leonard Li"
   user-mail-address "leonard.li@sony.com"
   mu4e-user-mail-address-list '("leonard.li@sony.com" "leonard.li@sonymobile.com")
   )
  )

(global-set-key (kbd "s-t") 'eshell)

(provide 'init-local)
;;; init-local.el ends here
