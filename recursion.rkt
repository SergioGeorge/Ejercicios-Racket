#lang racket

#|
 Realiza un programa que calcule el factorial
|#

(define (fact num)
  (cond
    [(equal? num 0) 1]
    [else (* num (fact (- num 1)))]
    )
)


#|
 Hacer una función que reciba una lista de 3 números y
 nos regrese la lista ordenada  (y los ciclos también los extraño).
|#
;'(5 3 1)

;Función que devuelve el número más grande de la lista
(define (maxNumberOfList a)
  (if (> (car a)(car (cdr a)));5 > 3  a > b
      (if (> (car a) (car(reverse a)));5 > 1 a > c
          (list (car a))
          (list car(reverse a))
       )
      (if (> (car (cdr a)) (car(reverse a)));3 > 1  b > c
          (list (car (cdr a)))
          (list (car(reverse a)))
      )
  )
)


