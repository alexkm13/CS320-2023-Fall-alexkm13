(*
Assign0-4: 10 points
Please implement a function that converts a given
string to an integer:
fun str2int(cs: string): int
In particular, it is expected that str2int(int2str(x)) = x
*)
let rec str2int (cs: string): int =
  let rec convert i0 =
    if i0 <= 0 then 0 else
      10 * (convert (i0 - 1)) + ord (string_get(cs, (i0 - 1))) - ord '0'
  in
  convert (string_length(cs))
;;

(* ****** ****** *)
