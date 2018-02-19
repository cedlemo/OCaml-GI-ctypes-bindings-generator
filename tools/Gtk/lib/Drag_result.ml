open Ctypes
open Foreign

type t = Success | No_target | User_cancelled | Timeout_expired | Grab_broken | Error

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Success
  else if v = Unsigned.UInt32.of_int 1 then No_target
  else if v = Unsigned.UInt32.of_int 2 then User_cancelled
  else if v = Unsigned.UInt32.of_int 3 then Timeout_expired
  else if v = Unsigned.UInt32.of_int 4 then Grab_broken
  else if v = Unsigned.UInt32.of_int 5 then Error
  else raise (Invalid_argument "Unexpected Drag_result value")

let to_value = function
  | Success -> Unsigned.UInt32.of_int 0
  | No_target -> Unsigned.UInt32.of_int 1
  | User_cancelled -> Unsigned.UInt32.of_int 2
  | Timeout_expired -> Unsigned.UInt32.of_int 3
  | Grab_broken -> Unsigned.UInt32.of_int 4
  | Error -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

