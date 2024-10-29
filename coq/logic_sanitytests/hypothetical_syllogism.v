Theorem hypothetical_syllogism : forall A B C : Prop, (A -> B) -> (B -> C) -> (A -> C).
Proof.
  Time intros A B C H1 H2 H3.
  (* We need to prove C assuming A *)
  apply H2.  (* Use the implication B -> C *)
  apply H1.  (* Use the implication A -> B *)
  assumption. (* This provides A *)
Qed.
