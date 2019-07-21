;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(set-frame-font "Iosevka SS10:pixelsize=16")

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(setq default-directory "~/" )
(cd "~/" )
(delete-selection-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-display-table-slot standard-display-table 'vertical-border ?┃)
(set-face-foreground 'vertical-border "color-236")

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
    ("c79c2eadd3721e92e42d2fefc756eef8c7d248f9edefd57c4887fbf68f0a17af" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" "f50f3f6547acd9d127fc51886d0d9492ac1858339bf5c2dfea902dbc7b9bf09b" "23a8142a86e2c77340d514d8186fa128994e344b1d8d0f3e805a2378c6ea1df2" "64ca5a1381fa96cb86fd6c6b4d75b66dc9c4e0fc1288ee7d914ab8d2638e23a9" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "36282815a2eaab9ba67d7653cf23b1a4e230e4907c7f110eebf3cdf1445d8370" "2b8dff32b9018d88e24044eb60d8f3829bd6bbeab754e70799b78593af1c3aba" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "73ad471d5ae9355a7fa28675014ae45a0589c14492f52c32a4e9b393fcc333fd" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" default)))
 '(emamux:completing-read-type (quote normal))
 '(emamux:default-orientation (quote vertical))
 '(emamux:runner-pane-height 30)
 '(lsp-auto-guess-root nil)
 '(lsp-restart (quote auto-restart))
 '(lsp-ui-flycheck-enable t)
 '(lsp-ui-peek-always-show nil)
 '(lsp-ui-sideline-enable t)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(org-agenda-files (quote ("~/orgmode.org")))
 '(package-selected-packages
   (quote
    (writeroom-mode dap-mode ivy-xref counsel ivy ini-mode ansible emacs-ansible yaml-mode lsp-python-ms csound-mode git-gutter emamux use-package elixir-mode web-mode multiple-cursors company-lsp lsp-ui lsp-mode company json-mode flycheck cygwin-mount python-mode typescript-mode org highlight-indent-guides magit airline-themes base16-theme go-mode neotree powerline rust-mode)))
 '(safe-local-variable-values (quote ((engine . jinja2) (engine . jinja)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip ((t (:inherit tooltip))))
 '(company-tooltip-mouse ((t (:inherit highlight))))
 '(highlight ((t (:background "brightgreen" :foreground "color-18"))))
 '(lsp-face-highlight-read ((t (:inherit highlight :foreground "black" :underline t))))
 '(lsp-face-highlight-textual ((t (:inherit highlight :foreground "black"))))
 '(lsp-face-highlight-write ((t (:inherit highlight :foreground "black" :slant italic))))
 '(lsp-ui-doc-background ((t (:background "color-19"))))
 '(lsp-ui-peek-peek ((t (:background "color-19" :foreground "white"))))
 '(region ((t (:background "brightyellow" :foreground "color-18"))))
 '(tooltip ((t (:inherit default :background "brightgreen" :foreground "color-18"))))
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
(when (display-graphic-p)
  (load-theme 'airline-base16-gui-dark :no-confirm))

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
  :ensure emamux)
(global-set-key (kbd "C-z") emamux:keymap)

;;; csound
(use-package csound-mode
  :ensure csound-mode)
(require 'csound-mode)

(use-package lsp-python-ms
  :ensure t
  :demand t
  :hook (python-mode . lsp)
  :config
    ;; for executable of language server, if it's not symlinked on your PATH
  (setq lsp-python-ms-executable
        "/usr/bin/mspyls"))

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

;;; ansible mode
(use-package ansible
  :ensure t
  :config
  (add-hook 'yaml-mode-hook '(lambda () (ansible 1))))

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
  :config
  (counsel-mode 1)
  (global-set-key (kbd "<f6>") 'counsel-rg))

(use-package swiper
  :ensure t)

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
  (require 'dap-python))

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


(provide '.emacs)
;;; .emacs ends here
