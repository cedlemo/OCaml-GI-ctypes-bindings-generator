open Ctypes
open Foreign

type t = None | Mru | Lru | Custom

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Mru
  else if v = Unsigned.UInt32.of_int 2 then Lru
  else if v = Unsigned.UInt32.of_int 3 then Custom
  else raise (Invalid_argument "Unexpected Recent_sort_type value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Mru -> Unsigned.UInt32.of_int 1
  | Lru -> Unsigned.UInt32.of_int 2
  | Custom -> Unsigned.UInt32.of_int 3

let t_view = view ~read:of_value ~write:to_value uint32_t

