#lang racket

#|
Reverse múltiple nivel: la función recibe una lista y regresa la lista con sus elementos
al revés, pero a cualquier nivel, es decir, si uno de los elementos de la lista es una
lista, dicha lista también se debe entregar al revés.
|#
(define (reverse-multiple lista)
  
  (if (null? lista)
          '()
          (if (list? (car lista))
              (append (reverse-multiple(cdr lista)) (list(reverse-multiple (car lista))))
              (append (reverse-multiple (cdr lista)) (list(car lista)) )
          )        
  )
   
)

;Palíndromo: la función recibe una lista de símbolos y regresa TRUE, si la lista es un palíndromo y FALSE en caso contrario.
(define (palindromo lista)
  (if (or (null? lista) (<= (length lista) 1) )
      #t
      (if (equal? (car lista) (car(reverse-multiple (cdr lista))))
          (palindromo (cdr(reverse-multiple (cdr lista) )) )
          #f
      )
   )
)

;Cuenta vocales: la función recibe una lista de caracteres y regresa el número de vocales que contiene.
(define (vocales lista)
  (if (null? lista)
      0
      (case (car lista)
        ['a (+ (vocales (cdr lista)) 1)]
        ['e (+ (vocales (cdr lista)) 1)]
        ['i (+ (vocales (cdr lista)) 1)]
        ['o (+ (vocales (cdr lista)) 1)]
        ['u (+ (vocales (cdr lista)) 1)]
        [else (vocales (cdr lista))]
       )
  )
)
(reverse-multiple '(1 2 3 (a b c) 4)) 
(palindromo '(a a b c b a a))
(palindromo '(a a b c c b a a))
(palindromo '(a a b c c a a))
(vocales '(1 a 2 b c % e 4 u))
