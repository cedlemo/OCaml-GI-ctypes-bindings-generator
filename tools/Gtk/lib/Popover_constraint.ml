open Ctypes
open Foreign

type t = None | Window

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Window
  else raise (Invalid_argument "Unexpected Popover_constraint value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Window -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

