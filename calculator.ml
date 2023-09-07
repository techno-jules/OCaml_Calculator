(* calculator.ml *)

let add x y = x + y
let subtract x y = x - y
let multiply x y = x * y
(* let divide x y = if y = 0 then "Cannot divide by zero" else string_of_float (float_of_int x /. float_of_int y) *)
let divide x y =
  match y with
  | 0 -> None
  | _ -> Some (x / y)
let exponent x y = int_of_float (float_of_int x ** float_of_int y)
let remainder x y =
  match y with
  | 0 -> None
  | _ -> Some (x mod y)




let sine x = sin (float_of_int x)
let cosine x = cos (float_of_int x)
let tangent x = tan (float_of_int x)
let square_root x = sqrt (float_of_int x)


