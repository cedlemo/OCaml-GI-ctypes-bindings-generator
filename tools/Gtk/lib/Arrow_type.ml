open Ctypes
open Foreign

type t = Up | Down | Left | Right | None

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Up
  else if v = Unsigned.UInt32.of_int 1 then Down
  else if v = Unsigned.UInt32.of_int 2 then Left
  else if v = Unsigned.UInt32.of_int 3 then Right
  else if v = Unsigned.UInt32.of_int 4 then None
  else raise (Invalid_argument "Unexpected Arrow_type value")

let to_value = function
  | Up -> Unsigned.UInt32.of_int 0
  | Down -> Unsigned.UInt32.of_int 1
  | Left -> Unsigned.UInt32.of_int 2
  | Right -> Unsigned.UInt32.of_int 3
  | None -> Unsigned.UInt32.of_int 4

let t_view = view ~read:of_value ~write:to_value uint32_t

