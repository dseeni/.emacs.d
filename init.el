;;; init.el --- startpoint of Michael's Emacs config
;;
;;; Code:

;; Setup custom file
(setq custom-file "~/.emacs.d/emacs-custom.el")

;; This just stops this erroring the first time you load emacs
(unless (file-exists-p custom-file)
  (with-temp-buffer
    (insert ";; emacs-custom.el")
    (write-file custom-file nil)
    ))

(load custom-file)

;; Default directory
(setq default-directory "~/")

;; Ensure my custom Elisp is on loadpath
(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/elisp/deps")

;; The Mdubziverse
(require 'mdw-defaults)
(require 'mdw-packages)
(require 'mdw-complete)
(require 'mdw-utilities) ; Always ensure utilities loads before keybinds
(require 'mdw-keybinds)
(require 'mdw-deft)
(require 'mdw-vibes)
(require 'mdw-modes)
(require 'mdw-org)
(require 'mdw-ess)
(require 'mdw-projectile)
