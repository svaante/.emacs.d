;;; -*- lexical-binding:t -*-

;; Fix eshell directory/executable completion

(defun eshell--pcomplete-executables ()
  "Complete amongs a list of directories and executables.

Wrapper for `pcomplete-executables' or `pcomplete-dirs-or-entries',
depending on the value of `eshell-force-execution'.

Adds path prefix to candidates independent of `action' value."
  ;; `pcomplete-entries' returns filenames without path on `action' t
  ;; use current string directory as done in `completion-file-name-table'
  ;; when `action' is nil to construct executable candidates.
  (let* ((table (if eshell-force-execution
                    (pcomplete-dirs-or-entries nil #'file-readable-p)
                  (pcomplete-executables))))
    (lambda (string pred action)
      (let ((cands (funcall table string pred action)))
        (if (eq action t)
            (let ((specdir (file-name-directory string)))
              (mapcar
               (lambda (cand)
                 (if (stringp cand)
                     (concat specdir cand)
                   cand))
               cands))
          cands)))))

(defun eshell--complete-commands-list ()
  "Generate list of applicable, visible commands."
  ;; Building the commands list can take quite a while, especially over Tramp
  ;; (bug#41423), so do it lazily.
  (let ((glob-name
	 ;; When a command is specified using `eshell-explicit-command-char',
         ;; that char is not part of the command and hence not part of what
         ;; we complete.  Adjust `pcomplete-stub' accordingly!
	 (if (and (> (length pcomplete-stub) 0)
	          (eq (aref pcomplete-stub 0) eshell-explicit-command-char))
	     (setq pcomplete-stub (substring pcomplete-stub 1)))))
    (completion-table-dynamic
     (lambda (filename)
       (if (file-name-directory filename)
           (eshell--pcomplete-executables)
	 (let* ((paths (eshell-get-path))
		(cwd (file-name-as-directory
		      (expand-file-name default-directory)))
		(filepath "") (completions ()))
	   ;; Go thru each path in the search path, finding completions.
	   (dolist (path paths)
	     (setq path (file-name-as-directory
		         (expand-file-name (or path "."))))
	     ;; Go thru each completion found, to see whether it should
	     ;; be used.
	     (dolist (file (and (file-accessible-directory-p path)
		                (file-name-all-completions filename path)))
	       (setq filepath (concat path file))
	       (if (and (not (member file completions)) ;
			(or (string-equal path cwd)
			    (not (file-directory-p filepath)))
			;; FIXME: Those repeated file tests end up
			;; very costly over Tramp, we should cache the result.
			(if eshell-force-execution
                            (file-readable-p filepath)
                          (file-executable-p filepath)))
		   (push file completions))))
	   ;; Add aliases which are currently visible, and Lisp functions.
	   (pcomplete-uniquify-list
	    (if glob-name
	        completions
	      (setq completions
		    (append (if (fboundp 'eshell-alias-completions)
			        (eshell-alias-completions filename))
			    (eshell-winnow-list
			     (mapcar
                              (lambda (name)
                                (substring name 7))
			      (all-completions (concat "eshell/" filename)
					       obarray #'functionp))
			     nil '(eshell-find-alias-function))
			    completions))
	      (append (and (or eshell-show-lisp-completions
			       (and eshell-show-lisp-alternatives
				    (null completions)))
			   (all-completions filename obarray #'functionp))
		      completions)))))))))

(provide 'em-cmpl-fix)
