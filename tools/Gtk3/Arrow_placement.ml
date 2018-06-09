open Ctypes
open Foreign

type t = Both | Start | End

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Both
  else if v = Unsigned.UInt32.of_int 1 then Start
  else if v = Unsigned.UInt32.of_int 2 then End
  else raise (Invalid_argument "Unexpected Arrow_placement value")

let to_value = function
  | Both -> Unsigned.UInt32.of_int 0
  | Start -> Unsigned.UInt32.of_int 1
  | End -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

