open Ctypes
open Foreign

type t = Before | After | Into_or_before | Into_or_after

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Before
  else if v = Unsigned.UInt32.of_int 1 then After
  else if v = Unsigned.UInt32.of_int 2 then Into_or_before
  else if v = Unsigned.UInt32.of_int 3 then Into_or_after
  else raise (Invalid_argument "Unexpected Tree_view_drop_position value")

let to_value = function
  | Before -> Unsigned.UInt32.of_int 0
  | After -> Unsigned.UInt32.of_int 1
  | Into_or_before -> Unsigned.UInt32.of_int 2
  | Into_or_after -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

