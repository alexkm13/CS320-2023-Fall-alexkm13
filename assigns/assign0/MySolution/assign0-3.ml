(*
Assign0-3: 10 points
Please implement a function that converts a given
integer to a string that represents the integer:
fun int2str(i0: int): string
*)

let int2str(i0: int): string =
  let rec int_iter n result =
    if n = 0 then
      result
    else
      let digit = n mod 10 in
      let char_digit = chr (ord '0' + digit) in
    int_iter (n / 10) (str char_digit ^ result)
  in
  if i0 = 0 then
    "0"
  else if i0 < 0 then
    "-" ^ int_iter (-i0) ""
else
  int_iter i0 ""
;;
