(*
Assign0-1: 10 points
Please find the first integer N such that the
evaluation of fact(N) in OCaml yields an Overflow
exception.
*)

let rec myloop(x: int): int =
  if fact(x) = 0 then x else myloop(x+1)

;;
(* ****** ****** *)
