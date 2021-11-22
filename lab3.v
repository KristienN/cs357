Hypothesis A B C : Prop.

Lemma q1: (A /\ B) /\ C -> A /\ (B /\ C).
intros.
elim H.
intros.
elim H0.
intros.
split.
apply H2.
split.
apply H3.
exact H1.
Qed.


Lemma q2:(A /\ B) -> C -> A -> (B -> C).
intros.
exact H0.
Qed.

Lemma q3: (A\/B) \/ C -> A \/ (B \/ C).
intros.
elim H.
intros.
elim H0.
intros.
left.
exact H1.
intros.
right.
left.
exact H1.
intros.
right.
right.
exact H0.
Qed.

Lemma q4: (A \/ B) -> C -> A -> (B -> C).
intros.
exact H0.
Qed.

Lemma q5: (~A\/ B) -> ( A -> B).
intros.
elim H.
intros.
elim H1.
contradiction H1.
intros.
exact H1.
Qed.


Lemma q6: (A -> B) -> (~ B -> ~A).
red.
intros.
apply H0.
apply H.
exact H1.
Qed.

Lemma q7: ~( A /\  ~A).
red.
intros.
apply H.
elim H.
intros.
exact H0.
Qed.

Require Import Classical.
Section myClassical.
Hypothesis E F: Prop.

Lemma q8: ~ (E \/ F) -> ~ E /\ ~ F.
intros.
elim(classic E).
intros.







