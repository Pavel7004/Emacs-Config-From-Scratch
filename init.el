(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")
	     '("gnu" . "https://elpa.gnu.org/packages/"))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;;;;

(setq gc-cons-threshold-original gc-cons-threshold)
(setq gc-cons-threshold most-positive-fixnum)

(setq file-name-handler-alist-original file-name-handler-alist)
(setq file-name-handler-alist nil)

(defun reset-config ()
  (setq gc-cons-threshold gc-cons-threshold-original)
  (setq file-name-handler-alist file-name-handler-alist-original)
  (makunbound 'gc-cons-threshold-original)
  (makunbound 'file-name-handler-alist-original)
  (message "[user] gc-cons-threshold and file-name-handler-alist restored"))

(add-hook 'after-init-hook 'reset-config)

(org-babel-load-file (expand-file-name "~/.emacs.d/myConfig.org"))

;;;;;

(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck-pos-tip flycheck swiper treemacs-magit treemacs-icons-dired treemacs-projectile git-gutter magit-gitflow magit shell-pop yasnippet-snippets yasnippet dap-mode lsp-treemacs company-lsp lsp-ui lsp-mode company-box company expand-region org-bullets rainbow-delimiters highlight-indent-guides linum-relative aggressive-indent rainbow-mode dashboard peep-dired smex ibuffer-projectile ido-vertical-mode async use-package-hydra hydra hide-mode-line diminish which-key solaire-mode doom-themes minions doom-modeline use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
