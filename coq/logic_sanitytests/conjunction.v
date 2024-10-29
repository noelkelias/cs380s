Require Import Coq.Bool.Bool.

Theorem conjunction_example : forall A B : Prop, A -> B -> A /\ B.
Proof.
  intros A B H1 H2.              (* Introduce propositions and hypotheses *)
  Time (split).                  (* Use conjunction to prepare for proving A \u2227 B *)
  - exact H1.                   (* Prove the first part: A *)
  - exact H2.                   (* Prove the second part: B *)
Qed.
