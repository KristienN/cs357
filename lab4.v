Parameter D : Set.
Parameter R S T : D -> Prop.

Lemma q1: (forall x:D, (R x) -> (S x)) -> (forall y:D, (R y)) -> (forall z:D, (S z)).
intros.
apply H.
apply H0.
Qed.

Lemma q2: (forall x:D, (R x) -> (S x)) -> (forall y:D, (S y) -> (T y)) -> (forall z:D, (R z)-> (T z)).
intros.
apply  H0.
apply H.
exact H1.
Qed.

Lemma q3: (exists y:D, (R y)) -> (forall x:D, (R x) -> (S x)) -> (exists y:D, (S y)).
intros.
elim H.
intros.
exists x.
apply H0.
exact H1.
Qed.

Lemma q4: (exists x:D, (R x) /\ (S x)) -> (exists y:D, (R y)) /\ (exists z:D, (S z)).
intros.
elim H.
intros.
split.
exists x.
apply H0.
exists x.
apply H0.
Qed.

Lemma q5: (exists x:D, (R x) \/ (S x)) -> (exists y:D, (R y)) \/ (exists z:D, (S z)).
intros.
elim H.
intros.
elim H0.
intros.
left.
exists x.
apply H1.
intros.
right.
exists x.
apply H1.
Qed.

Lemma q6: ~(exists x:D, ~ (R x)) -> forall y:D, ~~(R y).
red.
intros.
elim H.
exists y.
apply H0.
Qed.

Lemma q7: (exists y:D, ~ (R y)) -> ~ (forall z:D, (R z)).
red.
intros.
elim H.
intros.
apply H1.
apply H0.
Qed.

Lemma q8: (forall x:D, (R x)) -> ~ (exists y:D, ~ (R y)).
red.
intros.
elim H0.
intros.
apply H1.
apply H.
Qed.

Lemma q9: (forall y:D, (R y)) -> ~ (exists x:D, ~ (R x)).
red.
intros.
elim H0.
intros.
apply H1.
apply H.
Qed.





