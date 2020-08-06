(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; Initialise the packages, avoiding a re-initialisation.
(unless (bound-and-true-p package--initialized)
  (setq package-enable-at-startup nil)
  (package-initialize))

;; Make sure `use-package' is available.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Configure `use-package' prior to loading it.
(eval-and-compile
  (setq use-package-always-ensure nil)
  (setq use-package-always-defer nil)
  (setq use-package-always-demand nil)
  (setq use-package-expand-minimally nil)
  (setq use-package-enable-imenu-support t))

(eval-when-compile
  (require 'use-package))

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("816bacf37139d6204b761fea0d25f7f2f43b94affa14aa4598bce46157c160c2" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "2375374404692785c0ccbcaae3eca1f0bbcb7764c4f3f4f9d5bd0a4be7e8e0e0" "4780d7ce6e5491e2c1190082f7fe0f812707fc77455616ab6f8b38e796cbffa9" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "d4131a682c4436bb5a61103d9a850bf788cbf793f3fd8897de520d20583aeb58" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" default))
 '(ivy-posframe-display-functions-alist
   '((swiper . ivy-posframe-display-at-window-bottom-left)
     (t . ivy-posframe-display)))
 '(ivy-posframe-style 'frame-center)
 '(ivy-rich-mode 1)
 '(package-selected-packages
   '(cider olivetti centered-cursor-mode centered-window minimal-theme tao-theme zenburn-theme yaml-mode use-package restclient pyenv-mode org-projectile org-bullets linum-relative ivy-rich ivy-prescient ivy-posframe go-mode flycheck fish-completion evil-magit evil-leader evil-escape evil-collection eshell-prompt-extras esh-autosuggest ein eglot diminish dashboard counsel-projectile company-shell company-prescient company-posframe company-lsp))
 '(setcdr '(t . ivy-format-function-default) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
