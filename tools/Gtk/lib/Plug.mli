open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_plug_new return type object not handled*)
(*Not implemented gtk_plug_new_for_display type object not implemented*)
val construct:
  t structure ptr -> Unsigned.uint64 -> unit
(*Not implemented gtk_plug_construct_for_display type object not implemented*)
val get_embedded:
  t structure ptr -> bool
val get_id:
  t structure ptr -> Unsigned.uint64
(*Not implemented gtk_plug_get_socket_window return type object not handled*)
