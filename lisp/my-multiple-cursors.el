(my-install-packages '(multiple-cursors))

(require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this-word)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this-word)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this-word)
