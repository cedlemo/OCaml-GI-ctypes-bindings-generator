open Ctypes
open Foreign

type t = Show_heading | Show_day_names | No_month_change | Show_week_numbers | Show_details
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Show_heading
  else if v = Unsigned.UInt32.of_int 2 then Show_day_names
  else if v = Unsigned.UInt32.of_int 4 then No_month_change
  else if v = Unsigned.UInt32.of_int 8 then Show_week_numbers
  else if v = Unsigned.UInt32.of_int 32 then Show_details
  else raise (Invalid_argument "Unexpected Calendar_display_options value")

let to_value = function
  | Show_heading -> Unsigned.UInt32.of_int 1
  | Show_day_names -> Unsigned.UInt32.of_int 2
  | No_month_change -> Unsigned.UInt32.of_int 4
  | Show_week_numbers -> Unsigned.UInt32.of_int 8
  | Show_details -> Unsigned.UInt32.of_int 32

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Show_heading ); ( 2 , Show_day_names ); ( 4 , No_month_change ); ( 8 , Show_week_numbers ); ( 32 , Show_details )]
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
