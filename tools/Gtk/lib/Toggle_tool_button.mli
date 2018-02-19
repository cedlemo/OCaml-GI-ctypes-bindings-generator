open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_toggle_tool_button_new return type object not handled*)
(*Not implemented gtk_toggle_tool_button_new_from_stock return type object not handled*)
val get_active:
  t structure ptr -> bool
val set_active:
  t structure ptr -> bool -> unit
