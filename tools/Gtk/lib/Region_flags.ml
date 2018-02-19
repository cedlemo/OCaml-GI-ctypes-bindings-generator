open Ctypes
open Foreign

type t = Even | Odd | First | Last | Only | Sorted
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Even
  else if v = Unsigned.UInt32.of_int 2 then Odd
  else if v = Unsigned.UInt32.of_int 4 then First
  else if v = Unsigned.UInt32.of_int 8 then Last
  else if v = Unsigned.UInt32.of_int 16 then Only
  else if v = Unsigned.UInt32.of_int 32 then Sorted
  else raise (Invalid_argument "Unexpected Region_flags value")

let to_value = function
  | Even -> Unsigned.UInt32.of_int 1
  | Odd -> Unsigned.UInt32.of_int 2
  | First -> Unsigned.UInt32.of_int 4
  | Last -> Unsigned.UInt32.of_int 8
  | Only -> Unsigned.UInt32.of_int 16
  | Sorted -> Unsigned.UInt32.of_int 32

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Even ); ( 2 , Odd ); ( 4 , First ); ( 8 , Last ); ( 16 , Only ); ( 32 , Sorted )]
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
