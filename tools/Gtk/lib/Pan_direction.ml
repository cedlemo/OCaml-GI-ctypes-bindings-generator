open Ctypes
open Foreign

type t = Left | Right | Up | Down

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Left
  else if v = Unsigned.UInt32.of_int 1 then Right
  else if v = Unsigned.UInt32.of_int 2 then Up
  else if v = Unsigned.UInt32.of_int 3 then Down
  else raise (Invalid_argument "Unexpected Pan_direction value")

let to_value = function
  | Left -> Unsigned.UInt32.of_int 0
  | Right -> Unsigned.UInt32.of_int 1
  | Up -> Unsigned.UInt32.of_int 2
  | Down -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

