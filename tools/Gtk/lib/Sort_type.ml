open Ctypes
open Foreign

type t = Ascending | Descending

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Ascending
  else if v = Unsigned.UInt32.of_int 1 then Descending
  else raise (Invalid_argument "Unexpected Sort_type value")

let to_value = function
  | Ascending -> Unsigned.UInt32.of_int 0
  | Descending -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

