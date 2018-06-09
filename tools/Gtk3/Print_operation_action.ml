open Ctypes
open Foreign

type t = Print_dialog | Print | Preview | Export

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Print_dialog
  else if v = Unsigned.UInt32.of_int 1 then Print
  else if v = Unsigned.UInt32.of_int 2 then Preview
  else if v = Unsigned.UInt32.of_int 3 then Export
  else raise (Invalid_argument "Unexpected Print_operation_action value")

let to_value = function
  | Print_dialog -> Unsigned.UInt32.of_int 0
  | Print -> Unsigned.UInt32.of_int 1
  | Preview -> Unsigned.UInt32.of_int 2
  | Export -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

