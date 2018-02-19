open Ctypes
open Foreign

type t = None | Corner_topleft | Corner_topright | Corner_bottomleft | Corner_bottomright | Top | Bottom | Left | Right
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 0 then None
  else if v = Unsigned.UInt32.of_int 1 then Corner_topleft
  else if v = Unsigned.UInt32.of_int 2 then Corner_topright
  else if v = Unsigned.UInt32.of_int 4 then Corner_bottomleft
  else if v = Unsigned.UInt32.of_int 8 then Corner_bottomright
  else if v = Unsigned.UInt32.of_int 3 then Top
  else if v = Unsigned.UInt32.of_int 12 then Bottom
  else if v = Unsigned.UInt32.of_int 5 then Left
  else if v = Unsigned.UInt32.of_int 10 then Right
  else raise (Invalid_argument "Unexpected Junction_sides value")

let to_value = function
  | None -> Unsigned.UInt32.of_int 0
  | Corner_topleft -> Unsigned.UInt32.of_int 1
  | Corner_topright -> Unsigned.UInt32.of_int 2
  | Corner_bottomleft -> Unsigned.UInt32.of_int 4
  | Corner_bottomright -> Unsigned.UInt32.of_int 8
  | Top -> Unsigned.UInt32.of_int 3
  | Bottom -> Unsigned.UInt32.of_int 12
  | Left -> Unsigned.UInt32.of_int 5
  | Right -> Unsigned.UInt32.of_int 10

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 0 , None ); ( 1 , Corner_topleft ); ( 2 , Corner_topright ); ( 4 , Corner_bottomleft ); ( 8 , Corner_bottomright ); ( 3 , Top ); ( 12 , Bottom ); ( 5 , Left ); ( 10 , Right )]
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
