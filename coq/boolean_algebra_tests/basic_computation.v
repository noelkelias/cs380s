(* Define Boolean values *)
Inductive bool : Type :=
  | true : bool
  | false : bool.

(* Define addition (OR) and multiplication (AND) for booleans *)
Definition b_or (b1 b2 : bool) : bool :=
  match b1, b2 with
  | true, _ => true
  | _, true => true
  | false, false => false
  end.

Definition b_and (b1 b2 : bool) : bool :=
  match b1, b2 with
  | true, true => true
  | _, _ => false
  end.

(* Prove that (A + B) * C = true if A = true and C = true *)
Lemma or_and_true : forall A B : bool,
  A = true -> (b_and (b_or A B) true) = true.
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
Example test_or_and_true : b_and (b_or true false) true = true.
Proof.
  apply or_and_true; reflexivity.
Qed.



