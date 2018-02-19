open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_separator_tool_item_new return type object not handled*)
val get_draw:
  t structure ptr -> bool
val set_draw:
  t structure ptr -> bool -> unit
