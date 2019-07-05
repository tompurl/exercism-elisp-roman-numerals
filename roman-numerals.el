;;; roman-numerals.el --- roman-numerals Exercise (exercism)

;;; Commentary:

;;; Code:

(setq *roman-numerals/number-map*
      '((1000 . ?M)
        (500  . ?D)
        (100  . ?C)
        (50   . ?L)
        (10   . ?X)
        (5    . ?V)
        (1    . ?I)))

(setq *roman-numerals/special-arabic-numerals*
      '(1000 500 100 50 10 5 1))

(defun roman-numerals/divide-with-remainder (numerator denominator)
  "Return the quotient and remainder when dividing NUMERATOR by DENOMINATOR."
  (list
   (/ numerator denominator)
   (% numerator denominator)))

(defun roman-numerals/digit-to-rn (digit)
  "Convert a digit to its Roman Numeral equivalent"
  (if (> (car (divide-with-remainder digit 1000)) 0)
      (string (cdr (assoc 1000 *roman-numerals/number-map*))))
  )

(roman-numerals/digit-to-rn 3001)

(provide 'roman-numerals)
;;; roman-numerals.el ends here
