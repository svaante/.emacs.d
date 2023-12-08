(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(connection-local-criteria-alist
   '(((:application tramp :protocol "flatpak")
      tramp-container-connection-local-default-flatpak-profile)
     ((:application tramp :machine "localhost")
      tramp-connection-local-darwin-ps-profile)
     ((:application tramp :machine "Daniels-Air")
      tramp-connection-local-darwin-ps-profile)
     ((:application tramp)
      tramp-connection-local-default-system-profile tramp-connection-local-default-shell-profile)
     ((:application eshell)
      eshell-connection-default-profile)))
 '(connection-local-profile-alist
   '((tramp-container-connection-local-default-flatpak-profile
      (tramp-remote-path "/app/bin" tramp-default-remote-path "/bin" "/usr/bin" "/sbin" "/usr/sbin" "/usr/local/bin" "/usr/local/sbin" "/local/bin" "/local/freeware/bin" "/local/gnu/bin" "/usr/freeware/bin" "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin" "/opt/sbin" "/opt/local/bin"))
     (tramp-connection-local-darwin-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o" "pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state=abcde" "-o" "ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (euid . number)
       (user . string)
       (egid . number)
       (comm . 52)
       (state . 5)
       (ppid . number)
       (pgrp . number)
       (sess . number)
       (ttname . string)
       (tpgid . number)
       (minflt . number)
       (majflt . number)
       (time . tramp-ps-time)
       (pri . number)
       (nice . number)
       (vsize . number)
       (rss . number)
       (etime . tramp-ps-time)
       (pcpu . number)
       (pmem . number)
       (args)))
     (tramp-connection-local-busybox-ps-profile
      (tramp-process-attributes-ps-args "-o" "pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "stat=abcde" "-o" "ppid,pgid,tty,time,nice,etime,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (user . string)
       (group . string)
       (comm . 52)
       (state . 5)
       (ppid . number)
       (pgrp . number)
       (ttname . string)
       (time . tramp-ps-time)
       (nice . number)
       (etime . tramp-ps-time)
       (args)))
     (tramp-connection-local-bsd-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o" "pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" "-o" "state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
      (tramp-process-attributes-ps-format
       (pid . number)
       (euid . number)
       (user . string)
       (egid . number)
       (group . string)
       (comm . 52)
       (state . string)
       (ppid . number)
       (pgrp . number)
       (sess . number)
       (ttname . string)
       (tpgid . number)
       (minflt . number)
       (majflt . number)
       (time . tramp-ps-time)
       (pri . number)
       (nice . number)
       (vsize . number)
       (rss . number)
       (etime . number)
       (pcpu . number)
       (pmem . number)
       (args)))
     (tramp-connection-local-default-shell-profile
      (shell-file-name . "/bin/sh")
      (shell-command-switch . "-c"))
     (tramp-connection-local-default-system-profile
      (path-separator . ":")
      (null-device . "/dev/null"))
     (eshell-connection-default-profile
      (eshell-path-env-list))))
 '(safe-local-variable-values
   '((dape-configs quote
                   ((cmp-main modes
                              (c-mode c-ts-mode c++-mode c++-ts-mode rust-ts-mode rust-mode)
                              command "~/.vscode/extensions/vadimcn.vscode-lldb-1.9.2/adapter/codelldb" host "localhost" port 8080 command-args
                              ("--port" "8080")
                              :type "lldb" :request "launch" :cwd "/Users/dpettersson/Workspace/c_test/" :program "/Users/dpettersson/Workspace/c_test/a.out" compile "gcc -g main.c")))
     (eval add-to-list 'dape-configs
           '(compile-main modes
                          (c-mode c-ts-mode c++-mode c++-ts-mode rust-ts-mode rust-mode)
                          command "~/.vscode/extensions/vadimcn.vscode-lldb-1.9.2/adapter/codelldb" host "localhost" port 8080 command-args
                          ("--port" "8080")
                          :type "lldb" :request "launch" :cwd "/Users/dpettersson/Workspace/c_test/" :program "/Users/dpettersson/Workspace/c_test/a.out" compile "gcc -g main.c"))
     (eval add-to-list 'dape-configs
           '(dape modes
                  (c-mode c-ts-mode c++-mode c++-ts-mode rust-ts-mode rust-mode)
                  command "~/.vscode/extensions/vadimcn.vscode-lldb-1.9.2/adapter/codelldb" host "localhost" port 8080 command-args
                  ("--port" "8080")
                  :type "lldb" :request "launch" :cwd "/Users/dpettersson/Workspace/c_test/" :program "/Users/dpettersson/Workspace/c_test/a.out" compile "gcc -g main.c"))
     (eval add-to-list 'dape-configs
           '(dsadas modes
                    (c-mode c-ts-mode c++-mode c++-ts-mode rust-ts-mode rust-mode)
                    command "~/.vscode/extensions/vadimcn.vscode-lldb-1.9.2/adapter/codelldb" host "localhost" port 8080 command-args
                    ("--port" "8080")
                    :type "lldb" :request "launch" :cwd "/Users/dpettersson/Workspace/c_test/" :program "/Users/dpettersson/Workspace/c_test/a.out" compile "gcc -g main.c"))
     (eval add-to-list 'dape-configs
           '(asdadada2 modes
                       (c-mode c-ts-mode c++-mode c++-ts-mode rust-ts-mode rust-mode)
                       command "~/.vscode/extensions/vadimcn.vscode-lldb-1.9.2/adapter/codelldb" host "localhost" port 8080 command-args
                       ("--port" "8080")
                       :type "lldb" :request "launch" :cwd "/Users/dpettersson/Workspace/c_test/" :program "/Users/dpettersson/Workspace/c_test/a.out" compile "gcc -g main.c"))
     (eval add-to-list 'dape-configs
           '(cmp-main modes
                      (c-mode c-ts-mode c++-mode c++-ts-mode rust-ts-mode rust-mode)
                      command "~/.vscode/extensions/vadimcn.vscode-lldb-1.9.2/adapter/codelldb" host "localhost" port 8080 command-args
                      ("--port" "8080")
                      :type "lldb" :request "launch" :cwd "/Users/dpettersson/Workspace/c_test/" :program "/Users/dpettersson/Workspace/c_test/a.out" compile "gcc -g main.c"))
     (eval add-to-list 'dape-configs
           '(compile-and-run modes
                             (c-mode c-ts-mode c++-mode c++-ts-mode rust-ts-mode rust-mode)
                             command "~/.vscode/extensions/vadimcn.vscode-lldb-1.9.2/adapter/codelldb" host "localhost" port 8080 command-args
                             ("--port" "8080")
                             :type "lldb" :request "launch" :cwd "/Users/dpettersson/Workspace/c_test/" :program "/Users/dpettersson/Workspace/c_test/a.out" compile "gcc -g main.c"))
     (eval add-to-list 'dape-configs
           '(run-main modes
                      (python-ts-mode python-mode)
                      command "python3" command-args
                      ("-m" "debugpy.adapter")
                      :type "executable" :request "launch" :cwd "/Users/dpettersson/Workspace/python-dap-test/" :program "/Users/dpettersson/Workspace/python-dap-test/main.py"))
     (magit-todos-exclude-globs)
     (diff-add-log-use-relative-names . t)
     (vc-git-annotate-switches . "-w")))
 '(send-mail-function 'smtpmail-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.2))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.15))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.1)))))
