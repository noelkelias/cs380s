Require Import Coq.Bool.Bool.

Theorem addition_example : forall A B : Prop, A -> A \/ B.
Proof.
  intros A B H.                   (* Introduce propositions and hypothesis *)
  Time (left; exact H).           (* Use the addition rule to conclude A \u2228 B *)
Qed.
