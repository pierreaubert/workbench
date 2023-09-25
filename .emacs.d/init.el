;;; paub-init --- initialisation for .emacs -*- emacs-lisp -*-
;;; Commentary:
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
;;;  23 Dec 99 :  add C-² binding to mimic traditional next-error on
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

;(setq debug-on-error t)
;(add-hook 'after-init-hook
;	  '(lambda () (setq debug-on-error t)))
;(debug-on-entry 'command-line-1)
;(setq message-log-max 1000)

;;;-------------------------------------------------------------------
;;; Code:
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/share/emacs")

;;;-------------------------------------------------------------------
;;; autocomplete for python & others
;;;-------------------------------------------------------------------
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;;-------------------------------------------------------------------
;;; perl mode
;;;-------------------------------------------------------------------
(autoload 'cperl-mode  "cperl-mode"  "Cperl major mode." t)
; (setq cperl-hairy t)

;;;-------------------------------------------------------------------
;;; markdown and grip
;;;-------------------------------------------------------------------
(autoload 'markdown-mode "markdown"  "Major mode to edit Markdown files." t)
(autoload 'grip-mode "markdown"  "Minor mode to edit Markdown files." t)
(add-hook 'markdown-mode-hook #'grip-mode)

;;;-------------------------------------------------------------------
;;; Misc-Modes
;;;-------------------------------------------------------------------
(autoload 'antlr-mode  "antlr-mode"  "ANTLR major mode." t)
(autoload 'awk-mode    "cc-mode"     "AWK Editing Mode." t)
(autoload 'c++-mode    "cc-mode"     "C++ Editing Mode." t)
(autoload 'c-mode      "cc-mode"     "C Editing Mode." t)
(autoload 'css-mode    "css-mode"    "Major mode to edit CSS files." t)
(autoload 'erlang-mode "erlang"      "Major mode to edit Erlang files." t)
(autoload 'java-mode   "cc-mode"     "Java Editing Mode." t)
(autoload 'php-mode    "php-mode"    "PHP major mode." t)
(autoload 'rust-mode   "rust-mode"   "Rust major mode" t)
(autoload 'sgml-mode   "psgml"       "Major mode to edit SGML files." t)
(autoload 'xml-mode    "psgml"       "Major mode to edit XML files." t)

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
		; ("\\.js$"       .       js2-mode) ; 
		("\\.tcl$"      .       tcl-mode) 
		("\\.ts$"       .       typescript-mode) 
		("\\.sql$"      .       sql-mode) 
		("\\.rb$"       .       ruby-mode) 
		("\\.txt$"      .       text-mode) 
		("\\.py$"       .       python-mode) 
		("\\.hrl$"      .       erlang-mode) 
		("\\.erl$"      .       erlang-mode) 
		("\\.rs$"       .       rust-mode) 
                )
              )

;;; ----------------------------------------------------------------------
;;; javascrip: js2
;;; ----------------------------------------------------------------------
(require 'js2-mode)
(require 'js2-refactor)
(require 'tide)
(require 'web-mode)
(require 'compile)
(require 'add-node-modules-path)

(custom-set-default 'js-indent-level 4)
(custom-set-default 'js2-basic-offset 4)

(js2r-add-keybindings-with-prefix "C-c C-r")

(add-to-list 'auto-mode-alist '("\\.js\\'"    . js2-mode))

;;;-------------------------------------------------------------------
;;; flycheck
;;;-------------------------------------------------------------------
;(defvar my-excluded-directory-regexps
;  '("datas/"))

;(defun my-flycheck-may-check-automatically (&rest _conditions)
;  (or (null buffer-file-name)
;      (let ((bufname (file-truename buffer-file-name)))
;        (not (seq-some (lambda (re) (string-match-p re bufname))
;                       my-excluded-directory-regexps)))))

;(add-hook 'after-init-hook #'global-flycheck-mode)

;(advice-add 'flycheck-may-check-automatically
;            :after-while #'my-flycheck-may-check-automatically)

;(flycheck-mode +1)


;;; ----------------------------------------------------------------------
;;; tree sitter
;;; ----------------------------------------------------------------------
(use-package tree-sitter
  :ensure t
  :config
  ;; activate tree-sitter on any buffer containing code for which it has a parser available
  (global-tree-sitter-mode)
  ;; you can easily see the difference tree-sitter-hl-mode makes for python, ts or tsx
  ;; by switching on and off
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter)

;;; ----------------------------------------------------------------------
;;; lsp or eglot? 
;;; ----------------------------------------------------------------------
(require 'lsp-mode)
(require 'lsp-ui)
(require 'lsp-treemacs)
(lsp-treemacs-sync-mode 1)

;(use-package eglot
;  :ensure t)

;;; ----------------------------------------------------------------------
;;; custom
;;; ----------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custo.m
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   '("b7ac122aab56d19cf9049a99b919356609deb3b46bfd67f911b35f775660d714" "3bd9497fb8f39c28ab58a9e957152ba2dc41223c23c5520ef10fc7bd6b222384" "24cb1b9c182198f52df7cebf378ee9ecca93a2daeb9a90049a2f1f556119c742" "9372085daf286af2f75bf00f03f4403d213a843e649c5195cf325fe64a7bee82" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "78cfbd96775588c06c4fff22573aaa5fa762ca2b8eda43cb964b7739194ed3c1" "3c708b84612872e720796ea1b069cf3c8b3e909a2e1da04131f40e307605b7f9" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" default))
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(tree-sitter-langs tss typescript-mode cython-mode frontside-javascript web-mode web company tide ac-js2 flow-js2-mode flow-minor-mode js2-highlight-vars rust-mode flycheck-checkbashisms flycheck-clang-analyzer flycheck-css-colorguard flycheck-cstyle flycheck-cython flycheck-golangci-lint flycheck-indent flycheck-indicator flycheck-ini-pyinilint flycheck-julia flycheck-kotlin flycheck-mypy flycheck-pyre flycheck-rust flycheck-pyflakes markdown-changelog markdown-mode grip-mode pungi python-pytest python-mode pytest pylint pyimport pydoc-info pydoc pycoverage json-mode jedi indium google-contacts go-imports go-guru github-stars github-search github-review git-command flymake-eslint flymake-cppcheck ein-mumamo dired-rsync dired-git dashboard-project-status company-web company-shell company-math company-lua company-jedi company-go company-flow company-ctags company-bibtex company-auctex company-ansible browse-at-remote bind-key apache-mode ansible-vault ansible))
 '(safe-local-variable-values '((flycheck-checker . javascript-standar)))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(text-mode-hook
   '(turn-on-auto-fill
     (lambda nil
       (setq require-final-newline t)
       (turn-on-auto-fill))))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
