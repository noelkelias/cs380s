Require Import Coq.Bool.Bool.
(* Define basic propositions and inference rules using Coq's built-in types *)

(* Conjunction: A -> B -> A /\ B *)
Theorem conjunction : forall A B : Prop, A -> B -> A /\ B.
Proof.
  intros A B H1 H2.              (* Introduce propositions and hypotheses *)
  split.                  (* Use conjunction to prepare for proving A \u2227 B *)
  - exact H1.                   (* Prove the first part: A *)
  - exact H2.                   (* Prove the second part: B *)
Qed.


(* Addition: Define the theorem A -> A \/ B *)
Theorem addition : forall A B : Prop, A -> (A \/ B).
Proof.
  intros A B H.
  (* We know A is true from H *)
  left. (* We want to prove A \/ B, and we can use the left disjunct *)
  assumption. (* This assumes A is true based on H *)
Qed.


(* Modus Ponens: If P implies Q and P is true, then Q is true *)
Theorem modus_ponens : forall P Q : Prop,
  (P -> Q) -> P -> Q.
Proof.
  intros P Q Himp Hp.
  (* Apply the implication to derive Q from P *)
  apply Himp in Hp.
  assumption.
Qed.

(*disjunctive_syllogism: A|B and !A --> B*)
Theorem disjunctive_syllogism : forall A B : Prop, (A \/ B) -> ~A -> B.
Proof.
  intros A B [HA | HB] HnotA.
  - (* case A is true *) contradiction. (* This is a contradiction since we have ~A *)
  - (* case B is true *) assumption. (* Here we conclude B *)
Qed.


(*Hypothetical Syllogism: A-->B and B-->C, then A-->C *)
Theorem hypothetical_syllogism : forall A B C : Prop, (A -> B) -> (B -> C) -> (A -> C).
Proof.
  intros A B C H1 H2 H3.
  (* We need to prove C assuming A *)
  apply H2.  (* Use the implication B -> C *)
  apply H1.  (* Use the implication A -> B *)
  assumption. (* This provides A *)
Qed.

(*Modus Tollens: If !B and A-->B, then !A*)
Theorem modus_tollens : forall A B : Prop, (A -> B) -> ~B -> ~A.
Proof.
  intros A B H1 H2 H3.
  (* We need to prove ~A, which means we assume A and derive a contradiction *)
  apply H2.  (* We want to prove B is false, so we apply the hypothesis H1 *)
  apply H1.  (* Use H1 to derive B from A *)
  assumption. (* Use the assumption H3 for A *)
Qed.

(*Simplification: A&B --> A*)
Theorem simplification : forall A B : Prop, (A /\ B) -> A.
Proof.
  intros A B H.
  destruct H as [HA HB]. (* Destruct the conjunction *)
  (* At this point, HA is A and HB is B *)
  (* We can conclude A directly *)
  exact HA. 
Qed.




