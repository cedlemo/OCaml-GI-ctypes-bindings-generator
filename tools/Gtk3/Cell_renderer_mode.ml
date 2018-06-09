open Ctypes
open Foreign

type t = Inert | Activatable | Editable

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Inert
  else if v = Unsigned.UInt32.of_int 1 then Activatable
  else if v = Unsigned.UInt32.of_int 2 then Editable
  else raise (Invalid_argument "Unexpected Cell_renderer_mode value")

let to_value = function
  | Inert -> Unsigned.UInt32.of_int 0
  | Activatable -> Unsigned.UInt32.of_int 1
  | Editable -> Unsigned.UInt32.of_int 2

let t_view = view ~read:of_value ~write:to_value uint32_t

