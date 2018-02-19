open Ctypes
open Foreign

type t = Parent | Child | Next | Prev

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Parent
  else if v = Unsigned.UInt32.of_int 1 then Child
  else if v = Unsigned.UInt32.of_int 2 then Next
  else if v = Unsigned.UInt32.of_int 3 then Prev
  else raise (Invalid_argument "Unexpected Menu_direction_type value")

let to_value = function
  | Parent -> Unsigned.UInt32.of_int 0
  | Child -> Unsigned.UInt32.of_int 1
  | Next -> Unsigned.UInt32.of_int 2
  | Prev -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

