open Ctypes

type t
val t_typ : t typ

(*Not implemented g_menu_new return type object not handled*)
val append:
  t structure ptr -> string option -> string option -> unit
(*Not implemented g_menu_append_item type object not implemented*)
(*Not implemented g_menu_append_section type object not implemented*)
(*Not implemented g_menu_append_submenu type object not implemented*)
val freeze:
  t structure ptr -> unit
val insert:
  t structure ptr -> int32 -> string option -> string option -> unit
(*Not implemented g_menu_insert_item type object not implemented*)
(*Not implemented g_menu_insert_section type object not implemented*)
(*Not implemented g_menu_insert_submenu type object not implemented*)
val prepend:
  t structure ptr -> string option -> string option -> unit
(*Not implemented g_menu_prepend_item type object not implemented*)
(*Not implemented g_menu_prepend_section type object not implemented*)
(*Not implemented g_menu_prepend_submenu type object not implemented*)
val remove:
  t structure ptr -> int32 -> unit
val remove_all:
  t structure ptr -> unit
