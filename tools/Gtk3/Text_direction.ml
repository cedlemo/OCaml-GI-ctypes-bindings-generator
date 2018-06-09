open Ctypes
open Foreign

type t = None | Ltr | Rtl

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Ltr
  else if v = Unsigned.UInt32.of_int 2 then Rtl
  else raise (Invalid_argument "Unexpected Text_direction value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Ltr -> Unsigned.UInt32.of_int 1
  | Rtl -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

