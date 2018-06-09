open Ctypes
open Foreign

type t = Collapsed | Semi_collapsed | Semi_expanded | Expanded

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Collapsed
  else if v = Unsigned.UInt32.of_int 1 then Semi_collapsed
  else if v = Unsigned.UInt32.of_int 2 then Semi_expanded
  else if v = Unsigned.UInt32.of_int 3 then Expanded
  else raise (Invalid_argument "Unexpected Expander_style value")

let to_value = function
  | Collapsed -> Unsigned.UInt32.of_int 0
  | Semi_collapsed -> Unsigned.UInt32.of_int 1
  | Semi_expanded -> Unsigned.UInt32.of_int 2
  | Expanded -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

