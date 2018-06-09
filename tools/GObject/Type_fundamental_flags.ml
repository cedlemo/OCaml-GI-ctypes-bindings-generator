open Ctypes
open Foreign

type t = Classed | Instantiatable | Derivable | Deep_derivable
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Classed
  else if v = Unsigned.UInt32.of_int 2 then Instantiatable
  else if v = Unsigned.UInt32.of_int 4 then Derivable
  else if v = Unsigned.UInt32.of_int 8 then Deep_derivable
  else raise (Invalid_argument "Unexpected Type_fundamental_flags value")

let to_value = function
  | Classed -> Unsigned.UInt32.of_int 1
  | Instantiatable -> Unsigned.UInt32.of_int 2
  | Derivable -> Unsigned.UInt32.of_int 4
  | Deep_derivable -> Unsigned.UInt32.of_int 8

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Classed ); ( 2 , Instantiatable ); ( 4 , Derivable ); ( 8 , Deep_derivable )]
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
