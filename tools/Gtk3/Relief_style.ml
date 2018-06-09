open Ctypes
open Foreign

type t = Normal | Half | None

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Normal
  else if v = Unsigned.UInt32.of_int 1 then Half
  else if v = Unsigned.UInt32.of_int 2 then None
  else raise (Invalid_argument "Unexpected Relief_style value")

let to_value = function
  | Normal -> Unsigned.UInt32.of_int 0
  | Half -> Unsigned.UInt32.of_int 1
  | None -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

