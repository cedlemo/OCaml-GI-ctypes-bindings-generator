open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_app_chooser_widget_new return type object not handled*)
val get_default_text:
  t structure ptr -> string option
val get_show_all:
  t structure ptr -> bool
val get_show_default:
  t structure ptr -> bool
val get_show_fallback:
  t structure ptr -> bool
val get_show_other:
  t structure ptr -> bool
val get_show_recommended:
  t structure ptr -> bool
val set_default_text:
  t structure ptr -> string -> unit
val set_show_all:
  t structure ptr -> bool -> unit
val set_show_default:
  t structure ptr -> bool -> unit
val set_show_fallback:
  t structure ptr -> bool -> unit
val set_show_other:
  t structure ptr -> bool -> unit
val set_show_recommended:
  t structure ptr -> bool -> unit
