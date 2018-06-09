open Ctypes
open Foreign

type t = Portrait | Landscape | Reverse_portrait | Reverse_landscape

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Portrait
  else if v = Unsigned.UInt32.of_int 1 then Landscape
  else if v = Unsigned.UInt32.of_int 2 then Reverse_portrait
  else if v = Unsigned.UInt32.of_int 3 then Reverse_landscape
  else raise (Invalid_argument "Unexpected Page_orientation value")

let to_value = function
  | Portrait -> Unsigned.UInt32.of_int 0
  | Landscape -> Unsigned.UInt32.of_int 1
  | Reverse_portrait -> Unsigned.UInt32.of_int 2
  | Reverse_landscape -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

