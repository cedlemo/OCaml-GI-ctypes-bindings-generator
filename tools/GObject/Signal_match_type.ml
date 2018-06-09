open Ctypes
open Foreign

type t = Id | Detail | Closure | Func | Data | Unblocked
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Id
  else if v = Unsigned.UInt32.of_int 2 then Detail
  else if v = Unsigned.UInt32.of_int 4 then Closure
  else if v = Unsigned.UInt32.of_int 8 then Func
  else if v = Unsigned.UInt32.of_int 16 then Data
  else if v = Unsigned.UInt32.of_int 32 then Unblocked
  else raise (Invalid_argument "Unexpected Signal_match_type value")

let to_value = function
  | Id -> Unsigned.UInt32.of_int 1
  | Detail -> Unsigned.UInt32.of_int 2
  | Closure -> Unsigned.UInt32.of_int 4
  | Func -> Unsigned.UInt32.of_int 8
  | Data -> Unsigned.UInt32.of_int 16
  | Unblocked -> Unsigned.UInt32.of_int 32

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Id ); ( 2 , Detail ); ( 4 , Closure ); ( 8 , Func ); ( 16 , Data ); ( 32 , Unblocked )]
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
