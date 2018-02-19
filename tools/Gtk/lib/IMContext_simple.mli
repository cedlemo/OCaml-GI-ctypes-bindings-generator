open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_im_context_simple_new return type object not handled*)
val add_compose_file:
  t structure ptr -> string -> unit
