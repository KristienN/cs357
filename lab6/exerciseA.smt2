;Question 1
;(declare-fun A() Bool)
;(declare-fun B() Bool)
;(assert (not (= (or (not A) B) (=> A B))))
;(check-sat)
;(get-model)

;Question 2
;(declare-fun A() Bool)
;(declare-fun B() Bool)
;(assert (not (=> A B (=> (not B) (not A)))))
;(check-sat)
;(get-model)

;Question 3
;(declare-fun A() Bool)
;(declare-fun B() Bool)
;(declare-fun C() Bool)
;(assert (not (= (and A B) (=> C A) (=> B C))))
;(check-sat)
;(get-model)

;Question 4
;(declare-fun E() Bool)
;(declare-fun F() Bool)
;(assert (not (= (and (not E) (not F)) (not(or E F)))))
;(check-sat)
;(get-model)

;Question 5
;(declare-fun R(Bool) Bool)
;(assert (not (= (not (exists ((x Bool)) (not (R x)))) (forall ((y Bool)) (R y)))))
;(check-sat)
;(get-model)

;Question 6
;(declare-fun R(Bool) Bool)
;(assert (not (= (not (exists ((y Bool)) (not (R y)))) (not (forall ((z Bool)) (R z))))))
;(check-sat)
;(get-model)

;Question 7
;(declare-fun R(Bool) Bool)
;(assert (not (= (exists ((x Bool)) ((R x))) (not (forall( ((y Bool)) (not (R y)) ))))))
;(check-sat)

