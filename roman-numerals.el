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

(defun to-roman (arabic-numeral)
  "Convert ARABIC-NUMERAL to its Roman numeral equivalent."
  (unless (= 0 arabic-numeral)
    (let ((floor-cell (roman-numerals/number-map-floor arabic-numeral)))
      (concat
       (cdr floor-cell)
       (to-roman (- arabic-numeral (car floor-cell)))))))

(defun roman-numerals/number-map-floor (arabic-numeral)
  "Find the largest number in number-map that is <= ARABIC-NUMERAL and return the related cons cell."
  (unless (= 0 arabic-numeral) ;; Caesar sez, what's a 0?
    (let ((special-arabic-numerals (mapcar 'car *roman-numerals/number-map*)))
      (assq
       (seq-find (lambda (x) (>= arabic-numeral x)) special-arabic-numerals)
       *roman-numerals/number-map*))))

(provide 'roman-numerals)
;;; roman-numerals.el ends here
