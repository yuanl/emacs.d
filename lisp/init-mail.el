;;; init-mail.el --- Mail customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (require 'mu4e nil 'noerror)
  (setq
   mail-user-agent 'mu4e-user-agent
   mu4e-get-mail-command "offlineimap"
   mu4e-hide-index-messages t
   mu4e-update-interval 300
   mu4e-view-show-images t
   )
  (setq
   user-full-name  "Leonard Li"
   user-mail-address "leonard.li@sony.com"
   mu4e-user-mail-address-list '("leonard.li@sony.com"
                                 "leonard.li@sonymobile.com")
   mu4e-compose-signature "Leonard\n"
   )
  (require 'smtpmail)
  (setq
   send-mail-function 'smtpmail-send-it
   smtpmail-smtp-server "localhost"
   smtpmail-smtp-service 1025
   )
  (setq mu4e-maildir-shortcuts
        '( ("/sony/INBOX" . ?i)
           ))
  )

(provide 'init-mail)
;;; init-mail.el ends here
