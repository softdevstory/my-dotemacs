(my-install-packages '(helm helm-ag))

(require 'helm)
(require 'helm-ag)

(helm-mode 1)
(global-set-key [(meta x)] 'helm-M-x)
(global-set-key [(meta s)] 'helm-ag)

;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-M-p") 'helm-projectile)
