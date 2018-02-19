open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_im_context_simple_new return type object not handled*)
let add_compose_file =
  foreign "gtk_im_context_simple_add_compose_file" (ptr t_typ @-> string @-> returning (void))
