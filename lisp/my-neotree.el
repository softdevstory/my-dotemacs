(my-install-packages '(neotree))

(require 'neotree)

(global-set-key (kbd "C-x C-x") 'neotree-toggle)
(global-set-key (kbd "C-x C-z") 'neotree-change-root)
