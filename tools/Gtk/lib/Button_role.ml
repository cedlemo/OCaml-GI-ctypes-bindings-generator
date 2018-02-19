open Ctypes
open Foreign

type t = Normal | Check | Radio

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Normal
  else if v = Unsigned.UInt32.of_int 1 then Check
  else if v = Unsigned.UInt32.of_int 2 then Radio
  else raise (Invalid_argument "Unexpected Button_role value")

let to_value = function
  | Normal -> Unsigned.UInt32.of_int 0
  | Check -> Unsigned.UInt32.of_int 1
  | Radio -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

