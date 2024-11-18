Require Import Bool.
Require Import Lia.

(* 1.a *)
Goal forall (x y : bool),
(x && (negb y)) || ((negb x) && (negb y)) || ((negb x) && y) = negb (x && y).
Proof.
intros. destruct x,y.
- simpl. reflexivity.
- simpl. reflexivity.
- simpl. reflexivity.
- simpl. reflexivity.
Qed.

Goal forall (x y z : bool),
negb ((negb x) && y && z) && negb(x && y && (negb z)) && (x && (negb y) && z) = x && (negb y) && z.
Proof.
intros. destruct x,y,z; simpl; reflexivity.
Qed.
