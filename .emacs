(load-theme 'doom-dark+ t)
(setq inhibit-startup-screen t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-install 'cider)

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

(eval-after-load 'cider
  '(define-key clojure-mode-map (kbd "C-c C-v") 'cider-start-http-server))
(eval-after-load 'cider
  '(define-key clojure-mode-map (kbd "C-c C-z") 'cider-switch-to-repl-buffer))
(eval-after-load 'cider
  '(define-key clojure-mode-map (kbd "C-c C-r") 'cider-eval-region))

