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

(defun to-roman (arabic-numeral)
  "Convert ARABIC-NUMERAL to its Roman numeral equivalent."
  (unless (= 0 arabic-numeral)
    ))

(defun roman-numerals/get-highest-single-char-roman-numeral (arabic-numeral)
  "Determine the largest single-character roman numeral that is <= ARABIC-NUMERAL and return that and its arabic equivalent."
  (unless (= 0 arabic-numeral)  ;; Caesar sez, what's a 0?
    (assq
     (seq-find (lambda (x) (> arabic-numeral x)) *roman-numerals/special-arabic-numerals*)
     *roman-numerals/number-map*)))

(provide 'roman-numerals)
;;; roman-numerals.el ends here
