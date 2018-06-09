open Ctypes
open Foreign

type t = Top | Center | Bottom

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Top
  else if v = Unsigned.UInt32.of_int 1 then Center
  else if v = Unsigned.UInt32.of_int 2 then Bottom
  else raise (Invalid_argument "Unexpected Baseline_position value")

let to_value = function
  | Top -> Unsigned.UInt32.of_int 0
  | Center -> Unsigned.UInt32.of_int 1
  | Bottom -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

