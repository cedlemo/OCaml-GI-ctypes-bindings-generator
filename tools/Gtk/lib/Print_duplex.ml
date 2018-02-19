open Ctypes
open Foreign

type t = Simplex | Horizontal | Vertical

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Simplex
  else if v = Unsigned.UInt32.of_int 1 then Horizontal
  else if v = Unsigned.UInt32.of_int 2 then Vertical
  else raise (Invalid_argument "Unexpected Print_duplex value")

let to_value = function
  | Simplex -> Unsigned.UInt32.of_int 0
  | Horizontal -> Unsigned.UInt32.of_int 1
  | Vertical -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

