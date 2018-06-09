open Ctypes
open Foreign

type t = Step_forward | Step_backward | Page_forward | Page_backward | Home | End | User_defined

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Step_forward
  else if v = Unsigned.UInt32.of_int 1 then Step_backward
  else if v = Unsigned.UInt32.of_int 2 then Page_forward
  else if v = Unsigned.UInt32.of_int 3 then Page_backward
  else if v = Unsigned.UInt32.of_int 4 then Home
  else if v = Unsigned.UInt32.of_int 5 then End
  else if v = Unsigned.UInt32.of_int 6 then User_defined
  else raise (Invalid_argument "Unexpected Spin_type value")

let to_value = function
  | Step_forward -> Unsigned.UInt32.of_int 0
  | Step_backward -> Unsigned.UInt32.of_int 1
  | Page_forward -> Unsigned.UInt32.of_int 2
  | Page_backward -> Unsigned.UInt32.of_int 3
  | Home -> Unsigned.UInt32.of_int 4
  | End -> Unsigned.UInt32.of_int 5
  | User_defined -> Unsigned.UInt32.of_int 6

let t_view = view ~read:of_value ~write:to_value uint32_t

