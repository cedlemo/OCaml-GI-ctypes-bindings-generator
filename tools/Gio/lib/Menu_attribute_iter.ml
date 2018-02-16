open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_name =
  foreign "g_menu_attribute_iter_get_name" (ptr t_typ @-> returning (string_opt))
let get_next self =
  let out_name_ptr = allocate string " " in
  let value_ptr = allocate (ptr_opt Variant.t_typ) None in
  let get_next_raw =
    foreign "g_menu_attribute_iter_get_next" (ptr t_typ @-> ptr (string) @-> ptr (ptr Variant.t_typ) @-> returning bool)
  in
  let ret = get_next_raw self out_name_ptr value_ptr in
  let out_name = !@ out_name_ptr in
  let value = !@ value_ptr in
  (ret, out_name, value)
let get_value =
  foreign "g_menu_attribute_iter_get_value" (ptr t_typ @-> returning (ptr Variant.t_typ))
let next =
  foreign "g_menu_attribute_iter_next" (ptr t_typ @-> returning (bool))
