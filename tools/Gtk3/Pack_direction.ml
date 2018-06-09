open Ctypes
open Foreign

type t = Ltr | Rtl | Ttb | Btt

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Ltr
  else if v = Unsigned.UInt32.of_int 1 then Rtl
  else if v = Unsigned.UInt32.of_int 2 then Ttb
  else if v = Unsigned.UInt32.of_int 3 then Btt
  else raise (Invalid_argument "Unexpected Pack_direction value")

let to_value = function
  | Ltr -> Unsigned.UInt32.of_int 0
  | Rtl -> Unsigned.UInt32.of_int 1
  | Ttb -> Unsigned.UInt32.of_int 2
  | Btt -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

