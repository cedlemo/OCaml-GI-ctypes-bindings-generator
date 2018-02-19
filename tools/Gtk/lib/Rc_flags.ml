open Ctypes
open Foreign

type t = Fg | Bg | Text | Base
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Fg
  else if v = Unsigned.UInt32.of_int 2 then Bg
  else if v = Unsigned.UInt32.of_int 4 then Text
  else if v = Unsigned.UInt32.of_int 8 then Base
  else raise (Invalid_argument "Unexpected Rc_flags value")

let to_value = function
  | Fg -> Unsigned.UInt32.of_int 1
  | Bg -> Unsigned.UInt32.of_int 2
  | Text -> Unsigned.UInt32.of_int 4
  | Base -> Unsigned.UInt32.of_int 8

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Fg ); ( 2 , Bg ); ( 4 , Text ); ( 8 , Base )]
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
