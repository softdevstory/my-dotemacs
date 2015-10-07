(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))

(add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
(add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
(add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
(add-to-list 'web-mode-indentation-params '("lineup-ternary" . nil))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (local-set-key (kbd "RET") 'newline-and-indent)
  
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  (setq web-mode-style-padding 2)
  (setq web-mode-script-padding 2)
  
  (setq indent-tabs-mode nil)
  (infer-indentation-style)
  
;  (setq web-mode-block-padding 0)
;  (setq web-mode-comment-style 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)
