Require Import boolean_operations. 

(* Prove that (A + B) * C = true if A = true and C = true *)
Lemma basic_computation : forall A B : bool,
  A = true -> (boolean_multiplucation (boolean_addition A B) true) = true.
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
Example main : boolean_multiplucation (boolean_addition true false) true = true.
Proof.
  apply basic_computation; reflexivity.
Qed.



