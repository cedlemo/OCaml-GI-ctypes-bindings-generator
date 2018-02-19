open Ctypes
open Foreign

type t = Minimum | Natural

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Minimum
  else if v = Unsigned.UInt32.of_int 1 then Natural
  else raise (Invalid_argument "Unexpected Scrollable_policy value")

let to_value = function
  | Minimum -> Unsigned.UInt32.of_int 0
  | Natural -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

