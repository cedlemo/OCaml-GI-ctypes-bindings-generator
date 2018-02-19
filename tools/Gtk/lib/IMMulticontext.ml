open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_im_multicontext_new return type object not handled*)
(*Not implemented gtk_im_multicontext_append_menuitems type object not implemented*)
let get_context_id =
  foreign "gtk_im_multicontext_get_context_id" (ptr t_typ @-> returning (string_opt))
let set_context_id =
  foreign "gtk_im_multicontext_set_context_id" (ptr t_typ @-> string @-> returning (void))
