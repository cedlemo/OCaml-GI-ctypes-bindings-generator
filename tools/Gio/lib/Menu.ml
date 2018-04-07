open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_menu_new" (void @-> returning (t_typ))
let append =
  foreign "g_menu_append" (t_typ @-> string_opt @-> string_opt @-> returning (void))
let append_item =
  foreign "g_menu_append_item" (t_typ @-> Menu_item.t_typ @-> returning (void))
let append_section =
  foreign "g_menu_append_section" (t_typ @-> string_opt @-> Menu_model.t_typ @-> returning (void))
let append_submenu =
  foreign "g_menu_append_submenu" (t_typ @-> string_opt @-> Menu_model.t_typ @-> returning (void))
let freeze =
  foreign "g_menu_freeze" (t_typ @-> returning (void))
let insert =
  foreign "g_menu_insert" (t_typ @-> int32_t @-> string_opt @-> string_opt @-> returning (void))
let insert_item =
  foreign "g_menu_insert_item" (t_typ @-> int32_t @-> Menu_item.t_typ @-> returning (void))
let insert_section =
  foreign "g_menu_insert_section" (t_typ @-> int32_t @-> string_opt @-> Menu_model.t_typ @-> returning (void))
let insert_submenu =
  foreign "g_menu_insert_submenu" (t_typ @-> int32_t @-> string_opt @-> Menu_model.t_typ @-> returning (void))
let prepend =
  foreign "g_menu_prepend" (t_typ @-> string_opt @-> string_opt @-> returning (void))
let prepend_item =
  foreign "g_menu_prepend_item" (t_typ @-> Menu_item.t_typ @-> returning (void))
let prepend_section =
  foreign "g_menu_prepend_section" (t_typ @-> string_opt @-> Menu_model.t_typ @-> returning (void))
let prepend_submenu =
  foreign "g_menu_prepend_submenu" (t_typ @-> string_opt @-> Menu_model.t_typ @-> returning (void))
let remove =
  foreign "g_menu_remove" (t_typ @-> int32_t @-> returning (void))
let remove_all =
  foreign "g_menu_remove_all" (t_typ @-> returning (void))
