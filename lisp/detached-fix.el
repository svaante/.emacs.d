(defun detached--generate-buffer (name reuse-p &optional number)
  "Reuse or generate new buffer like built-in function `generate-new-buffer'.
NAME is used the same way as `generate-new-buffer' but if a buffer which
REUSE-P for buffer returns nil, return buffer instead.

NUMBER is used internaly for recursive calls, but can be used to start searching
at NUMBER offset."
  (let* ((buffer-name (if number
                          (format "%s<%d>" name number)
                        name))
         (buffer (get-buffer buffer-name))
         (number (or number 1)))
    (if (and buffer (not (funcall reuse-p buffer)))
        (detached--generate-buffer name reuse-p (1+ number))
      (get-buffer-create buffer-name))))

;;;###autoload
(defun detached-start-session (command &optional suppress-output)
  "Start a `detached' session running COMMAND.

Optionally SUPPRESS-OUTPUT."
  (let ((inhibit-message t)
        (detached-enabled t))
    (if-let ((run-in-background
              (or suppress-output
                  (eq detached-session-mode 'create)))
             (detached-session-mode 'create))
        (let ((detached--current-session
               (or detached--current-session
                   (detached-create-session command))))
          (setq detached-enabled nil)
          (if detached-local-session
              (apply #'start-process-shell-command
                     `("detached" nil ,(detached--dtach-command detached--current-session t)))
            (apply #'start-file-process-shell-command
                   `("detached" nil ,(detached--dtach-command detached--current-session t)))))
      (cl-letf* ((detached-session-mode 'create-and-attach)
                 (detached--current-session
                  (or detached--current-session
                      (detached-create-session command)))
                 ((symbol-function #'set-process-sentinel) #'ignore)
                 (buffer (detached--generate-buffer detached--shell-command-buffer
                                                    (lambda (buffer)
                                                      (not (get-buffer-process buffer)))))
                 (command (detached--shell-command detached--current-session t)))
        (setq detached-enabled nil)
        (funcall #'async-shell-command command buffer)
        (with-current-buffer buffer
          (setq detached--buffer-session detached--current-session))))))

(provide 'detached-fix)
