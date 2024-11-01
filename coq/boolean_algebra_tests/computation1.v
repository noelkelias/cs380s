Require Import boolean_ops. 

(* Prove that (A + B) * C = true if A = true and C = true *)
Lemma computation1 : forall A B : bool,
  A = true -> (boolean_mult (boolean_add A B) true) = true.
Proof.
  intros A B HA.
  (* Since A = true, we can substitute it *)
  rewrite HA.
  (* Now, we compute (b_or A B) *)
  simpl.
  (* b_or true B will always be true *)
  (* And then we can compute (b_and (true) true) *)
  simpl.
  reflexivity.
Qed.

(* Example usage of the lemma *)
Example main : boolean_mult (boolean_add true false) true = true.
Proof.
  apply computation1; reflexivity.
Qed.



