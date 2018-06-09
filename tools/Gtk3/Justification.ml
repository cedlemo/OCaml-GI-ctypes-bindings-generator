open Ctypes
open Foreign

type t = Left | Right | Center | Fill

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Left
  else if v = Unsigned.UInt32.of_int 1 then Right
  else if v = Unsigned.UInt32.of_int 2 then Center
  else if v = Unsigned.UInt32.of_int 3 then Fill
  else raise (Invalid_argument "Unexpected Justification value")

let to_value = function
  | Left -> Unsigned.UInt32.of_int 0
  | Right -> Unsigned.UInt32.of_int 1
  | Center -> Unsigned.UInt32.of_int 2
  | Fill -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

