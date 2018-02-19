open Ctypes
open Foreign

type t = Invalid | Menu | Small_toolbar | Large_toolbar | Button | Dnd | Dialog

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Invalid
  else if v = Unsigned.UInt32.of_int 1 then Menu
  else if v = Unsigned.UInt32.of_int 2 then Small_toolbar
  else if v = Unsigned.UInt32.of_int 3 then Large_toolbar
  else if v = Unsigned.UInt32.of_int 4 then Button
  else if v = Unsigned.UInt32.of_int 5 then Dnd
  else if v = Unsigned.UInt32.of_int 6 then Dialog
  else raise (Invalid_argument "Unexpected Icon_size value")

let to_value = function
  | Invalid -> Unsigned.UInt32.of_int 0
  | Menu -> Unsigned.UInt32.of_int 1
  | Small_toolbar -> Unsigned.UInt32.of_int 2
  | Large_toolbar -> Unsigned.UInt32.of_int 3
  | Button -> Unsigned.UInt32.of_int 4
  | Dnd -> Unsigned.UInt32.of_int 5
  | Dialog -> Unsigned.UInt32.of_int 6

let t_view = view ~read:of_value ~write:to_value uint32_t

