;Example 1
(declare-fun x () Int)
(declare-fun y () Int)
(assert (= (+ (* 2 x) (* 3 y)) 7))
(assert (= (+ y (* 4 x)) 9))
(check-sat)
(get-model)