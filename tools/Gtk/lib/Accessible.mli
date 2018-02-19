open Ctypes

type t
val t_typ : t typ

val connect_widget_destroyed:
  t structure ptr -> unit
(*Not implemented gtk_accessible_get_widget return type object not handled*)
(*Not implemented gtk_accessible_set_widget type object not implemented*)
