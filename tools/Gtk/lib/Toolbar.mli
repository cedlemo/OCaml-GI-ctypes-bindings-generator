open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_toolbar_new return type object not handled*)
val get_drop_index:
  t structure ptr -> int32 -> int32 -> int32
val get_icon_size:
  t structure ptr -> Icon_size.t
(*Not implemented gtk_toolbar_get_item_index type object not implemented*)
val get_n_items:
  t structure ptr -> int32
(*Not implemented gtk_toolbar_get_nth_item return type object not handled*)
val get_relief_style:
  t structure ptr -> Relief_style.t
val get_show_arrow:
  t structure ptr -> bool
val get_style:
  t structure ptr -> Toolbar_style.t
(*Not implemented gtk_toolbar_insert type object not implemented*)
(*Not implemented gtk_toolbar_set_drop_highlight_item type object not implemented*)
val set_icon_size:
  t structure ptr -> Icon_size.t -> unit
val set_show_arrow:
  t structure ptr -> bool -> unit
val set_style:
  t structure ptr -> Toolbar_style.t -> unit
val unset_icon_size:
  t structure ptr -> unit
val unset_style:
  t structure ptr -> unit
