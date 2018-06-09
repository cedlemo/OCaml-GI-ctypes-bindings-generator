open Ctypes
open Foreign

type t = Button | Ring | Strip

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Button
  else if v = Unsigned.UInt32.of_int 1 then Ring
  else if v = Unsigned.UInt32.of_int 2 then Strip
  else raise (Invalid_argument "Unexpected Pad_action_type value")

let to_value = function
  | Button -> Unsigned.UInt32.of_int 0
  | Ring -> Unsigned.UInt32.of_int 1
  | Strip -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

