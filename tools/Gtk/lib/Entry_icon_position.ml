open Ctypes
open Foreign

type t = Primary | Secondary

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Primary
  else if v = Unsigned.UInt32.of_int 1 then Secondary
  else raise (Invalid_argument "Unexpected Entry_icon_position value")

let to_value = function
  | Primary -> Unsigned.UInt32.of_int 0
  | Secondary -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

