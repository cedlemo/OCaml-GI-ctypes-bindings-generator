open Ctypes
open Foreign

type t = Start | End

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Start
  else if v = Unsigned.UInt32.of_int 1 then End
  else raise (Invalid_argument "Unexpected Pack_type value")

let to_value = function
  | Start -> Unsigned.UInt32.of_int 0
  | End -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

