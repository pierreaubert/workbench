;;; paub-init --- initialisation for .emacs -*- emacs-lisp -*-
;;; Commentary:
;;;  08 Jul 24 :  remove a lot of goodies
;;;  17 Jun 24 :  fix completion
;;;  01 Jun 24 :  add some custom conf for macOS
;;;            +  switch to elpaca to install packages
;;;            +  merged LSP servers into lsp directory
;;;  25 Sep 23 :  switch to emacs29
;;;  24 Sep 23 :  add support for typescript
;;;  07 Mar 23 :  installed lsp and ruff: best python experience so far
;;;   1 Fev 23 :  debugged javascript mode
;;;  17 Jan 22 :  debugged javascript mode
;;;  06 Jun 21 :  add rust mode
;;;  22 Fev 21 :  move from flymake to flycheck
;;;  28 Dec 20 :  gap in logging.  Lots as changed in 8 years.
;;;            + melpa moved
;;;            + added markdown-mode and grip-mode
;;;   6 Jun 13 :  tweats jedi
;;;  13 Mai 13 :  add pymacs
;;;  13 Mai 13 :  add rope
;;;  13 Mai 13 :  add flymode
;;;  13 Mai 13 :  add autocomplete
;;;  13 Mai 13 :  add js2 to remplace javascript mode
;;;  24 Avr 12 :  port to acquamacs
;;;  03 Sep 08 :  add python mode and erlang mode
;;;  11 Nov 05 :  resetup under cygwin
;;;  23 Sep 05 :  add a ruby mode
;;;  07 Sep 04 :  add sql mode
;;;  13 Aug 04 :  replace php by php-mode
;;;  26 Jan 04 :  desactivation of VM
;;;  12 Oct 03 :  activate xml mode for wsdl file
;;;  12 Fev 03 :  activate xml mode for xml schema on .xsd file
;;;  26 Sep 02 :  add css-mode, activate xml-mode for rdf-file
;;;  10 Sep 02 :  custom w3m/w3/vm
;;;  16 Aou 02 :  *.tcl load tcl mode
;;;  08 Jul 02 :  try again with w3m
;;;  20 May 02 :  bound C-xm to vm-mail, remove mew, apel and semi
;;;              can't have w3m to replace vm
;;;  17 May 02 :  update to vm-7.05
;;;  23 Mar 02 :  update cperl-mode
;;;  30 Oct 01 :  add antlr-mode
;;;  25 Jun 01 :  add perl-mode
;;;  22 Mai 01 :  add tdtd
;;;  11 Mai 01 :  add xml-mode
;;;  15 Mar 01 :  update to vm-6.92
;;;  25 Jan 01 :  update to bbdb 2.20
;;;  19 Jan 01 :  update to Oort Gnus
;;;  12 Jan 01 :  various ack with mail-abbrev
;;;  12 Dec 00 :  implement cc-mode customization for KE2
;;;  04 Nov 00 :  oo-browser
;;;  30 Oct 00 :  place cc-mode en mode ansi
;;;  24 Sep 00 :  add php-mode
;;;  21 Mai 00 :  add debug command at beginning of file
;;;            + add icomplete
;;;  23 Dec 99 :  add C-� binding to mimic traditional next-error on
;;;            + azerty keyboard
;;;  10 Dec 99 :  add a4 as default format for postscript
;;;  03 Nov 99 :  explicitly load reftex on .tex files
;;;            + update x-symbol
;;;            + update w3
;;;  14 Oct 99 :  add a reply To field for vm and rmail
;;;  11 Oct 99 :  enhance Ispell with french via Francais-GUTenberg-v1.0
;;;            :  add flyspell-1.5
;;;  13 Jul 99 :  portage a xemacs21.1.4
;;;  01 Jul 99 :  align-regexp -> align-2.5
;;;            + add fmailutils+vcard+vm-vcard
;;;            + custom bbdb-2.00.05
;;;  23 Feb 99 :  align-regexp -> align-2.0
;;;  22 Jan 99 :  mime et gnus
;;;  07 Jan 99 :  replace Ispell by aspell
;;;  12 Dec 98 :  portage a xemacs21.0
;;;  05 Dec 98 :  portage a xemacs20.4
;;;  26 Nov 98 :  portage a emacs20.3
;;;  06 Nov 98 :  remove /home2/paubert replace by ~
;;;  12 Sep 98 :  modify mailboxes
;;;  21 Aou 98 :  add support for emacs-20.3
;;;  04 Aou 98 :  add support for logitech 6 button mouse
;;;  03 Aou 98 :  installation sur pcmath03.insa-lyon.fr
;;;  25 Apr 98 :  suppression de supercite
;;;  18 Mar 98 :  bbdb-2.00 installation
;;;  13 Mar 98 :  correction customization cc-mode
;;;  12 Mar 98 :  cc-mode et customization pour pa (bis)
;;;  04 Feb 98 :  modif speedbar 0.6.3
;;;  15 Jan 98 :  (suite) + macros pour c++
;;;  12 Jan 98 :  addition de regles pour les /= modes Makefile.am ...
;;;            + dmacros for makefiles
;;;  18 Sep 97 :  version mixte XEmacs et Emacs
;;;  15 Sep 97 :  cc-mode et customization pour pa
;;;  01 Sep 97 :  w3-3.0.103
;;;  10 Jul 97 :  custom tiny
;;;  08 Jul 97 :  add listbuf
;;;  07 Jul 97 :  add tiny package
;;;  23 Jun 97 :  suppress uniquify, hyperbole, oo-browser (all buggy)
;;;  14 Jun 97 :  hyperbole + oo-browser
;;;  12 Jun 97 :  ajoute des macros dynamiques pour c++
;;;  08 Jun 97 :  add speedbar
;;;  01 Apr 97 :  add uniquify
;;;  04 Mar 97 :  correction passwd anonymous
;;;  24 Jan 97 :  mail-setup-hook
;;;  09 Jan 97 :  add m4-mode and mupad-mode
;;;  11 Nov 96 :  installation de pcl-cvs et donc de elib en plus
;;;  08 Oct 96 :  menage GENERAL
;;;  07 Oct 96 :  tm
;;;  02 Oct 96 :  calendar + diary
;;;  24 Sep 96 :  nouvelle version de w3
;;;  23 Sep 96 :  bbdb-letter ne marche toujours pas, je le mts en commentaire
;;;              installation de dmacro 2.2 en remplacement de 2.0 (ok)
;;;  18 Sep 96 :  installation bbdb-letter
;;;  02 Sep 96 :  adaptation INSA-Lyon
;;;  06 Aou 96 :  deplacement de la config GNUS dans ~/.gnus
;;;  17 Jul 96 :  integration de OOBR et modif des paths
;;;  20 Jun 96 :  modifs pour gnus (suites)
;;;  10 Jun 96 :  modifs pour gnus (confort personel, demarage automatique des
;;;              topics ... )
;;;  19 May 96 :  ajout de gnus-save-newsrc
;;;              ajout de grouplens
;;;  15 Avr 96 :  pb avec sgnus > v0.80, oblige de changer l'appel du serveur
;;;  21 Mar 96 :  relooking + fix pour ange ( eh presque pas touche en 3 mois
;;;              etonnant non !)
;;;  11 Dec 95 :  ptt' modif pour les caracteres 8 bits voir iso-
;;;  30 Nov 95 :  modif pour 19.30
;;;  02 Nov 95 :  modif pour gnus, on rajoute la possiblite de lire les fichiers
;;;              crees par procmail sous forme de newsgroup
;;;              selection un peu differente des articles
;;;              mise a jour des fichiers SCORE
;;;  10 Oct 95 :  modif pour bibtex on rajoute dvi,ps et html
;;;  25 Sep 95 :  on charge .emacs.el
;;;  06 Aou 95 :  mailcrypt.el 3.3
;;;              hilit-LaTeX.el 1.15
;;;              gri-mode.el
;;;  27 Jun 95 :  ajout de 8bits-mode dans bibtex-mode + changements cosmetiques
;;;  26 Jun 95 :  version compatible avec XEmacs 19.12 et FSF Emacs 19.29
;;;  26 Jun 95 :  on installe une nouvelle version de mailcrypt qui colle avec
;;;              PGP
;;;  05 Jun 95 :  on installe vm-5.86 plus besoin de vm-print
;;;  22 Mai 95 :  on installe vm-print
;;;  02 Mai 95 :  on supprime tm et on le remplace par vm-metamail
;;;  01 Fev 95 :  modif pour Ispell -> on charge ispell-ireq
;;;  ----------------------------------------------------------------------
;;;  Creation:  24 Jan 88:  emacs-18.45 on micro-vax
;;;  ----------------------------------------------------------------------
;;;  Code:
;;;  -------------------------------------------------------------------
;;   Leave these here for debugging this file!
;;;  -------------------------------------------------------------------

; (setq debug-on-error t)
; (add-hook 'after-init-hook '(lambda () (setq debug-on-error t)))
; (debug-on-entry 'command-line-1)
; (setq message-log-max 1000)

;; The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 160 1000 1000))
(setq read-process-output-max (* 1024 1024))

;;;-------------------------------------------------------------------
;;; package manager
;;;-------------------------------------------------------------------
(setq package-enable-at-startup nil)
(defvar elpaca-installer-version 0.7)
(defvar elpaca-directory (expand-file-name "elpaca/" user-emacs-directory))
(defvar elpaca-builds-directory (expand-file-name "builds/" elpaca-directory))
(defvar elpaca-repos-directory (expand-file-name "repos/" elpaca-directory))
(defvar elpaca-order '(elpaca :repo "https://github.com/progfolio/elpaca.git"
			      :ref nil
			      :files (:defaults "elpaca-test.el" (:exclude "extensions"))
			      :build (:not elpaca--activate-package)))
(let* ((repo  (expand-file-name "elpaca/" elpaca-repos-directory))
       (build (expand-file-name "elpaca/" elpaca-builds-directory))
       (order (cdr elpaca-order))
       (default-directory repo))
  (add-to-list 'load-path (if (file-exists-p build) build repo))
  (unless (file-exists-p repo)
    (make-directory repo t)
    (when (< emacs-major-version 28) (require 'subr-x))
    (condition-case-unless-debug err
	(if-let ((buffer (pop-to-buffer-same-window "*elpaca-bootstrap*"))
		 ((zerop (call-process "git" nil buffer t "clone"
				       (plist-get order :repo) repo)))
		 ((zerop (call-process "git" nil buffer t "checkout"
				       (or (plist-get order :ref) "--"))))
		 (emacs (concat invocation-directory invocation-name))
		 ((zerop (call-process emacs nil buffer nil "-Q" "-L" "." "--batch"
				       "--eval" "(byte-recompile-directory \".\" 0 'force)")))
		 ((require 'elpaca))
		 ((elpaca-generate-autoloads "elpaca" repo)))
	    (progn (message "%s" (buffer-string)) (kill-buffer buffer))
	  (error "%s" (with-current-buffer buffer (buffer-string))))
      ((error) (warn "%s" err) (delete-directory repo 'recursive))))
  (unless (require 'elpaca-autoloads nil t)
    (require 'elpaca)
    (elpaca-generate-autoloads "elpaca" repo)
    (load "./elpaca-autoloads")))
(add-hook 'after-init-hook #'elpaca-process-queues)
(elpaca `(,@elpaca-order))

;; Block until current queue processed.
(elpaca-wait)

;; Install use-package support
(elpaca elpaca-use-package
  ;; Enable use-package :ensure support for Elpaca.
  (elpaca-use-package-mode))

;;Note this will cause the declaration to be interpreted immediately (not deferred).
;;Useful for configuring built-in emacs features.
(use-package emacs :ensure nil :config (setq ring-bell-function #'ignore))

;;;-------------------------------------------------------------------
;;; Lisp code not managed by elpaca
;;;-------------------------------------------------------------------
(add-to-list 'load-path "~/src/workbench/emacs.d/share")

;;; -------------------------------------------------------------------
;;;  global settings
;;; -------------------------------------------------------------------
(setq inhibit-startup-message t)
(setq line-number-mode t)
(setq column-number-mode t)
(global-font-lock-mode t)
(setq-default transient-mark-mode t)
(show-paren-mode t)                     ; show matching parentheses
(setq scroll-step 1)
(menu-bar-mode 0)
(tool-bar-mode 0)
(column-number-mode)
(setq ring-bell-function 'ignore)
(setq native-comp-async-report-warnings-errors nil)

;;; -------------------------------------------------------------------
;;  global keys
;;; -------------------------------------------------------------------
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-x C-b") 'electric-buffer-list)
(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key (kbd "C-c C-d") 'uncomment-region)

(global-set-key (kbd "<f7>") (lambda() (interactive)(load-theme "tango-light")))
(global-set-key (kbd "<f8>") (lambda() (interactive)(load-theme "tango-dark")))
(global-set-key (kbd "<f12>") (lambda() (interactive)(next-error)))

;; ;;;-------------------------------------------------------------------
;; ;;; modern times
;; ;;;-------------------------------------------------------------------

;; cleanup before loading a new theme
(defadvice load-theme (before clear-previous-themes activate)
  "Clear existing theme settings instead of layering them"
  (mapc #'disable-theme custom-enabled-themes))

;; (use-package dracula-theme  :ensure t)
;; (use-package tango-theme  :ensure t)

;;; ----------------------------------------------------------------------
;;; snippets
;;; ----------------------------------------------------------------------
;; (use-package yasnippet
;;   :ensure t
;;   :init
;;   :config
;;   (yas-load-directory "~/src/workbench/emacs.d/snippets")
;;   (yas-global-mode 1))

;;;-------------------------------------------------------------------
;;; coding
;;;-------------------------------------------------------------------
(set-language-environment "UTF-8")

;; Complain about trailing white spaces
(setq show-trailing-whitespace t
      whitespace-style '(face trailing lines tabs big-indent))

;; Cleanup whitespace before save
(add-hook 'before-save-hook 'whitespace-cleanup)

;; (use-package smartparens
;;   :ensure t
;;   :demand t
;;   :config
;;   (smartparens-global-mode t))

;; (use-package rainbow-delimiters
;;   :ensure t
;;   :demand t
;;   :hook (prog-mode . rainbow-delimiters-mode))

;; (use-package rainbow-mode
;;   :demand t
;;   :ensure t)

;; camelcase and other combinaison
;; (use-package string-inflection
;;   :ensure t
;;   :demand t
;;   :bind ("C-c i" . string-inflection-cycle))

(global-hl-line-mode t)

;; ;; always add line numbers
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'conf-mode-hook #'display-line-numbers-mode)

;; ;; indentation
(use-package highlight-indent-guides
  :ensure t
  :demand t
  :config
  (setq highlight-indent-guides-method 'character))

;;;-------------------------------------------------------------------
;;; autocomplete for python & others
;;;-------------------------------------------------------------------
(use-package auto-complete :ensure t :demand t)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (ac-config-default)

;;;-------------------------------------------------------------------
;;; perl mode
;;;-------------------------------------------------------------------
;; (use-package cperl-mode  :ensure t)
;; (setq cperl-hairy t)

;;;-------------------------------------------------------------------
;;; Misc-Modes
;;;-------------------------------------------------------------------
;; old modes
;; (use-package antlr-mode :ensure t)
;; (autoload 'cc-mode )
;; (use-package cc-mode :ensure t)
;; (use-package java-mode :ensure t)

;; replaced by web-mode
;; (use-package css-mode :ensure t)
;; (use-package sgml-mode :ensure t)
;; (use-package xml-mode :ensure t)
;; (use-package scss-mode :ensure t)

(use-package handlebars-mode :ensure t)

(use-package caml :ensure t)
(use-package erlang :ensure t)
(use-package php-mode :ensure t)
(use-package rust-mode :ensure t)
(use-package csv-mode :ensure t)
(use-package nginx-mode :ensure t)

;;;-------------------------------------------------------------------
;;; Auto-Mode-Alist
;;;-------------------------------------------------------------------
(setq-default auto-mode-alist
              '(
		("\\.inc$"      .       php-mode)
		("\\.php$"      .       php-mode)
		("\\.y$"        .       c-mode)
                ("\\.cc$"       .       c++-mode)
                ("\\.cpp$"      .       c++-mode)
                ("\\.cxx$"      .       c++-mode)
                ("\\.hxx$"      .       c++-mode)
                ("\\.hpp$"      .       c++-mode)
                ("\\.C$"        .       c++-mode)
                ("\\.H$"        .       c++-mode)
                ("\\.cc$"       .       c++-mode)
                ("\\.hh$"       .       c++-mode)
                ("\\.l$"        .       c-mode)
                ("\\.c$"        .       c-mode)
                ("\\.h$"        .       c-mode)
                ("\\.g$"        .       antlr-mode)
                ("\\.el$"       .       emacs-lisp-mode)
                ("\\.scm$"      .       scheme-mode)
                ("\\.ml$"       .       caml-mode)
                ("\\.mli$"      .       caml-mode)
                ("\\.tex$"      .       tex-mode)
                ("\\.sty$"      .       tex-mode)
                ("\\.bbl$"      .       tex-mode)
                ("\\.bib$"      .       bibtex-mode)
                ("\\.car$"      .       fortran-mode)
                ("\\.edt$"      .       fortran-mode)
                ("\\.f$"        .       fortran-mode)
                ("\\.f_[0-9]*$" .       fortran-mode)
                ("\\.ftn$"      .       fortran-mode)
                ("\\.F$"        .       fortran-mode)
                ("\\.inc$"      .       fortran-mode)
                ;; ("\\.vm$"       .       vm-mode)
                ("\\.awk$"      .       awk-mode)
		("[Mm]akefile$" .       makefile-mode)
		("[Mm]akefile.*.in$" .  makefile-mode)
		("[Mm]akefile.*.am$" .  makefile-mode)
		("GNUmakefile"  .       makefile-mode)
		("\\.mk$"       .       makefile-mode)
		("\\.md$"       .       markdown-mode)
		("\\.kumac$"    .       kumac-mode)
		("ChangeLog"    .       change-log-mode)
		("\\.html$"     .       html-mode)
		("\\.html.cpp$" .       html-mode)
		("\\.cpp$"      .       html-mode)
		("\\.xml$"      .       xml-mode)
		("\\.xsl$"      .       xml-mode)
		("\\.xsd$"      .       xml-mode)
		("\\.dcl$"      .       xml-mode)
		("\\.dec$"      .       xml-mode)
		("\\.dtd$"      .       xml-mode)
		("\\.ele$"      .       xml-mode)
		("\\.ent$"      .       xml-mode)
		("\\.mod$"      .       xml-mode)
		("\\.xul$"      .       xml-mode)
		("\\.rdf$"      .       xml-mode)
		("\\.wsdl$"     .       xml-mode)
		("\\.css$"      .       css-mode)
		("\\.mpl$"      .       maple-mode)
		("\\.m$"        .       octave-mode)
		("\\.tar$"      .       tar-mode)
		("\\.ad[abs]$"  .       ada-mode)
		("\\.lsp$"      .       lisp-mode)
		("\\.pas$"      .       pascal-mode)
		("\\.m4$"       .       m4-mode)
		("\\.mu$"       .       mupad-mode)
		("\\.pl$"       .       cperl-mode)
		("\\.pm$"       .       cperl-mode)
		("\\.java$"     .       java-mode)
		("\\.js$"       .       js-mode)
		("\\.json$"     .       json-mode)
		("\\.tcl$"      .       tcl-mode)
		("\\.ts$"       .       typescript-mode)
		("\\.sql$"      .       sql-mode)
		("\\.rb$"       .       ruby-mode)
		("\\.txt$"      .       text-mode)
		("\\.py$"       .       python-mode)
		("\\.hrl$"      .       erlang-mode)
		("\\.erl$"      .       erlang-mode)
		("\\.rs$"       .       rust-mode)
		("\\.yml$"      .       yml-mode)
                )
              )

;;;-------------------------------------------------------------------
;;; Web-Mode
;;;-------------------------------------------------------------------
(use-package web-mode
  :ensure t
  :mode (("\\.html?\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2
	web-mode-enable-auto-indentation nil
	web-mode-css-indent-offset 2
	web-mode-code-indent-offset 2
	web-mode-block-padding 2
	web-mode-comment-style 2
	web-mode-enable-css-colorization t
	web-mode-enable-auto-pairing t
	web-mode-enable-comment-keywords t
	web-mode-enable-current-element-highlight t
	web-mode-enable-current-column-highlight t
	web-mode-content-types-alist  '(("django" . "\\.tpl\\'")))
  :hook (web-mode . auto-rename-tag-mode))

;;; ----------------------------------------------------------------------
;;; javascrip: js2
;;; ----------------------------------------------------------------------
(use-package js2-mode :ensure t)

;;;-------------------------------------------------------------------
;;; SQL
;;;-------------------------------------------------------------------
(use-package sql-indent :ensure t)
(use-package sqlformat
  :ensure t
  :config
  (setq sqlformat-command 'pgformatter
	  sqlformat-args '("-s2" "-g"))
  :hook (sql-mode . sqlformat-on-save-mode)
  :bind (:map sql-mode-map ("C-c C-f" . sqlformat)))

;;;-------------------------------------------------------------------
;;; flycheck or flymake
;;;-------------------------------------------------------------------
(defvar my-excluded-directory-regexps
  '("datas/"))

;(defun my-flycheck-may-check-automatically (&rest _conditions)
;  (or (null buffer-file-name)
;      (let ((bufname (file-truename buffer-file-name)))
;        (not (seq-some (lambda (re) (string-match-p re bufname))
;                       my-excluded-directory-regexps)))))

;(add-hook 'after-init-hook #'global-flycheck-mode)

;(advice-add 'flycheck-may-check-automatically
;            :after-while #'my-flycheck-may-check-automatically)

; (flycheck-mode +1)

(use-package sideline-flymake
  :ensure t
  :hook (flymake-mode . sideline-mode)
  :init
  (setq sideline-flymake-display-errors-whole-line
	'point
	sideline-backends-right '(sideline-flymake)))

(use-package flymake-eslint
  :ensure t
  :functions flymake-eslint-enable
  :preface
  (defun flymake-eslint-enable-maybe ()
    "Enable flymake-eslint based on the project configuration.
 Search for the project ESLint configuration to determine whether the buffer
 should be checked."
    (when-let* ((root (locate-dominating-file (buffer-file-name) "package.json"))
		(rc (locate-file ".eslintrc" (list root) '(".js" ".json"))))
      (make-local-variable 'exec-path)
      (push (file-name-concat root "node_modules" ".bin") exec-path)
      (setq-local flymake-eslint-project-root root)
      (flymake-eslint-enable))))


;;; ----------------------------------------------------------------------
;;; lsp or eglot?
;;; ----------------------------------------------------------------------
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :ensure t
  :demand t
  :hook (
         (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

;; optionally if you want to use debugger
;;(use-package dap-mode
;;  :ensure t
;;  :demand t)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

(use-package lsp-pyright
  :ensure t
  :init
  (setq lsp-pyright-multi-root nil)
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))  ; or lsp-deferred


;; lsp UI
(use-package lsp-ui
  :ensure t
  :demand t
  :commands lsp-ui-mode)

(with-eval-after-load 'lsp-mode
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\measurements\\'")
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\.venv\\'")
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\venv\\'")
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\.cache\\'")
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\docs\\'")
  (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\build\\'")
  )

;;; ---------------------------------------------------------------------
;;; company
;;; ----------------------------------------------------------------------
(use-package company
      :ensure t
      :hook (prog-mode . company-mode)
      :config
      (setq company-minimum-prefix-length 2)
      ;; (global-company-mode)
      (global-set-key (kbd "C-TAB") #'company-indent-or-complete-common))

(setq company-tooltip-align-annotations t)

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

;;; ----------------------------------------------------------------------
;;; git
;;; ----------------------------------------------------------------------
(use-package magit :ensure t)
(use-package git-timemachine :ensure t)
(use-package blamer
  :ensure t
  :bind (("s-i" . blamer-show-commit-info)
	 ("s-n" . blamer-mode))
  :defer 20
  :custom
  (blamer-idle-time 0.3)
  (blamer-min-offset 10)
  :custom-face
  (blamer-face ((t :foreground "#9099AB"
		   :background unspecified
		   :height .9
		   :italic t))))


;;; ----------------------------------------------------------------------
;;; save history
;;; ----------------------------------------------------------------------
(use-package savehist
  :init
  (savehist-mode))

;;;-------------------------------------------------------------------
;;; markdown and grip
;;;-------------------------------------------------------------------
(use-package markdown-mode
  :ensure t
  :demand t)

;; (use-package grip-mode
;;   :ensure t
;;   :demand t)
;; (add-hook 'markdown-mode-hook #'grip-mode)

;; (use-package olivetti
;;   :ensure t
;;   :custom
;;   (olivetti-body-width 120)
;;   :config
;;   :hook ((markdown-mode . olivetti-mode)
;; 	 (org-mode . olivetti-mode)))

;;; ----------------------------------------------------------------------
;;; which-key
;;; ----------------------------------------------------------------------
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;;; ----------------------------------------------------------------------
;;; LLM
;;; ----------------------------------------------------------------------
;; (use-package ellama
;;   :ensure t
;;   :config
;;   (setopt ellama-language "English")
;;   (require 'llm-ollama)
;;   (setopt ellama-provider
;;                   (make-llm-ollama
;;                   :chat-model "mistral" :embedding-model "mistral")))

;;(use-package elisa
;;  :ensure (elisa
;;           :type git :host github
;;           :repo "s-kostyaev/elisa"))

;;; ----------------------------------------------------------------------
;;; projectile: not doing a lot for me
;;; ----------------------------------------------------------------------
;; (use-package projectile
;;   :ensure t
;;   :init
;;   (projectile-mode +1)
;;   :bind (:map projectile-mode-map
;;               ("s-p" . projectile-command-map)
;;               ("C-c p" . projectile-command-map))
;;   :config
;;   (setq projectile-indexing-method 'hybrid
;; 	projectile-sort-order 'recently-active
;; 	compilation-read-command nil
;; 	projectile-comint-mode t
;; 	projectile-project-search-path '("~/src/" "/work/polkadot"))

;;   (add-to-list 'projectile-globally-ignored-directories "node_modules")
;;   (add-to-list 'projectile-globally-ignored-directories "venv")

;;   :custom
;;   (projectile-globally-ignored-buffers '("*scratch*" "*lsp-log*" "*xref*" "*EGLOT" "*Messages*" "*compilation" "*vterm*" "*Flymake")))

;;; ----------------------------------------------------------------------
;;; completion section: someday I like it but that's too different from the standard emacs
;;; ----------------------------------------------------------------------
(use-package vertico
  :ensure t
  :init
  (vertico-mode 1)
  (require 'vertico-directory)
  (setq vertico-scoll-margin 0)
  (setq vertico-vertical-count 14)
  (setq vertico-cycle t))

(use-package consult
  :ensure t
  :bind
  ("S-C-s" . consult-line)
  :init
  (autoload 'projectile-project-root "~/src")
  )

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

;;; ----------------------------------------------------------------------
;;; dashboard: nice to have but could be removed
;;; ----------------------------------------------------------------------
;; (use-package dashboard
;;   :ensure t
;;   :config
;;   (add-hook 'elpaca-after-init-hook #'dashboard-insert-startupify-lists)
;;   (add-hook 'elpaca-after-init-hook #'dashboard-initialize)
;;   (dashboard-setup-startup-hook))

;; ;; Set the title
;; (setq dashboard-banner-logo-title "Bonjour Pierre")
;; ;; Set the banner
;; (setq dashboard-startup-banner "~/src/workbench/emacs.d/polkadot.txt")
;; (setq dashboard-center-content t)
;; (setq dashboard-vertically-center-content t)
;; (setq dashboard-items '((recents   . 10)
;; 			(projects  . 10)))
;; (setq dashboard-icon-type 'all-the-icons)
;; (setq dashboard-set-heading-icons t)
;; (setq dashboard-set-file-icons t)

;;; ----------------------------------------------------------------------
;;; compile: not too bad
;;; ----------------------------------------------------------------------
;; (use-package fancy-compilation
;;   :ensure t
;;   :defer 3
;;   :config
;;   (fancy-compilation-mode)
;;   :custom
;;   (fancy-compilation-scroll-output 'first-error))

;; ;
;; ----------------------------------------------------------------------
;;; elfeed: not that useful, gnus is better
;;; ----------------------------------------------------------------------
;; (use-package elfeed
;;   :ensure t
;;   :custom
;;   (elfeed-db-directory
;;    (expand-file-name "elfeed" user-emacs-directory))
;;   (elfeed-show-entry-switch 'display-buffer))

;; (setq elfeed-feeds
;;       '("https://www.audiosciencereview.com/forum/index.php?reviews/index.rss"
;; 	"https://www.audiosciencereview.com/forum/index.php?forums/speaker-reviews-measurements-and-discussion.54/index.rss"
;; 	))

;;; ----------------------------------------------------------------------
;;; custom
;;; ----------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("dcb1cc804b9adca583e4e65755895ba0a66ef82d29464cf89a78b88ddac6ca53" "603a831e0f2e466480cdc633ba37a0b1ae3c3e9a4e90183833bc4def3421a961" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
