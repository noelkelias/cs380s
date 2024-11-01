Require Import boolean_ops. 

(* Lemma to prove the computation *)
Lemma computation2 : forall A B C P Q : bool,
  A = true -> B = true -> C = true -> P = true ->
  boolean_add
    (boolean_add
       (boolean_mult A B)
       (boolean_add C 
         (boolean_add B 
           (boolean_add Q 
             (boolean_add (boolean_mult B P) 
               (boolean_add (boolean_mult A P) 
                 (boolean_add (boolean_mult C P) 
                   (boolean_add (boolean_mult P P) 
                     (boolean_add A P))))))))
    ) 
    (boolean_add A P) = true.
Proof.
  intros A B C P Q HA HB HC HP.

  (* Rewrite the assumptions *)
  rewrite HA, HB, HC, HP.

  (* Now that A, B, C, and P are true, we simplify the expression *)
  simpl. (* Simplifies all instances of true in the expression *)

  (* The expression should simplify to true *)
  reflexivity.
Qed.

(* Example call to test the lemma *)
Example test_computation2 :
  boolean_add
    (boolean_add
       (boolean_mult true true)
       (boolean_add true 
         (boolean_add true 
           (boolean_add false 
             (boolean_add (boolean_mult true true) 
               (boolean_add (boolean_mult true true) 
                 (boolean_add (boolean_mult true true) 
                   (boolean_add (boolean_mult true true) 
                     (boolean_add true true))))))))
    ) 
    (boolean_add true true) = true.
Proof.
  simpl. (* Simplify the expression directly *)
  reflexivity. (* Confirm both sides are equal *)
Qed.









