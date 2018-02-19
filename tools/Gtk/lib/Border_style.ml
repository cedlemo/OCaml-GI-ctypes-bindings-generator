open Ctypes
open Foreign

type t = None | Solid | Inset | Outset | Hidden | Dotted | Dashed | Double | Groove | Ridge

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Solid
  else if v = Unsigned.UInt32.of_int 2 then Inset
  else if v = Unsigned.UInt32.of_int 3 then Outset
  else if v = Unsigned.UInt32.of_int 4 then Hidden
  else if v = Unsigned.UInt32.of_int 5 then Dotted
  else if v = Unsigned.UInt32.of_int 6 then Dashed
  else if v = Unsigned.UInt32.of_int 7 then Double
  else if v = Unsigned.UInt32.of_int 8 then Groove
  else if v = Unsigned.UInt32.of_int 9 then Ridge
  else raise (Invalid_argument "Unexpected Border_style value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Solid -> Unsigned.UInt32.of_int 1
  | Inset -> Unsigned.UInt32.of_int 2
  | Outset -> Unsigned.UInt32.of_int 3
  | Hidden -> Unsigned.UInt32.of_int 4
  | Dotted -> Unsigned.UInt32.of_int 5
  | Dashed -> Unsigned.UInt32.of_int 6
  | Double -> Unsigned.UInt32.of_int 7
  | Groove -> Unsigned.UInt32.of_int 8
  | Ridge -> Unsigned.UInt32.of_int 9

let t_view = view ~read:of_value ~write:to_value uint32_t

