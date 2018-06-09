open Ctypes
open Foreign

type t = Tooltip | Whats_this

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Tooltip
  else if v = Unsigned.UInt32.of_int 1 then Whats_this
  else raise (Invalid_argument "Unexpected Widget_help_type value")

let to_value = function
  | Tooltip -> Unsigned.UInt32.of_int 0
  | Whats_this -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

