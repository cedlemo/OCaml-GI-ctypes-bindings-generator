open Ctypes
open Foreign

type t = Normal | Active | Prelight | Selected | Insensitive | Inconsistent | Focused | Backdrop | Dir_ltr | Dir_rtl | Link | Visited | Checked | Drop_active
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then Normal
  else if v = Unsigned.UInt32.of_int 1 then Active
  else if v = Unsigned.UInt32.of_int 2 then Prelight
  else if v = Unsigned.UInt32.of_int 4 then Selected
  else if v = Unsigned.UInt32.of_int 8 then Insensitive
  else if v = Unsigned.UInt32.of_int 16 then Inconsistent
  else if v = Unsigned.UInt32.of_int 32 then Focused
  else if v = Unsigned.UInt32.of_int 64 then Backdrop
  else if v = Unsigned.UInt32.of_int 128 then Dir_ltr
  else if v = Unsigned.UInt32.of_int 256 then Dir_rtl
  else if v = Unsigned.UInt32.of_int 512 then Link
  else if v = Unsigned.UInt32.of_int 1024 then Visited
  else if v = Unsigned.UInt32.of_int 2048 then Checked
  else if v = Unsigned.UInt32.of_int 4096 then Drop_active
  else raise (Invalid_argument "Unexpected State_flags value")

let to_value = function
  | Normal -> Unsigned.UInt32.of_int 0
  | Active -> Unsigned.UInt32.of_int 1
  | Prelight -> Unsigned.UInt32.of_int 2
  | Selected -> Unsigned.UInt32.of_int 4
  | Insensitive -> Unsigned.UInt32.of_int 8
  | Inconsistent -> Unsigned.UInt32.of_int 16
  | Focused -> Unsigned.UInt32.of_int 32
  | Backdrop -> Unsigned.UInt32.of_int 64
  | Dir_ltr -> Unsigned.UInt32.of_int 128
  | Dir_rtl -> Unsigned.UInt32.of_int 256
  | Link -> Unsigned.UInt32.of_int 512
  | Visited -> Unsigned.UInt32.of_int 1024
  | Checked -> Unsigned.UInt32.of_int 2048
  | Drop_active -> Unsigned.UInt32.of_int 4096

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 0 , Normal ); ( 1 , Active ); ( 2 , Prelight ); ( 4 , Selected ); ( 8 , Insensitive ); ( 16 , Inconsistent ); ( 32 , Focused ); ( 64 , Backdrop ); ( 128 , Dir_ltr ); ( 256 , Dir_rtl ); ( 512 , Link ); ( 1024 , Visited ); ( 2048 , Checked ); ( 4096 , Drop_active )]
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
