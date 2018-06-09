open Ctypes
open Foreign

type t = Selected | Prelit | Insensitive | Sorted | Focused | Expandable | Expanded
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Selected
  else if v = Unsigned.UInt32.of_int 2 then Prelit
  else if v = Unsigned.UInt32.of_int 4 then Insensitive
  else if v = Unsigned.UInt32.of_int 8 then Sorted
  else if v = Unsigned.UInt32.of_int 16 then Focused
  else if v = Unsigned.UInt32.of_int 32 then Expandable
  else if v = Unsigned.UInt32.of_int 64 then Expanded
  else raise (Invalid_argument "Unexpected Cell_renderer_state value")

let to_value = function
  | Selected -> Unsigned.UInt32.of_int 1
  | Prelit -> Unsigned.UInt32.of_int 2
  | Insensitive -> Unsigned.UInt32.of_int 4
  | Sorted -> Unsigned.UInt32.of_int 8
  | Focused -> Unsigned.UInt32.of_int 16
  | Expandable -> Unsigned.UInt32.of_int 32
  | Expanded -> Unsigned.UInt32.of_int 64

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Selected ); ( 2 , Prelit ); ( 4 , Insensitive ); ( 8 , Sorted ); ( 16 , Focused ); ( 32 , Expandable ); ( 64 , Expanded )]
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
