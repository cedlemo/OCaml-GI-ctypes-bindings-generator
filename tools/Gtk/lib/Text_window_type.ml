open Ctypes
open Foreign

type t = Private | Widget | Text | Left | Right | Top | Bottom

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Private
  else if v = Unsigned.UInt32.of_int 1 then Widget
  else if v = Unsigned.UInt32.of_int 2 then Text
  else if v = Unsigned.UInt32.of_int 3 then Left
  else if v = Unsigned.UInt32.of_int 4 then Right
  else if v = Unsigned.UInt32.of_int 5 then Top
  else if v = Unsigned.UInt32.of_int 6 then Bottom
  else raise (Invalid_argument "Unexpected Text_window_type value")

let to_value = function
  | Private -> Unsigned.UInt32.of_int 0
  | Widget -> Unsigned.UInt32.of_int 1
  | Text -> Unsigned.UInt32.of_int 2
  | Left -> Unsigned.UInt32.of_int 3
  | Right -> Unsigned.UInt32.of_int 4
  | Top -> Unsigned.UInt32.of_int 5
  | Bottom -> Unsigned.UInt32.of_int 6

let t_view = view ~read:of_value ~write:to_value uint32_t

