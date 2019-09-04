;;; init-proxy.el --- Proxy customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (and (string-prefix-p "SOMCW" system-name)
           (eq system-type 'windows-nt))
  (setq url-proxy-services '(("no_proxy" . "sony\\.com")
                             ("http" . "proxy.global.sonyericsson.net:8080")
                             ("https" . "proxy.global.sonyericsson.net:8080"))))

(provide 'init-proxy)
;;; init-proxy.el ends here
