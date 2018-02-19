open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_socket_new return type object not handled*)
val add_id:
  t structure ptr -> Unsigned.uint64 -> unit
val get_id:
  t structure ptr -> Unsigned.uint64
(*Not implemented gtk_socket_get_plug_window return type object not handled*)
