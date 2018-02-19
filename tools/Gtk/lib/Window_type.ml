open Ctypes
open Foreign

type t = Toplevel | Popup

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Toplevel
  else if v = Unsigned.UInt32.of_int 1 then Popup
  else raise (Invalid_argument "Unexpected Window_type value")

let to_value = function
  | Toplevel -> Unsigned.UInt32.of_int 0
  | Popup -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

