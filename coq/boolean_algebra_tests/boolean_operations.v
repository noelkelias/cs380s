(* Define Boolean values *)
Inductive bool : Type :=
  | true : bool
  | false : bool.

(* Define addition (OR) and multiplication (AND) for booleans *)
Definition boolean_addition (b1 b2 : bool) : bool :=
  match b1, b2 with
  | true, _ => true
  | _, true => true
  | false, false => false
  end.

Definition boolean_multiplucation (b1 b2 : bool) : bool :=
  match b1, b2 with
  | true, true => true
  | _, _ => false
  end.