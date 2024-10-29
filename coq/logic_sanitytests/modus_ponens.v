Theorem modus_ponens : forall A B : Prop, (A -> B) -> A -> B.
Proof.
  Time intros A B H1 H2.
  apply H1.  (* Apply the implication A -> B *)
  assumption. (* Use the hypothesis A *)
Qed.
