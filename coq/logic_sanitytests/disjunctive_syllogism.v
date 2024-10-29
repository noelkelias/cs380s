Theorem disjunctive_syllogism : forall A B : Prop, (A \/ B) -> ~A -> B.
Proof.
  Time intros A B [HA | HB] HnotA.
  - (* case A is true *) contradiction. (* This is a contradiction since we have ~A *)
  - (* case B is true *) assumption. (* Here we conclude B *)
Qed.


