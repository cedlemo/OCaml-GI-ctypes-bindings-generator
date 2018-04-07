open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_name =
  foreign "g_menu_link_iter_get_name" (t_typ @-> returning (string_opt))
let get_next self =
  let get_next_raw =
    foreign "g_menu_link_iter_get_next" (t_typ @-> ptr (string) @-> ptr (Menu_model.t_typ) @-> returning (bool))
  in
  let out_link_ptr = allocate string " " in
  let value_ptr = allocate (ptr_opt Menu_model.t_typ) None in
  let ret = get_next_raw self out_link_ptr value_ptr in
  let out_link = !@ out_link_ptr in
  let value = !@ value_ptr in
  (ret, out_link, value)
let get_value =
  foreign "g_menu_link_iter_get_value" (t_typ @-> returning (Menu_model.t_typ))
let next =
  foreign "g_menu_link_iter_next" (t_typ @-> returning (bool))
