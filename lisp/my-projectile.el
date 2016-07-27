(projectile-global-mode)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)

(setq projectile-switch-project-action 'neotree-projectile-action)

(defun helm-projectile-ag ()
  (interactive)
  (helm-ag (projectile-project-root)))
