(*
Assign0-5: 10 points
Please implement a function that returns the reverse of
a given string:
fun stringrev(cs: string): string
*)

let stringrev (cs: string): string =
  let len = string_length cs in
  let rec rev i res =
    if i < 0 then
      res
    else
      let c = string_get (cs, i) in
      rev (i - 1) (res ^ str c)
  in
  rev (len - 1) ""
;;
