#lang racket

(define (average a b c)
  (/ (+ a b c) 3)
 )

#|
 Hacer una función que reciba 3 calificaciones y nos
 regrese un stringdiciendo  “aprobado” o “reprobado”,
 de acuerdo a su promedio (< 70, reprobado).
|#

(define (calificaciones a b c)
  (if(>= (average a b c) 70)
     "Aprobado"
     "Reprobado"
     )
 )

#|
 Hacer una función que reciba un año y nos diga si es bisiesto
 o no (se debe  investigar la función adecuada). 
|#

(define (bisiesto age)
  (if (= (modulo age 4) 0)
         "Es Bisisesto"
         "No es Bisisesto"
   )  
)

#|
 Hacer una función que reciba 3 números y nos regrese
 el mayor de los 3 (extraño la  asignación). 
|#

(define (whoIsMax a b c)
  (if (> a b)
      (if (> a c)
          "A es mayor"
          "C es mayor"
       )
      (if (> b c)
          "B es mayor"
          "C es mayor"
      )
  )
)

#|
 Hacer una función que reciba una lista de 3 números y
 nos regrese la lista ordenada  (y los ciclos también los extraño).
|#
;'(5 3 1)
#|(define (sortList a)
   ;if(5 > 3)
   (if (> (car a)(car (cdr a)))
       
       (append (list (car (cdr a))) (list (car a))) ;(cons 3 (9 8))
       "nothing"
    )
)|#

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

(define (dummyFunc a)
  (if (= (maxNumberOfList a) (car a))
      (cdr a)
      (if )
  )
)
  
  
  
 