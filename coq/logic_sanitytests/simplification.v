Theorem simplification : forall A B : Prop, (A /\ B) -> A.
Proof.
  Time intros A B H.
  destruct H as [HA HB]. (* Destruct the conjunction *)
  (* At this point, HA is A and HB is B *)
  (* We can conclude A directly *)
  exact HA. 
Qed.




