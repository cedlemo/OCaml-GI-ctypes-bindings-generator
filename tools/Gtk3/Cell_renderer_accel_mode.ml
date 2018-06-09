open Ctypes
open Foreign

type t = Gtk | Other

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Gtk
  else if v = Unsigned.UInt32.of_int 1 then Other
  else raise (Invalid_argument "Unexpected Cell_renderer_accel_mode value")

let to_value = function
  | Gtk -> Unsigned.UInt32.of_int 0
  | Other -> Unsigned.UInt32.of_int 1

let t_view = view ~read:of_value ~write:to_value uint32_t

