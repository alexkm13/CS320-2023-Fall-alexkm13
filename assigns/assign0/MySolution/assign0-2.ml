(*
Assign0-2: 10 points
Please implement a function that tests whether a
given natural number is a prime:
fun isPrime(n0: int): bool
*)
let rec isPrime(n : int): bool = 
  if n <= 1 then
    false
  else 
    let rec divisible d =
      if d >= n then
        true
      else if n mod d = 0 then
        false
      else
        divisible (d + 1)
    in
    not (divisible 2)
  ;;
(* ****** ****** *)
