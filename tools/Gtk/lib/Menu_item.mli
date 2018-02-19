open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_menu_item_new return type object not handled*)
(*Not implemented gtk_menu_item_new_with_label return type object not handled*)
(*Not implemented gtk_menu_item_new_with_mnemonic return type object not handled*)
val activate:
  t structure ptr -> unit
val deselect:
  t structure ptr -> unit
val get_accel_path:
  t structure ptr -> string option
val get_label:
  t structure ptr -> string option
val get_reserve_indicator:
  t structure ptr -> bool
val get_right_justified:
  t structure ptr -> bool
(*Not implemented gtk_menu_item_get_submenu return type object not handled*)
val get_use_underline:
  t structure ptr -> bool
val select:
  t structure ptr -> unit
val set_accel_path:
  t structure ptr -> string option -> unit
val set_label:
  t structure ptr -> string -> unit
val set_reserve_indicator:
  t structure ptr -> bool -> unit
val set_right_justified:
  t structure ptr -> bool -> unit
(*Not implemented gtk_menu_item_set_submenu type object not implemented*)
val set_use_underline:
  t structure ptr -> bool -> unit
val toggle_size_allocate:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_menu_item_toggle_size_request - in out argument not handled*)
