open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_text_child_anchor_new return type object not handled*)
val get_deleted:
  t structure ptr -> bool
val get_widgets:
  t structure ptr -> List.t structure ptr
