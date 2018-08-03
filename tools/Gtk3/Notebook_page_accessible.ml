open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_notebook_page_accessible_new" (ptr Notebook_accessible.t_typ @-> ptr Widget.t_typ @-> returning (ptr Object.t_typ))
let invalidate =
  foreign "gtk_notebook_page_accessible_invalidate" (t_typ @-> returning (void))
