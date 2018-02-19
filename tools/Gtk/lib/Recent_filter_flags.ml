open Ctypes
open Foreign

type t = Uri | Display_name | Mime_type | Application | Group | Age
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Uri
  else if v = Unsigned.UInt32.of_int 2 then Display_name
  else if v = Unsigned.UInt32.of_int 4 then Mime_type
  else if v = Unsigned.UInt32.of_int 8 then Application
  else if v = Unsigned.UInt32.of_int 16 then Group
  else if v = Unsigned.UInt32.of_int 32 then Age
  else raise (Invalid_argument "Unexpected Recent_filter_flags value")

let to_value = function
  | Uri -> Unsigned.UInt32.of_int 1
  | Display_name -> Unsigned.UInt32.of_int 2
  | Mime_type -> Unsigned.UInt32.of_int 4
  | Application -> Unsigned.UInt32.of_int 8
  | Group -> Unsigned.UInt32.of_int 16
  | Age -> Unsigned.UInt32.of_int 32

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Uri ); ( 2 , Display_name ); ( 4 , Mime_type ); ( 8 , Application ); ( 16 , Group ); ( 32 , Age )]
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
