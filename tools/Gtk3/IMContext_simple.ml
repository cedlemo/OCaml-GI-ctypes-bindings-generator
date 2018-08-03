open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_im_context_simple_new" (void @-> returning (ptr IMContext.t_typ))
let add_compose_file =
  foreign "gtk_im_context_simple_add_compose_file" (t_typ @-> string @-> returning (void))
