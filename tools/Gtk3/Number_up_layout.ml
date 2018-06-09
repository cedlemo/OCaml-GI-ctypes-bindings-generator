open Ctypes
open Foreign

type t = Lrtb | Lrbt | Rltb | Rlbt | Tblr | Tbrl | Btlr | Btrl

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Lrtb
  else if v = Unsigned.UInt32.of_int 1 then Lrbt
  else if v = Unsigned.UInt32.of_int 2 then Rltb
  else if v = Unsigned.UInt32.of_int 3 then Rlbt
  else if v = Unsigned.UInt32.of_int 4 then Tblr
  else if v = Unsigned.UInt32.of_int 5 then Tbrl
  else if v = Unsigned.UInt32.of_int 6 then Btlr
  else if v = Unsigned.UInt32.of_int 7 then Btrl
  else raise (Invalid_argument "Unexpected Number_up_layout value")

let to_value = function
  | Lrtb -> Unsigned.UInt32.of_int 0
  | Lrbt -> Unsigned.UInt32.of_int 1
  | Rltb -> Unsigned.UInt32.of_int 2
  | Rlbt -> Unsigned.UInt32.of_int 3
  | Tblr -> Unsigned.UInt32.of_int 4
  | Tbrl -> Unsigned.UInt32.of_int 5
  | Btlr -> Unsigned.UInt32.of_int 6
  | Btrl -> Unsigned.UInt32.of_int 7

let t_view = view ~read:of_value ~write:to_value uint32_t

