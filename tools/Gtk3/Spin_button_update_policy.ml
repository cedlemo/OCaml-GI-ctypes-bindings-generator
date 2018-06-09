open Ctypes
open Foreign

type t = Always | If_valid

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Always
  else if v = Unsigned.UInt32.of_int 1 then If_valid
  else raise (Invalid_argument "Unexpected Spin_button_update_policy value")

let to_value = function
  | Always -> Unsigned.UInt32.of_int 0
  | If_valid -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

