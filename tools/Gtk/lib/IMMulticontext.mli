open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_im_multicontext_new return type object not handled*)
(*Not implemented gtk_im_multicontext_append_menuitems type object not implemented*)
val get_context_id:
  t structure ptr -> string option
val set_context_id:
  t structure ptr -> string -> unit
