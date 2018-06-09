open Ctypes
open Foreign

type t = Tab_forward | Tab_backward | Up | Down | Left | Right

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Tab_forward
  else if v = Unsigned.UInt32.of_int 1 then Tab_backward
  else if v = Unsigned.UInt32.of_int 2 then Up
  else if v = Unsigned.UInt32.of_int 3 then Down
  else if v = Unsigned.UInt32.of_int 4 then Left
  else if v = Unsigned.UInt32.of_int 5 then Right
  else raise (Invalid_argument "Unexpected Direction_type value")

let to_value = function
  | Tab_forward -> Unsigned.UInt32.of_int 0
  | Tab_backward -> Unsigned.UInt32.of_int 1
  | Up -> Unsigned.UInt32.of_int 2
  | Down -> Unsigned.UInt32.of_int 3
  | Left -> Unsigned.UInt32.of_int 4
  | Right -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

