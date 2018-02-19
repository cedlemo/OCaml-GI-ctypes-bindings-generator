open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_notebook_page_accessible_new type object not implemented*)
let invalidate =
  foreign "gtk_notebook_page_accessible_invalidate" (ptr t_typ @-> returning (void))
