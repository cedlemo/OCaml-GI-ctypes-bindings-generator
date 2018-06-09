open Ctypes
open Foreign

type t = All | Current | Ranges | Selection

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then All
  else if v = Unsigned.UInt32.of_int 1 then Current
  else if v = Unsigned.UInt32.of_int 2 then Ranges
  else if v = Unsigned.UInt32.of_int 3 then Selection
  else raise (Invalid_argument "Unexpected Print_pages value")

let to_value = function
  | All -> Unsigned.UInt32.of_int 0
  | Current -> Unsigned.UInt32.of_int 1
  | Ranges -> Unsigned.UInt32.of_int 2
  | Selection -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

