open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_im_multicontext_new" (void @-> returning (IMContext.t_typ))
let append_menuitems =
  foreign "gtk_im_multicontext_append_menuitems" (t_typ @-> Menu_shell.t_typ @-> returning (void))
let get_context_id =
  foreign "gtk_im_multicontext_get_context_id" (t_typ @-> returning (string_opt))
let set_context_id =
  foreign "gtk_im_multicontext_set_context_id" (t_typ @-> string @-> returning (void))
