open Ctypes
open Foreign

type t = None | Center | Mouse | Center_always | Center_on_parent

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Center
  else if v = Unsigned.UInt32.of_int 2 then Mouse
  else if v = Unsigned.UInt32.of_int 3 then Center_always
  else if v = Unsigned.UInt32.of_int 4 then Center_on_parent
  else raise (Invalid_argument "Unexpected Window_position value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Center -> Unsigned.UInt32.of_int 1
  | Mouse -> Unsigned.UInt32.of_int 2
  | Center_always -> Unsigned.UInt32.of_int 3
  | Center_on_parent -> Unsigned.UInt32.of_int 4

let t_view = view ~read:of_value ~write:to_value uint32_t

