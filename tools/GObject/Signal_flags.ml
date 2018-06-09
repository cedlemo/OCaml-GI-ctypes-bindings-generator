open Ctypes
open Foreign

type t = Run_first | Run_last | Run_cleanup | No_recurse | Detailed | Action | No_hooks | Must_collect | Deprecated
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Run_first
  else if v = Unsigned.UInt32.of_int 2 then Run_last
  else if v = Unsigned.UInt32.of_int 4 then Run_cleanup
  else if v = Unsigned.UInt32.of_int 8 then No_recurse
  else if v = Unsigned.UInt32.of_int 16 then Detailed
  else if v = Unsigned.UInt32.of_int 32 then Action
  else if v = Unsigned.UInt32.of_int 64 then No_hooks
  else if v = Unsigned.UInt32.of_int 128 then Must_collect
  else if v = Unsigned.UInt32.of_int 256 then Deprecated
  else raise (Invalid_argument "Unexpected Signal_flags value")

let to_value = function
  | Run_first -> Unsigned.UInt32.of_int 1
  | Run_last -> Unsigned.UInt32.of_int 2
  | Run_cleanup -> Unsigned.UInt32.of_int 4
  | No_recurse -> Unsigned.UInt32.of_int 8
  | Detailed -> Unsigned.UInt32.of_int 16
  | Action -> Unsigned.UInt32.of_int 32
  | No_hooks -> Unsigned.UInt32.of_int 64
  | Must_collect -> Unsigned.UInt32.of_int 128
  | Deprecated -> Unsigned.UInt32.of_int 256

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Run_first ); ( 2 , Run_last ); ( 4 , Run_cleanup ); ( 8 , No_recurse ); ( 16 , Detailed ); ( 32 , Action ); ( 64 , No_hooks ); ( 128 , Must_collect ); ( 256 , Deprecated )]
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
