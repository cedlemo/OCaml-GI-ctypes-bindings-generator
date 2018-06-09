open Ctypes
open Foreign

type t = First | Last

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then First
  else if v = Unsigned.UInt32.of_int 1 then Last
  else raise (Invalid_argument "Unexpected Notebook_tab value")

let to_value = function
  | First -> Unsigned.UInt32.of_int 0
  | Last -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

