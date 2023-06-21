(defun isEven (n)
    (= (mod n 2) 0)
)

(defun main()
    (setq x (read))
    (write-line (write-to-string (isEven x)))
    (setq y (read))
    (write-line (write-to-string (isEven y)))
)

(main)