#lang racket
(define EMPLOYEES
  '((tom 33 cs 85000.00)
    (joan 23 ece 110000.00)
    (bill 29 cs 69500.00)
    (john 28 me 58200.00)
    (sue 19 cs 22000.00)
    ))
(define CS-Employees'((tom 33 cs 85000.00) (bill 29 cs 69500.00) (sue 19 cs 22000.00)))

(define list1 '(tom 33 cs 85000.00))
(define list2 '(joan 23 ece 110000.00))
(define list3 ' (bill 29 cs 69500.00))
(define list4 ' (john 28 me 58200.00))
(define list5 ' (sue 19 cs 22000.00))


  (define (member? u lst)
  (not (equal? (member u lst) #f )))

(member? list1 CS-Employees)
display list1
(member? list2 CS-Employees)
display list2
(member? list3 CS-Employees) 
display list3
(member? list4 CS-Employees)
display list4
(member? list5 CS-Employees)
display list5

(define listname1 '(tom))
(define listname2 '(joan))
(define listname3 ' (bill))
(define listname4 ' (john))
(define listname5 ' (sue))

 
(member? list1 CS-Employees)
display list1 listname1
(member? list2 CS-Employees)
display list2 listname2
(member? list3 CS-Employees) 
display list3 listname3
(member? list4 CS-Employees)
display list4 listname4
(member? list5 CS-Employees)
display list5 listname5



(define (reduce f acc ls)
  (if (null? ls)
      acc
      (reduce f (f acc (car ls)) (cdr ls) )
  ))

(reduce + 0 '(85000 110000 69500 58200 22000))


(map car '((tom 33 cs 85000.00)
    (bill 29 cs 69500.00)
    (sue 19 cs 22000.00)
    ))
andmap (cdr
( filter number? '(tom 33 cs 85000.00)))andmap (cdr
 ( filter number? ' (bill 29 cs 69500.00)))andmap (cdr
  ( filter number? ' (sue 19 cs 22000.00)))

(foldl / 5 '(85000 110000 69500 58200 22000))
