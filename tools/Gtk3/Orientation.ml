open Ctypes
open Foreign

type t = Horizontal | Vertical

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Horizontal
  else if v = Unsigned.UInt32.of_int 1 then Vertical
  else raise (Invalid_argument "Unexpected Orientation value")

let to_value = function
  | Horizontal -> Unsigned.UInt32.of_int 0
  | Vertical -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

