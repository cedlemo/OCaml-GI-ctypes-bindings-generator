open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_size_group_new return type object not handled*)
(*Not implemented gtk_size_group_add_widget type object not implemented*)
val get_ignore_hidden:
  t structure ptr -> bool
val get_mode:
  t structure ptr -> Size_group_mode.t
val get_widgets:
  t structure ptr -> SList.t structure ptr
(*Not implemented gtk_size_group_remove_widget type object not implemented*)
val set_ignore_hidden:
  t structure ptr -> bool -> unit
val set_mode:
  t structure ptr -> Size_group_mode.t -> unit
