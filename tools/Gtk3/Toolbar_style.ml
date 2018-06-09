open Ctypes
open Foreign

type t = Icons | Text | Both | Both_horiz

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Icons
  else if v = Unsigned.UInt32.of_int 1 then Text
  else if v = Unsigned.UInt32.of_int 2 then Both
  else if v = Unsigned.UInt32.of_int 3 then Both_horiz
  else raise (Invalid_argument "Unexpected Toolbar_style value")

let to_value = function
  | Icons -> Unsigned.UInt32.of_int 0
  | Text -> Unsigned.UInt32.of_int 1
  | Both -> Unsigned.UInt32.of_int 2
  | Both_horiz -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

