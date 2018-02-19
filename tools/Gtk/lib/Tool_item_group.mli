open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_tool_item_group_new return type object not handled*)
val get_collapsed:
  t structure ptr -> bool
(*Not implemented gtk_tool_item_group_get_drop_item return type object not handled*)
val get_ellipsize:
  t structure ptr -> Ellipsize_mode.t
val get_header_relief:
  t structure ptr -> Relief_style.t
(*Not implemented gtk_tool_item_group_get_item_position type object not implemented*)
val get_label:
  t structure ptr -> string option
(*Not implemented gtk_tool_item_group_get_label_widget return type object not handled*)
val get_n_items:
  t structure ptr -> Unsigned.uint32
(*Not implemented gtk_tool_item_group_get_nth_item return type object not handled*)
(*Not implemented gtk_tool_item_group_insert type object not implemented*)
val set_collapsed:
  t structure ptr -> bool -> unit
val set_ellipsize:
  t structure ptr -> Ellipsize_mode.t -> unit
val set_header_relief:
  t structure ptr -> Relief_style.t -> unit
(*Not implemented gtk_tool_item_group_set_item_position type object not implemented*)
val set_label:
  t structure ptr -> string -> unit
(*Not implemented gtk_tool_item_group_set_label_widget type object not implemented*)
