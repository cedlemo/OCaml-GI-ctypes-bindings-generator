open Ctypes
open Foreign

type t = Motion | Highlight | Drop | All
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Motion
  else if v = Unsigned.UInt32.of_int 2 then Highlight
  else if v = Unsigned.UInt32.of_int 4 then Drop
  else if v = Unsigned.UInt32.of_int 7 then All
  else raise (Invalid_argument "Unexpected Dest_defaults value")

let to_value = function
  | Motion -> Unsigned.UInt32.of_int 1
  | Highlight -> Unsigned.UInt32.of_int 2
  | Drop -> Unsigned.UInt32.of_int 4
  | All -> Unsigned.UInt32.of_int 7

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Motion ); ( 2 , Highlight ); ( 4 , Drop ); ( 7 , All )]
  in
  let rec build_flags_list allf acc =
    match allf with
    | [] -> acc
    | (i, f) :: q -> if ((logand v (of_int i )) <> zero) then build_flags_list q (f :: acc)
      else build_flags_list q acc
  in build_flags_list all_flags []

let list_to_value flags =
  let open Unsigned.UInt32 in
  let rec logor_flags l acc =
    match l with
    | [] -> acc
    | f :: q -> let v = to_value f in
      let acc' = logor acc v in
      logor_flags q acc'
  in
  logor_flags flags zero

let t_list_view = view ~read:list_of_value ~write:list_to_value uint32_t
