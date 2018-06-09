open Ctypes
open Foreign

type t = Grow_only | Autosize | Fixed

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Grow_only
  else if v = Unsigned.UInt32.of_int 1 then Autosize
  else if v = Unsigned.UInt32.of_int 2 then Fixed
  else raise (Invalid_argument "Unexpected Tree_view_column_sizing value")

let to_value = function
  | Grow_only -> Unsigned.UInt32.of_int 0
  | Autosize -> Unsigned.UInt32.of_int 1
  | Fixed -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

