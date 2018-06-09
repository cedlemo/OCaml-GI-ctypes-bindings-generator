open Ctypes
open Foreign

type t = Readable | Writable | Readwrite | Construct | Construct_only | Lax_validation | Static_name | Private | Static_nick | Static_blurb | Explicit_notify | Deprecated
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Readable
  else if v = Unsigned.UInt32.of_int 2 then Writable
  else if v = Unsigned.UInt32.of_int 3 then Readwrite
  else if v = Unsigned.UInt32.of_int 4 then Construct
  else if v = Unsigned.UInt32.of_int 8 then Construct_only
  else if v = Unsigned.UInt32.of_int 16 then Lax_validation
  else if v = Unsigned.UInt32.of_int 32 then Static_name
  else if v = Unsigned.UInt32.of_int 32 then Private
  else if v = Unsigned.UInt32.of_int 64 then Static_nick
  else if v = Unsigned.UInt32.of_int 128 then Static_blurb
  else if v = Unsigned.UInt32.of_int 1073741824 then Explicit_notify
  else if v = Unsigned.UInt32.of_int 2147483648 then Deprecated
  else raise (Invalid_argument "Unexpected Param_flags value")

let to_value = function
  | Readable -> Unsigned.UInt32.of_int 1
  | Writable -> Unsigned.UInt32.of_int 2
  | Readwrite -> Unsigned.UInt32.of_int 3
  | Construct -> Unsigned.UInt32.of_int 4
  | Construct_only -> Unsigned.UInt32.of_int 8
  | Lax_validation -> Unsigned.UInt32.of_int 16
  | Static_name -> Unsigned.UInt32.of_int 32
  | Private -> Unsigned.UInt32.of_int 32
  | Static_nick -> Unsigned.UInt32.of_int 64
  | Static_blurb -> Unsigned.UInt32.of_int 128
  | Explicit_notify -> Unsigned.UInt32.of_int 1073741824
  | Deprecated -> Unsigned.UInt32.of_int 2147483648

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Readable ); ( 2 , Writable ); ( 3 , Readwrite ); ( 4 , Construct ); ( 8 , Construct_only ); ( 16 , Lax_validation ); ( 32 , Static_name ); ( 32 , Private ); ( 64 , Static_nick ); ( 128 , Static_blurb ); ( 1073741824 , Explicit_notify ); ( 2147483648 , Deprecated )]
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
