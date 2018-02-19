open Ctypes
open Foreign

type t = No_svg | Force_svg | Use_builtin | Generic_fallback | Force_size | Force_regular | Force_symbolic | Dir_ltr | Dir_rtl
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then No_svg
  else if v = Unsigned.UInt32.of_int 2 then Force_svg
  else if v = Unsigned.UInt32.of_int 4 then Use_builtin
  else if v = Unsigned.UInt32.of_int 8 then Generic_fallback
  else if v = Unsigned.UInt32.of_int 16 then Force_size
  else if v = Unsigned.UInt32.of_int 32 then Force_regular
  else if v = Unsigned.UInt32.of_int 64 then Force_symbolic
  else if v = Unsigned.UInt32.of_int 128 then Dir_ltr
  else if v = Unsigned.UInt32.of_int 256 then Dir_rtl
  else raise (Invalid_argument "Unexpected Icon_lookup_flags value")

let to_value = function
  | No_svg -> Unsigned.UInt32.of_int 1
  | Force_svg -> Unsigned.UInt32.of_int 2
  | Use_builtin -> Unsigned.UInt32.of_int 4
  | Generic_fallback -> Unsigned.UInt32.of_int 8
  | Force_size -> Unsigned.UInt32.of_int 16
  | Force_regular -> Unsigned.UInt32.of_int 32
  | Force_symbolic -> Unsigned.UInt32.of_int 64
  | Dir_ltr -> Unsigned.UInt32.of_int 128
  | Dir_rtl -> Unsigned.UInt32.of_int 256

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , No_svg ); ( 2 , Force_svg ); ( 4 , Use_builtin ); ( 8 , Generic_fallback ); ( 16 , Force_size ); ( 32 , Force_regular ); ( 64 , Force_symbolic ); ( 128 , Dir_ltr ); ( 256 , Dir_rtl )]
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
