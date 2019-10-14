;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(add-to-list 'default-frame-alist '(font . "Iosevka Custom:pixelsize=16" ))
(set-face-attribute 'default t :font "Iosevka Custom:pixelsize=16" )

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(setq default-directory "~/" )
(cd "~/" )
(delete-selection-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-display-table-slot standard-display-table 'vertical-border ?┃)
(setq-default abbrev-mode nil)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

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
 '(ansi-color-names-vector
   ["#151515" "#ac4142" "#90a959" "#f4bf75" "#6a9fb5" "#aa759f" "#6a9fb5" "#d0d0d0"])
 '(ansi-term-color-vector
   [unspecified "#151515" "#ac4142" "#90a959" "#f4bf75" "#6a9fb5" "#aa759f" "#6a9fb5" "#d0d0d0"] t)
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "c79c2eadd3721e92e42d2fefc756eef8c7d248f9edefd57c4887fbf68f0a17af" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" "f50f3f6547acd9d127fc51886d0d9492ac1858339bf5c2dfea902dbc7b9bf09b" "23a8142a86e2c77340d514d8186fa128994e344b1d8d0f3e805a2378c6ea1df2" "64ca5a1381fa96cb86fd6c6b4d75b66dc9c4e0fc1288ee7d914ab8d2638e23a9" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "36282815a2eaab9ba67d7653cf23b1a4e230e4907c7f110eebf3cdf1445d8370" "2b8dff32b9018d88e24044eb60d8f3829bd6bbeab754e70799b78593af1c3aba" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "73ad471d5ae9355a7fa28675014ae45a0589c14492f52c32a4e9b393fcc333fd" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" default)))
 '(dap-mode t nil (dap-mode))
 '(dap-ui-mode t nil (dap-ui))
 '(emamux:completing-read-type (quote normal))
 '(emamux:default-orientation (quote vertical))
 '(emamux:runner-pane-height 30)
 '(lsp-auto-guess-root nil)
 '(lsp-restart (quote auto-restart))
 '(lsp-ui-doc-border "#2E303E")
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-peek-always-show nil)
 '(lsp-ui-sideline-enable t)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(org-agenda-files (quote ("~/orgmode.org")))
 '(package-selected-packages
   (quote
    (ivy-mpdel mpdel sclang-extensions xclip smart-mode-line projectile delight vue-mode writeroom-mode dap-mode ivy-xref counsel ivy ini-mode yaml-mode lsp-python-ms csound-mode git-gutter emamux use-package elixir-mode web-mode multiple-cursors company-lsp lsp-ui lsp-mode company json-mode flycheck cygwin-mount python-mode typescript-mode org highlight-indent-guides magit base16-theme go-mode neotree rust-mode)))
 '(safe-local-variable-values (quote ((engine . jinja2) (engine . jinja))))
 '(sml/no-confirm-load-theme t)
 '(sml/theme (quote respectful)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#1c1e26" :foreground "#cbced0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(company-scrollbar-bg ((t (:background "#CBCED0"))))
 '(company-tooltip ((t (:background "#2E303E"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-common))))
 '(company-tooltip-mouse ((t (:inherit highlight))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face :background "#6F6F70"))))
 '(cursor ((t (:background "#E93C58"))))
 '(custom-group-tag ((t (:foreground "#E93C58"))))
 '(custom-variable-tag ((t (:foreground "#E93C58"))))
 '(diff-hunk-header ((t (:foreground "#B072D1"))))
 '(elixir-atom-face ((t (:foreground "#25B2BC"))))
 '(elixir-attribute-face ((t (:foreground "#DF5273"))))
 '(error ((t (:foreground "#E93C58" :weight bold))))
 '(font-lock-builtin-face ((t (:foreground "#25B2BC"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#6F6F70"))))
 '(font-lock-comment-face ((t (:foreground "#6F6F70" :slant oblique))))
 '(font-lock-constant-face ((t (:foreground "#E58D7D" :weight bold))))
 '(font-lock-doc-face ((t (:foreground "#24A8B4" :slant oblique))))
 '(font-lock-function-name-face ((t (:foreground "#25B2BC" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "#B072D1" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "#09F7A0"))))
 '(font-lock-preprocessor-face ((t (:foreground "#25B2BC" :slant italic))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#24A8B4" :weight bold))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#24A8B4" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#EFAF8E"))))
 '(font-lock-type-face ((t (:foreground "#EFB993" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "#E93C58" :weight bold))))
 '(font-lock-warning-face ((t (:foreground "#E93C58" :weight bold))))
 '(header-line ((t (:inherit mode-line :foreground "#B072D1"))))
 '(hi-red-b ((t (:foreground "#E93C58" :weight bold))))
 '(highlight ((t (:background "#6F6F70" :underline t))))
 '(info-xref ((t (:foreground "#25B2BC" :weight bold))))
 '(isearch ((t (:background "#6F6F70" :foreground "#FAB28E" :inverse-video t))))
 '(isearch-fail ((t (:inherit font-lock-warning-face :background "#CBCED0" :inverse-video t))))
 '(ivy-action ((t (:foreground "#25B2BC"))))
 '(ivy-confirm-face ((t (:foreground "#27D796"))))
 '(ivy-current-match ((t (:background "#6F6F70" :foreground "#CBCED0"))))
 '(ivy-match-required-face ((t (:foreground "#E95678"))))
 '(ivy-minibuffer-match-face-1 ((t (:foreground "#B877DB"))))
 '(ivy-minibuffer-match-face-2 ((t (:foreground "#25B2BC"))))
 '(ivy-minibuffer-match-face-3 ((t (:foreground "#24A8B4"))))
 '(ivy-minibuffer-match-face-4 ((t (:foreground "#27D796"))))
 '(lazy-highlight ((t (:background "#6F6F70"))))
 '(link ((t (:foreground "#25B2BC" :underline t))))
 '(link-visited ((t (:foreground "#B877DB" :underline t))))
 '(lsp-face-highlight-read ((t (:inherit highlight :foreground "#1C1E26" :underline t))))
 '(lsp-face-highlight-textual ((t (:inherit highlight :foreground "#1C1E26"))))
 '(lsp-face-highlight-write ((t (:inherit highlight :foreground "#1C1E26" :slant italic))))
 '(lsp-ui-doc-background ((t (:background "#232530"))))
 '(lsp-ui-peek-filename ((t (:foreground "#F09383"))))
 '(lsp-ui-peek-header ((t (:background "#232530" :foreground "#9DA0A2"))))
 '(lsp-ui-peek-highlight ((t (:background "#232530" :distant-foreground "#DCDFE4" :foreground "#9DA0A2" :box (:line-width -1 :color "#DCDFE4")))))
 '(lsp-ui-peek-line-number ((t (:foreground "#6F6F70"))))
 '(lsp-ui-peek-list ((t nil)))
 '(lsp-ui-peek-peek ((t nil)))
 '(lsp-ui-peek-selection ((t (:background "#2E303E"))))
 '(lsp-ui-sideline-code-action ((t (:foreground "#FAC29A"))))
 '(lsp-ui-sideline-current-symbol ((t (:box (:line-width -1 :color "#CBCED0") :weight ultra-bold :height 0.99))))
 '(magit-branch-remote ((t (:foreground "#09F7A0" :weight bold))))
 '(magit-cherry-equivalent ((t (:foreground "#B072D1"))))
 '(magit-diff-added ((t (:background "#27D796"))))
 '(magit-diff-added-highlight ((t (:background "#27D796"))))
 '(magit-diff-removed ((t (:background "#E9436F"))))
 '(magit-diff-removed-highlight ((t (:background "#E9436F"))))
 '(magit-diffstat-added ((t (:foreground "#27D796"))))
 '(magit-diffstat-removed ((t (:foreground "#E9436F"))))
 '(magit-hash ((t (:foreground "#26BBD9"))))
 '(magit-signature-error ((t (:foreground "#E93C58"))))
 '(markdown-link-face ((t (:foreground "#24A8B4" :underline t))))
 '(match ((t (:foreground "#25B2BC" :inverse-video t))))
 '(minibuffer-prompt ((t (:foreground "#25B2BC" :weight bold))))
 '(mode-line ((t (:background "#232530" :foreground "#9DA0A2" :inverse-video nil :box nil :height 0.9))))
 '(mode-line-buffer-id ((t (:foreground "#27D796" :weight bold :height 0.9))))
 '(mode-line-highlight ((t (:foreground "#E95379" :box nil :weight bold))))
 '(mode-line-inactive ((t (:foreground "#6F6F70" :inverse-video nil :box nil :weight light :height 0.9))))
 '(org-document-info ((t (:foreground "#25B2BC"))))
 '(org-document-info-keyword ((t (:foreground "#09F7A0"))))
 '(org-document-title ((t (:foreground "#CBCED0" :weight bold :height 1.44))))
 '(org-warning ((t (:foreground "#E4A382" :weight bold))))
 '(region ((t (:background "#2E303E"))))
 '(show-paren-match ((t (:background "#25B2BC"))))
 '(sml/charging ((t (:inherit sml/global :foreground "#27D796"))))
 '(sml/discharging ((t (:inherit sml/global :foreground "#E9436F"))))
 '(sml/filename ((t (:inherit mode-line-buffer-id :foreground "#EFB993" :weight bold))))
 '(sml/global ((t (:inherit font-lock-preprocessor-face :foreground "#9DA0A2"))))
 '(sml/modified ((t (:inherit sml/not-modified :foreground "#E93C58" :weight bold))))
 '(sml/outside-modified ((t (:inherit sml/not-modified :background "#E93C58"))))
 '(sml/prefix ((t (:inherit (font-lock-variable-name-face sml/global) :foreground "#9DA0A2"))))
 '(sml/read-only ((t (:inherit (font-lock-type-face sml/not-modified) :foreground "#24A8B4"))))
 '(success ((t (:foreground "#09F7A0" :weight bold))))
 '(tooltip ((t (:inherit default :background "#6C6F93"))))
 '(vertical-border ((t (:background "#1C1E26" :foreground "#2E303E"))))
 '(warning ((t (:foreground "#E4A382" :weight bold))))
 '(web-mode-error-face ((t (:background "#E93C58"))))
 '(whitespace-big-indent ((t (:background "#E93C58"))))
 '(whitespace-line ((t (:background "#E93C58" :foreground "#1C1E26"))))
 '(whitespace-trailing ((t (:background "#E93C58" :foreground "#EFB993"))))
 '(yaml-tab-face ((t (:background "#E93C58" :foreground "#E93C58" :weight bold)))))

(show-paren-mode 1)

;;; delight
(use-package delight
  :ensure t
  :demand t
  :config
  (delight '((auto-revert-mode nil "autorevert")
	     (eldoc-mode nil "eldoc")
	     (emacs-lisp-mode "Elisp" :major)
	     (whitespace-mode nil "whitespace"))))

;;; base16
(use-package base16-theme
  :ensure base16-theme
  :demand t
  :config
  (setq base16-theme-256-color-source 'base16-shell)
  (load-theme 'base16-horizon-dark t))

;;; neotree
(use-package neotree
  :ensure neotree)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq inhibit-compacting-font-caches t)
(setq neo-theme 'nerd)

;; (global-linum-mode 1)
;; (setq linum-format "%d ")
;; (set-face-attribute 'linum nil :background "#282828")
;; (set-face-attribute 'linum nil :foreground "#b8b8b8")

;;; highlight-indent-guides
(use-package highlight-indent-guides
  :ensure highlight-indent-guides
  :delight)
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
  :ensure git-gutter
  :delight)
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

;;; whitespace
(require 'whitespace)
(add-hook 'python-mode-hook
          (lambda ()
            (progn
              (setq whitespace-line-column 160)
              (setq whitespace-style '(face lines-tail trailing))
              (whitespace-mode))))

;;; company
(use-package company
  :ensure company
  :delight
  :commands global-company-mode
  :init (add-hook 'after-init-hook 'global-company-mode))

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
  :ensure emamux
  :demand t
  :init
  (global-set-key (kbd "C-z") emamux:keymap))

;;; csound
(use-package csound-mode
  :ensure csound-mode)
(require 'csound-mode)

(use-package lsp-python-ms
  :ensure t
  :demand t
  :hook (python-mode . lsp))

  (provide 'init-python)

;;; lsp-mode
(use-package lsp-mode
  :ensure lsp-mode)
(require 'lsp-mode)
(setq lsp-enable-snippet nil)
(add-hook 'prog-mode-hook #'lsp-deferred)
(global-set-key (kbd "C-]") 'lsp-find-definition)
(global-set-key (kbd "C-t") 'pop-tag-mark)

;;; lsp-ui
(use-package lsp-ui
  :ensure lsp-ui)
(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
(setq lsp-prefer-flymake nil)
(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'rust-mode-hook 'flycheck-mode)
(add-hook 'elixir-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'javascript-mode-hook 'flycheck-mode)
(add-hook 'html-mode-hook 'flycheck-mode)
(global-set-key (kbd "<f5>") 'lsp-ui-imenu)

;;; company-lsp
(use-package company-lsp
  :ensure company-lsp)
(require 'company-lsp)
(push 'company-lsp company-backends)
(setq company-lsp-async t)

(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>") 'end-of-line)

(use-package yaml-mode
  :ensure t
  :demand t
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode)))

;;; ini mode
(use-package ini-mode
  :ensure t
  :config
  (autoload 'ini-mode "ini-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.ini\\'" .ini-mode)))

;;; ivy
(use-package ivy
  :ensure t
  :demand t
  :delight
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq enable-recursive-minibuffers t)
  ;; enable this if you want `swiper' to use it
  ;; (setq search-default-mode #'char-fold-to-regexp)
  (global-set-key "\C-s" 'swiper))

(use-package counsel
  :ensure t
  :demand t
  :delight
  :config
  (counsel-mode 1)
  (global-set-key (kbd "<f6>") 'counsel-rg))

(use-package swiper
  :ensure t
  :delight)

(use-package ivy-xref
  :ensure t
  :init (if (< emacs-major-version 27)
            (setq xref-show-xrefs-function #'ivy-xref-show-xrefs)
          (setq xref-show-definitions-function #'ivy-xref-show-defs)))

;;; dap-mode
(use-package dap-mode
  :ensure t
  :demand t
  :init
  (dap-ui-mode 1)
  (require 'dap-python)
  (require 'dap-elixir)
  (require 'dap-gdb-lldb)
  (require 'dap-go)
  (require 'dap-firefox))

;;; go-mode
(use-package go-mode
  :ensure t
  :demand t)

;;; rust-mode
(use-package rust-mode
  :ensure t
  :demand t
  :config
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode)))

;;; writeroom-mode
(use-package writeroom-mode
  :ensure t
  :demand t)

;;; vue-mode
(use-package vue-mode
  :ensure t
  :demand t)

(use-package projectile
  :ensure t
  :demand t
  :config
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package xclip
  :ensure t
  :config
  (xclip-mode 1))

(use-package smart-mode-line
  :ensure t
  :demand t
  :init
  (sml/setup))

(use-package sclang-extensions
  :ensure t
  :demand t)

(use-package mpdel
  :ensure t
  :demand t
  :delight
  :config (mpdel-mode 1))

(use-package ivy-mpdel
  :ensure t
  :demand t)

(provide '.emacs)
;;; .emacs ends here
