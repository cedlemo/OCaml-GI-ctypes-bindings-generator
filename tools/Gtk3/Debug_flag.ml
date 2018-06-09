open Ctypes
open Foreign

type t = Misc | Plugsocket | Text | Tree | Updates | Keybindings | Multihead | Modules | Geometry | Icontheme | Printing | Builder | Size_request | No_css_cache | Baselines | Pixel_cache | No_pixel_cache | Interactive | Touchscreen | Actions | Resize | Layout
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Misc
  else if v = Unsigned.UInt32.of_int 2 then Plugsocket
  else if v = Unsigned.UInt32.of_int 4 then Text
  else if v = Unsigned.UInt32.of_int 8 then Tree
  else if v = Unsigned.UInt32.of_int 16 then Updates
  else if v = Unsigned.UInt32.of_int 32 then Keybindings
  else if v = Unsigned.UInt32.of_int 64 then Multihead
  else if v = Unsigned.UInt32.of_int 128 then Modules
  else if v = Unsigned.UInt32.of_int 256 then Geometry
  else if v = Unsigned.UInt32.of_int 512 then Icontheme
  else if v = Unsigned.UInt32.of_int 1024 then Printing
  else if v = Unsigned.UInt32.of_int 2048 then Builder
  else if v = Unsigned.UInt32.of_int 4096 then Size_request
  else if v = Unsigned.UInt32.of_int 8192 then No_css_cache
  else if v = Unsigned.UInt32.of_int 16384 then Baselines
  else if v = Unsigned.UInt32.of_int 32768 then Pixel_cache
  else if v = Unsigned.UInt32.of_int 65536 then No_pixel_cache
  else if v = Unsigned.UInt32.of_int 131072 then Interactive
  else if v = Unsigned.UInt32.of_int 262144 then Touchscreen
  else if v = Unsigned.UInt32.of_int 524288 then Actions
  else if v = Unsigned.UInt32.of_int 1048576 then Resize
  else if v = Unsigned.UInt32.of_int 2097152 then Layout
  else raise (Invalid_argument "Unexpected Debug_flag value")

let to_value = function
  | Misc -> Unsigned.UInt32.of_int 1
  | Plugsocket -> Unsigned.UInt32.of_int 2
  | Text -> Unsigned.UInt32.of_int 4
  | Tree -> Unsigned.UInt32.of_int 8
  | Updates -> Unsigned.UInt32.of_int 16
  | Keybindings -> Unsigned.UInt32.of_int 32
  | Multihead -> Unsigned.UInt32.of_int 64
  | Modules -> Unsigned.UInt32.of_int 128
  | Geometry -> Unsigned.UInt32.of_int 256
  | Icontheme -> Unsigned.UInt32.of_int 512
  | Printing -> Unsigned.UInt32.of_int 1024
  | Builder -> Unsigned.UInt32.of_int 2048
  | Size_request -> Unsigned.UInt32.of_int 4096
  | No_css_cache -> Unsigned.UInt32.of_int 8192
  | Baselines -> Unsigned.UInt32.of_int 16384
  | Pixel_cache -> Unsigned.UInt32.of_int 32768
  | No_pixel_cache -> Unsigned.UInt32.of_int 65536
  | Interactive -> Unsigned.UInt32.of_int 131072
  | Touchscreen -> Unsigned.UInt32.of_int 262144
  | Actions -> Unsigned.UInt32.of_int 524288
  | Resize -> Unsigned.UInt32.of_int 1048576
  | Layout -> Unsigned.UInt32.of_int 2097152

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Misc ); ( 2 , Plugsocket ); ( 4 , Text ); ( 8 , Tree ); ( 16 , Updates ); ( 32 , Keybindings ); ( 64 , Multihead ); ( 128 , Modules ); ( 256 , Geometry ); ( 512 , Icontheme ); ( 1024 , Printing ); ( 2048 , Builder ); ( 4096 , Size_request ); ( 8192 , No_css_cache ); ( 16384 , Baselines ); ( 32768 , Pixel_cache ); ( 65536 , No_pixel_cache ); ( 131072 , Interactive ); ( 262144 , Touchscreen ); ( 524288 , Actions ); ( 1048576 , Resize ); ( 2097152 , Layout )]
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
