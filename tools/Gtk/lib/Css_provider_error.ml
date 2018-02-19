open Ctypes
open Foreign

type t = Failed | Syntax | Import | Name | Deprecated | Unknown_value

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Failed
  else if v = Unsigned.UInt32.of_int 1 then Syntax
  else if v = Unsigned.UInt32.of_int 2 then Import
  else if v = Unsigned.UInt32.of_int 3 then Name
  else if v = Unsigned.UInt32.of_int 4 then Deprecated
  else if v = Unsigned.UInt32.of_int 5 then Unknown_value
  else raise (Invalid_argument "Unexpected Css_provider_error value")

let to_value = function
  | Failed -> Unsigned.UInt32.of_int 0
  | Syntax -> Unsigned.UInt32.of_int 1
  | Import -> Unsigned.UInt32.of_int 2
  | Name -> Unsigned.UInt32.of_int 3
  | Deprecated -> Unsigned.UInt32.of_int 4
  | Unknown_value -> Unsigned.UInt32.of_int 5

let t_view = view ~read:of_value ~write:to_value uint32_t

