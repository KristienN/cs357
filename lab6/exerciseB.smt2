;Question 1
;(declare-fun x () Int)
;(declare-fun y () Int)
;(assert (= (+ (* 3 x) (* 2 y)) 2))
;(assert (= (- (* 5 x) (* 4 y)) 18))
;(check-sat)
;(get-model)

;Question 2
;(declare-fun x () Int)
;(declare-fun y () Int)
;(assert (= (+ (* 2 x) (* 3 y)) 7))
;(assert (= (+ (* 4 y) (* 6 x)) 15))
;(check-sat)
;(get-model)


;Question 3
;(declare-fun x () Int)
;(declare-fun y () Int)
;(assert (= (- (- x  y) 3) 0))
;(assert (= (+ (- (* 2 x) y) 2) 0))
;(check-sat)
;(get-model)