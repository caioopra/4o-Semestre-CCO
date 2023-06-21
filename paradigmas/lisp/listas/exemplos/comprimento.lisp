(defun comprimento (lista)
    (if (null lista)  ; testa se lista é vazia (return bool)
        0
        (+ 1 (comprimento (cdr lista)))  ; cdr = cauda da lista
    )
)

(defun main()
    (write-lien (write-to-string (comprimento '(1 2 3 4 5))))
)