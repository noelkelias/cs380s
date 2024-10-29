Theorem modus_tollens : forall A B : Prop, (A -> B) -> ~B -> ~A.
Proof.
  Time intros A B H1 H2 H3.
  (* We need to prove ~A, which means we assume A and derive a contradiction *)
  apply H2.  (* We want to prove B is false, so we apply the hypothesis H1 *)
  apply H1.  (* Use H1 to derive B from A *)
  assumption. (* Use the assumption H3 for A *)
Qed.
