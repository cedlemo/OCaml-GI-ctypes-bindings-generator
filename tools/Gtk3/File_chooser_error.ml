open Ctypes
open Foreign

type t = Nonexistent | Bad_filename | Already_exists | Incomplete_hostname

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Nonexistent
  else if v = Unsigned.UInt32.of_int 1 then Bad_filename
  else if v = Unsigned.UInt32.of_int 2 then Already_exists
  else if v = Unsigned.UInt32.of_int 3 then Incomplete_hostname
  else raise (Invalid_argument "Unexpected File_chooser_error value")

let to_value = function
  | Nonexistent -> Unsigned.UInt32.of_int 0
  | Bad_filename -> Unsigned.UInt32.of_int 1
  | Already_exists -> Unsigned.UInt32.of_int 2
  | Incomplete_hostname -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

