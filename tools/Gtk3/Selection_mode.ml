open Ctypes
open Foreign

type t = None | Single | Browse | Multiple

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Single
  else if v = Unsigned.UInt32.of_int 2 then Browse
  else if v = Unsigned.UInt32.of_int 3 then Multiple
  else raise (Invalid_argument "Unexpected Selection_mode value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Single -> Unsigned.UInt32.of_int 1
  | Browse -> Unsigned.UInt32.of_int 2
  | Multiple -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

