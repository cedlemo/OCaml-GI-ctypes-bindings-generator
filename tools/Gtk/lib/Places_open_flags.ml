open Ctypes
open Foreign

type t = Normal | New_tab | New_window
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Normal
  else if v = Unsigned.UInt32.of_int 2 then New_tab
  else if v = Unsigned.UInt32.of_int 4 then New_window
  else raise (Invalid_argument "Unexpected Places_open_flags value")

let to_value = function
  | Normal -> Unsigned.UInt32.of_int 1
  | New_tab -> Unsigned.UInt32.of_int 2
  | New_window -> Unsigned.UInt32.of_int 4

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Normal ); ( 2 , New_tab ); ( 4 , New_window )]
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
