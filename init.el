(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline success warning error])
 '(ansi-color-names-vector
   ["#000000" "#a60000" "#005e00" "#813e00" "#0031a9" "#721045" "#00538b" "#ffffff"])
 '(awesome-tray-mode-line-active-color "#0031a9")
 '(awesome-tray-mode-line-inactive-color "#d7d7d7")
 '(custom-safe-themes
   '("d6844d1e698d76ef048a53cefe713dbbe3af43a1362de81cdd3aefa3711eae0d" "35c096aa0975d104688a9e59e28860f5af6bb4459fd692ed47557727848e6dfe" "b2e469761371525ebd5017bc3fc7816d4c052b05ec146bbe9593f7aa988711ba" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "076ee9f2c64746aac7994b697eb7dbde23ac22988d41ef31b714fc6478fee224" "2b502f6e3bf0cba42fe7bf83a000f2d358a7020a7780a8682fcfed0c9dbffb5f" "6fa878330926f7b021c214be11f15d3dc36b2f5969d8111fde27ba00ac016bbd" "95d0ed21bb0e919be7687a25ad59a1c2c8df78cbe98c9e369d44e65bfd65b167" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "0f7fa4835d02a927d7d738a0d2d464c38be079913f9d4aba9c97f054e67b8db9" "ddff22007104a1317014e48ff3d4911a83771a4ccf57185ccebf7f91339dbfb8" "191bc4e53173f13e9b827272fa39be59b7295a0593b9f070deb6cb7c3745fd1d" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "776c1ab52648f98893a2aa35af2afc43b8c11dd3194a052e0b2502acca02bfce" "998975856274957564b0ab8f4219300bca12a0f553d41c1438bbca065f298a29" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" "18cd5a0173772cdaee5522b79c444acbc85f9a06055ec54bb91491173bc90aaa" "7ea491e912d419e6d4be9a339876293fff5c8d13f6e84e9f75388063b5f794d6" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "8e439513e6954daa1e8c440cb67e2878497c77b18dadd030e09a1984b3314074" "387b487737860e18cbb92d83a42616a67c1edfd0664d521940e7fbf049c315ae" "816bacf37139d6204b761fea0d25f7f2f43b94affa14aa4598bce46157c160c2" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "2375374404692785c0ccbcaae3eca1f0bbcb7764c4f3f4f9d5bd0a4be7e8e0e0" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "d4131a682c4436bb5a61103d9a850bf788cbf793f3fd8897de520d20583aeb58" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" default))
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-theme-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-theme-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-theme-fringe-yellow))
 '(highlight-tail-colors '(("#aecf90" . 0) ("#c0efff" . 20)))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#70480f")
     ("TODO" . "#721045")
     ("NEXT" . "#5317ac")
     ("THEM" . "#8f0075")
     ("PROG" . "#00538b")
     ("OKAY" . "#30517f")
     ("DONT" . "#315b00")
     ("FAIL" . "#a60000")
     ("BUG" . "#a60000")
     ("DONE" . "#005e00")
     ("NOTE" . "#863927")
     ("KLUDGE" . "#813e00")
     ("HACK" . "#813e00")
     ("TEMP" . "#5f0000")
     ("FIXME" . "#a0132f")
     ("XXX+" . "#972500")
     ("REVIEW" . "#005a5f")
     ("DEPRECATED" . "#201f55")))
 '(ibuffer-deletion-face 'modus-theme-mark-del)
 '(ibuffer-filter-group-name-face 'modus-theme-mark-symbol)
 '(ibuffer-marked-face 'modus-theme-mark-sel)
 '(ibuffer-title-face 'modus-theme-pseudo-header)
 '(ivy-posframe-display-functions-alist
   '((swiper . ivy-posframe-display-at-window-bottom-left)
     (t . ivy-posframe-display)))
 '(ivy-posframe-style 'frame-center)
 '(ivy-rich-mode 1)
 '(org-agenda-files '("~/org/todo.org"))
 '(package-selected-packages
   '(poet-theme brutal-theme vertico-directory vertico-repeat tree-sitter-langs tree-sitter lsp-pyright corfu which-key evil-org-mode evil-org-agenda devdocs
                #("devdocs" 0 7
                  (escaped t))
                "devdocs" vertico gdscript-mode add-node-modules-path web-mode clojure-mode json-mode projectile lsp-mode dired-subtree counsel swiper company xterm-color wgrep org-superstar ob-async evil-org evil-surround evil exec-path-from-shell modus-themes unicode-fonts doom-themes ubuntu-theme elpy counsel-tramp pyvenv ace dracula-theme mini-frame orgit better-jumper highlight-parentheses esup dump-jump modus-operandi-theme shrface eww-lnum axe forge orderless embark-consult marginalia golden-ratio ivy-hydra hydra avy git-link sr-speedbar lsp-ivy vterm acme-theme cider olivetti centered-cursor-mode centered-window minimal-theme tao-theme zenburn-theme yaml-mode use-package restclient pyenv-mode org-projectile org-bullets linum-relative ivy-rich ivy-prescient ivy-posframe go-mode flycheck fish-completion evil-magit evil-leader evil-escape evil-collection eshell-prompt-extras esh-autosuggest ein eglot diminish dashboard counsel-projectile company-shell company-prescient company-posframe company-lsp))
 '(setcdr '(t . ivy-format-function-default) t)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#a60000")
     (40 . "#721045")
     (60 . "#8f0075")
     (80 . "#972500")
     (100 . "#813e00")
     (120 . "#70480f")
     (140 . "#5d3026")
     (160 . "#184034")
     (180 . "#005e00")
     (200 . "#315b00")
     (220 . "#005a5f")
     (240 . "#30517f")
     (260 . "#00538b")
     (280 . "#093060")
     (300 . "#0031a9")
     (320 . "#2544bb")
     (340 . "#0000c0")
     (360 . "#5317ac")))
 '(vc-annotate-very-old-color nil)
 '(warning-suppress-log-types
   '((use-package)
     (use-package)
     (use-package)
     (use-package)
     ((flycheck syntax-checker))
     ((flycheck syntax-checker))
     (comp)
     (lsp-mode)))
 '(warning-suppress-types
   '((use-package)
     (use-package)
     (use-package)
     ((flycheck syntax-checker))
     ((flycheck syntax-checker))
     (comp)
     (lsp-mode)))
 '(xterm-color-names
   ["#000000" "#a60000" "#005e00" "#813e00" "#0031a9" "#721045" "#00538b" "#f0f0f0"])
 '(xterm-color-names-bright
   ["#505050" "#972500" "#315b00" "#70480f" "#2544bb" "#8f0075" "#30517f" "#ffffff"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum-relative-current-face ((t :inherit linum :foreground "white" :weight bold)))
 '(org-level-1 ((t (:inherit outline-1 :height 1.2))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.15))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.1))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))
(put 'erase-buffer 'disabled nil)

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
