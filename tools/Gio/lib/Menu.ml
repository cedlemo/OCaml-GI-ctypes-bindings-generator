open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_menu_new return type object not handled*)
let append =
  foreign "g_menu_append" (ptr t_typ @-> string_opt @-> string_opt @-> returning (void))
(*Not implemented g_menu_append_item type object not implemented*)
(*Not implemented g_menu_append_section type object not implemented*)
(*Not implemented g_menu_append_submenu type object not implemented*)
let freeze =
  foreign "g_menu_freeze" (ptr t_typ @-> returning (void))
let insert =
  foreign "g_menu_insert" (ptr t_typ @-> int32_t @-> string_opt @-> string_opt @-> returning (void))
(*Not implemented g_menu_insert_item type object not implemented*)
(*Not implemented g_menu_insert_section type object not implemented*)
(*Not implemented g_menu_insert_submenu type object not implemented*)
let prepend =
  foreign "g_menu_prepend" (ptr t_typ @-> string_opt @-> string_opt @-> returning (void))
(*Not implemented g_menu_prepend_item type object not implemented*)
(*Not implemented g_menu_prepend_section type object not implemented*)
(*Not implemented g_menu_prepend_submenu type object not implemented*)
let remove =
  foreign "g_menu_remove" (ptr t_typ @-> int32_t @-> returning (void))
let remove_all =
  foreign "g_menu_remove_all" (ptr t_typ @-> returning (void))
