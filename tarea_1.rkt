#lang racket

#|
 Hacer una función llamada fecha, que reciba 3 números como parámetros, correspondientes a día, mes y año,
 y regrese la fecha del día siguiente. Su encabezado será:(define (fecha d m a) ... )
|#
;Condiciones para el año bisiesto
;el año:
;p es divisible entre 4
;q es divisible entre 100
;r es divisible entre 400
; p & (!q | r)
(define (isLeapYear year)
  (if (and (= (modulo year 4) 0) (or (not (equal? (modulo year 100) 0)) (equal? (modulo year 400) 0)))
      29
      28
   )
)

(define (getLimitDay m y)
  (if (<= m 7);Primeros 7 meses del año [Enero-Julio]
      (cond
        [(= m 2) (isLeapYear y)]
        [(= (modulo m 2) 0) 30];meses que su ultimo día(limite) es el 30 entre Enero-Julio
        [else 31];meses que su ultimo día(limite) es el 31 entre Enero-Julio
        )
       ;Ultimos 5 meses del año [Agosto-Diciembre]
       (if (= (modulo m 2) 0);meses que su ultimo día(limite) es el 31 entre Agosto-Diciembre
           31
           30;meses que su ultimo día(limite) es el 30 entre Agosto-Diciembre
      )
   )
 
)
(define (buildDate d m y)
   (list d m y)
  )

(define (incrementMonth m y)
    (if (< m 12)
        (buildDate 1 (+ m 1) y)
        (buildDate 1 1 (+ y 1));Si el més es igual a 12 establecemos el mes como 1
    ) 
)

(define (incrementDay d m y)
    (if (< d (getLimitDay m y));Obtenemos el último dia del mes en función del año
        (buildDate (+ d 1) m y)
        (incrementMonth m y);Si el día es igual al día límite del mes, incrementamos en uno el mes
    )
)


(define (fecha d m a)
  (incrementDay d m a)
)