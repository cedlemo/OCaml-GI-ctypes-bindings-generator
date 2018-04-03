open Ctypes
open Foreign

type t = Unknown | Custom | Gpl_2_0 | Gpl_3_0 | Lgpl_2_1 | Lgpl_3_0 | Bsd | Mit_x11 | Artistic | Gpl_2_0_only | Gpl_3_0_only | Lgpl_2_1_only | Lgpl_3_0_only | Agpl_3_0

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Unknown
  else if v = Unsigned.UInt32.of_int 1 then Custom
  else if v = Unsigned.UInt32.of_int 2 then Gpl_2_0
  else if v = Unsigned.UInt32.of_int 3 then Gpl_3_0
  else if v = Unsigned.UInt32.of_int 4 then Lgpl_2_1
  else if v = Unsigned.UInt32.of_int 5 then Lgpl_3_0
  else if v = Unsigned.UInt32.of_int 6 then Bsd
  else if v = Unsigned.UInt32.of_int 7 then Mit_x11
  else if v = Unsigned.UInt32.of_int 8 then Artistic
  else if v = Unsigned.UInt32.of_int 9 then Gpl_2_0_only
  else if v = Unsigned.UInt32.of_int 10 then Gpl_3_0_only
  else if v = Unsigned.UInt32.of_int 11 then Lgpl_2_1_only
  else if v = Unsigned.UInt32.of_int 12 then Lgpl_3_0_only
  else if v = Unsigned.UInt32.of_int 13 then Agpl_3_0
  else raise (Invalid_argument "Unexpected License value")

let to_value = function
  | Unknown -> Unsigned.UInt32.of_int 0
  | Custom -> Unsigned.UInt32.of_int 1
  | Gpl_2_0 -> Unsigned.UInt32.of_int 2
  | Gpl_3_0 -> Unsigned.UInt32.of_int 3
  | Lgpl_2_1 -> Unsigned.UInt32.of_int 4
  | Lgpl_3_0 -> Unsigned.UInt32.of_int 5
  | Bsd -> Unsigned.UInt32.of_int 6
  | Mit_x11 -> Unsigned.UInt32.of_int 7
  | Artistic -> Unsigned.UInt32.of_int 8
  | Gpl_2_0_only -> Unsigned.UInt32.of_int 9
  | Gpl_3_0_only -> Unsigned.UInt32.of_int 10
  | Lgpl_2_1_only -> Unsigned.UInt32.of_int 11
  | Lgpl_3_0_only -> Unsigned.UInt32.of_int 12
  | Agpl_3_0 -> Unsigned.UInt32.of_int 13

let t_view = view ~read:of_value ~write:to_value uint32_t

