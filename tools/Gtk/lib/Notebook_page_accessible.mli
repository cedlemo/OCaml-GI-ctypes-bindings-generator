open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_notebook_page_accessible_new type object not implemented*)
val invalidate:
  t structure ptr -> unit
