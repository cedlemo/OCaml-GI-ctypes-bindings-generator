open Ctypes
open Foreign

type t = None | Horizontal | Vertical | Both

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Horizontal
  else if v = Unsigned.UInt32.of_int 2 then Vertical
  else if v = Unsigned.UInt32.of_int 3 then Both
  else raise (Invalid_argument "Unexpected Size_group_mode value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Horizontal -> Unsigned.UInt32.of_int 1
  | Vertical -> Unsigned.UInt32.of_int 2
  | Both -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

