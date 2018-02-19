open Ctypes
open Foreign

type t = General | Internal_error | Nomem | Invalid_file

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then General
  else if v = Unsigned.UInt32.of_int 1 then Internal_error
  else if v = Unsigned.UInt32.of_int 2 then Nomem
  else if v = Unsigned.UInt32.of_int 3 then Invalid_file
  else raise (Invalid_argument "Unexpected Print_error value")

let to_value = function
  | General -> Unsigned.UInt32.of_int 0
  | Internal_error -> Unsigned.UInt32.of_int 1
  | Nomem -> Unsigned.UInt32.of_int 2
  | Invalid_file -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

