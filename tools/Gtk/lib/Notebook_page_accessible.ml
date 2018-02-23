open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_notebook_page_accessible_new" (Notebook_accessible.t_typ @-> Widget.t_typ @-> returning (Object.t_typ))
let invalidate =
  foreign "gtk_notebook_page_accessible_invalidate" (t_typ @-> returning (void))
