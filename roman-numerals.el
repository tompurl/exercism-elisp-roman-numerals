;;; roman-numerals.el --- roman-numerals Exercise (exercism)

;;; Commentary:

;;; Code:

(defvar *roman-numerals/number-map*
      '((1000 . "M")
        (900  . "CM")
        (500  . "D")
        (400  . "CD")
        (100  . "C")
        (90   . "XC")
        (50   . "L")
        (40   . "XL")
        (10   . "X")
        (9    . "IX")
        (5    . "V")
        (4    . "IV")
        (1    . "I")))

<<<<<<< HEAD
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
