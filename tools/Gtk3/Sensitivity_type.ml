open Ctypes
open Foreign

type t = Auto | On | Off

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Auto
  else if v = Unsigned.UInt32.of_int 1 then On
  else if v = Unsigned.UInt32.of_int 2 then Off
  else raise (Invalid_argument "Unexpected Sensitivity_type value")

let to_value = function
  | Auto -> Unsigned.UInt32.of_int 0
  | On -> Unsigned.UInt32.of_int 1
  | Off -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

