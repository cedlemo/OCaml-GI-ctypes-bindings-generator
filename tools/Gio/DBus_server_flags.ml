open Ctypes
open Foreign

type t = None | Run_in_thread | Authentication_allow_anonymous
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Run_in_thread
  else if v = Unsigned.UInt32.of_int 2 then Authentication_allow_anonymous
  else raise (Invalid_argument "Unexpected DBus_server_flags value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Run_in_thread -> Unsigned.UInt32.of_int 1
  | Authentication_allow_anonymous -> Unsigned.UInt32.of_int 2

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 0 , None ); ( 1 , Run_in_thread ); ( 2 , Authentication_allow_anonymous )]
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
