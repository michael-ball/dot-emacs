;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (window-system)
  (set-frame-font "Iosevka SS10:pixelsize=16"))

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(setq default-directory "~/" )
(cd "~/" )
(delete-selection-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0268ec40fab7607cb796e066e4942102d2155c73e60af5bb407d42bc16ab1f8b" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "f50f3f6547acd9d127fc51886d0d9492ac1858339bf5c2dfea902dbc7b9bf09b" default)))
 '(lsp-ui-peek-always-show nil)
 '(lsp-ui-sideline-enable t)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(org-agenda-files (quote ("~/orgmode.org")))
 '(package-selected-packages
   (quote
    (lsp-python-ms csound-mode emamux web-mode elixir-mode multiple-cursors company-lsp lsp-ui lsp-mode helm-company company flycheck python-mode git-gutter magit highlight-indent-guides helm neotree all-the-icons airline-themes base16-theme powerline use-package)))
 '(safe-local-variable-values (quote ((engine . jinja2) (engine . jinja)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-line ((t (:background "red" :foreground "black")))))

(show-paren-mode 1)

;;; powerline
(use-package powerline
  :ensure powerline)
(require 'powerline)
(powerline-vim-theme)

;;; base16
(use-package base16-theme
  :ensure base16-theme)
(load-theme 'base16-horizon-dark t)

;;; airline-themes
(use-package airline-themes
  :ensure airline-themes)
(require 'airline-themes)
(load-theme 'airline-base16-shell-dark :no-confirm)
(when (window-system)
  (load-theme 'airline-base16-gui-dark :no-confirm))

;;; all-the-icons
(use-package all-the-icons
  :ensure all-the-icons)
(require 'all-the-icons)

;;; neotree
(use-package neotree
  :ensure neotree)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq inhibit-compacting-font-caches t)
(setq neo-theme (if (display-graphic-p) 'icons 'nerd))

;;; helm
(use-package helm
  :ensure helm)
(require 'helm)
(require 'helm-config)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)

(defun spacemacs//helm-hide-minibuffer-maybe ()
  "Hide minibuffer in Helm session if we use the header line as input field."
  (when (with-helm-buffer helm-echo-input-in-header-line)
    (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
      (overlay-put ov 'window (selected-window))
      (overlay-put ov 'face
                   (let ((bg-color (face-background 'default nil)))
                     `(:background ,bg-color :foreground ,bg-color)))
      (setq-local cursor-type nil))))


(add-hook 'helm-minibuffer-set-up-hook
          'spacemacs//helm-hide-minibuffer-maybe)

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(helm-autoresize-mode 1)

(helm-mode 1)

;; (global-linum-mode 1)
;; (setq linum-format "%d ")
;; (set-face-attribute 'linum nil :background "#282828")
;; (set-face-attribute 'linum nil :foreground "#b8b8b8")

(setq powerline-utf-8-separator-left        #xe0b0
      powerline-utf-8-separator-right       #xe0b2
      airline-utf-glyph-separator-left      #xe0b0
      airline-utf-glyph-separator-right     #xe0b2
      airline-utf-glyph-subseparator-left   #xe0b1
      airline-utf-glyph-subseparator-right  #xe0b3
      airline-utf-glyph-branch              #xe0a0
      airline-utf-glyph-readonly            #xe0a2
      airline-utf-glyph-linenumber          #xe0a1)

;;; highlight-indent-guides
(use-package highlight-indent-guides
  :ensure highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)
(setq highlight-indent-guides-auto-character-face-perc 25)

;; magit
(use-package magit
  :ensure magit)
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(use-package git-gutter
  :ensure git-gutter)
(global-git-gutter-mode +1)
(global-set-key (kbd "C-x C-g") 'git-gutter)
(global-set-key (kbd "C-x v =") 'git-gutter:popup-hunk)

;; Jump to next/previous hunk
(global-set-key (kbd "C-x p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter:next-hunk)

;; Stage current hunk
(global-set-key (kbd "C-x v s") 'git-gutter:stage-hunk)

;; Revert current hunk
(global-set-key (kbd "C-x v r") 'git-gutter:revert-hunk)

;; Mark current hunk
(global-set-key (kbd "C-x v SPC") #'git-gutter:mark-hunk)

;; org
(use-package org
  :ensure org)
;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done 'time)

;;; python-mode
(use-package python-mode
  :ensure python-mode)
(setq py-shell-name "python")
(setq python-python-command "python")

;;; flycheck
(use-package flycheck
  :ensure flycheck
  :commands global-flycheck-mode
  :init (add-hook 'after-init-hook #'global-flycheck-mode))

(eval-after-load 'flycheck
  '(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck))

;;; whitespace
(require 'whitespace)
(add-hook 'python-mode-hook
          (lambda ()
            (progn
              (setq whitespace-line-column 79)
              (setq whitespace-style '(face lines-tail trailing))
              (whitespace-mode))))

;;; company
(use-package company
  :ensure company
  :commands global-company-mode
  :init (add-hook 'after-init-hook 'global-company-mode))

;;; helm-company
(use-package helm-company
  :ensure helm-company)
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

;;; lsp-mode
(use-package lsp-mode
  :ensure lsp-mode
  :config
  (setq lsp-enable-snippet nil))
(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)


;;; lsp-ui
(use-package lsp-ui
  :ensure lsp-ui)
(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

;;; company-lsp
(use-package company-lsp
  :ensure company-lsp)
(require 'company-lsp)
(push 'company-lsp company-backends)

(setq company-lsp-async 1)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

(use-package lsp-python-ms
  :ensure t
  :demand
  :hook (python-mode . lsp)
  :config
  (setq lsp-python-ms-executable
        "~/.local/bin/mspyls"))

;;; multiple-cursors
(use-package multiple-cursors
  :ensure multiple-cursors)
(require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;; elixir-mode
(use-package elixir-mode
  :ensure elixir-mode)
(require 'elixir-mode)

;;; web-mode
(use-package web-mode
  :ensure web-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eex?\\'" . web-mode))
(setq web-mode-enable-engine-detection t)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-css-colorization t)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-auto-expanding t)

;;; emamux
(use-package emamux
  :ensure emamux)
(global-set-key (kbd "C-z") emamux:keymap)

;;; csound
(use-package csound-mode
  :ensure csound-mode)
(require 'csound-mode)

(provide '.emacs)
;;; .emacs ends here
