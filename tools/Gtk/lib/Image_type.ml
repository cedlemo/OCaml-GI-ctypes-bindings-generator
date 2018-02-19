open Ctypes
open Foreign

type t = Empty | Pixbuf | Stock | Icon_set | Animation | Icon_name | Gicon | Surface

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Empty
  else if v = Unsigned.UInt32.of_int 1 then Pixbuf
  else if v = Unsigned.UInt32.of_int 2 then Stock
  else if v = Unsigned.UInt32.of_int 3 then Icon_set
  else if v = Unsigned.UInt32.of_int 4 then Animation
  else if v = Unsigned.UInt32.of_int 5 then Icon_name
  else if v = Unsigned.UInt32.of_int 6 then Gicon
  else if v = Unsigned.UInt32.of_int 7 then Surface
  else raise (Invalid_argument "Unexpected Image_type value")

let to_value = function
  | Empty -> Unsigned.UInt32.of_int 0
  | Pixbuf -> Unsigned.UInt32.of_int 1
  | Stock -> Unsigned.UInt32.of_int 2
  | Icon_set -> Unsigned.UInt32.of_int 3
  | Animation -> Unsigned.UInt32.of_int 4
  | Icon_name -> Unsigned.UInt32.of_int 5
  | Gicon -> Unsigned.UInt32.of_int 6
  | Surface -> Unsigned.UInt32.of_int 7

let t_view = view ~read:of_value ~write:to_value uint32_t

