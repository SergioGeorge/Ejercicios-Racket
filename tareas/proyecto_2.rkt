

#lang racket

#|
Hacer las siguientes tres funciones recursivas:

Reverse múltiple nivel: la función recibe una lista y regresa la lista con sus elementos al revés, pero a cualquier nivel, es decir, si uno de los elementos de la lista es una lista, dicha lista también se debe entregar al revés.
Palíndromo: la función recibe una lista de símbolos y regresa TRUE, si la lista es un palíndromo y FALSE en caso contrario.
Cuenta vocales: la función recibe una lista de caracteres y regresa el número de vocales que contiene.

|#

;(define f '(3 4 5))

#|(define (reverse-multiple l)

  (if (null? l)
          '()
          (if (list? (car l))
              (append (cdr l) (list(reverse-multiple (car l))))
              (append (reverse-multiple (cdr l)) (list(car l)) )
          )
          
  )
   
)|#

(define (reverse-multiple l)

  (if (null? l)
          '()
          (if (list? (car l))
              (append (reverse-multiple(cdr l)) (list(reverse-multiple (car l))))
              (append (reverse-multiple (cdr l)) (list(car l)) )
          )
          
  )
   
)

;(reverse-multiple '(5 (12 78 34) 23 67 3 (7 9 8)))

(define l '(5 (3 4) 7)
  )

;(list? '())


(define (palindromo lista)
  (if (or (null? lista) (<= (length lista) 1) )
      #t
      (if (equal? (car lista) (car(reverse (cdr lista))))
          (palindromo (cdr(reverse (cdr lista) )) )
          #f
      )
   )
)

(palindromo '(a a b c b a a))
(palindromo '(a a b c c b a a))
(palindromo '(a a b c x t c b a a))