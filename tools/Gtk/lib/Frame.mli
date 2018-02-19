open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_frame_new return type object not handled*)
val get_label:
  t structure ptr -> string option
val get_label_align :
  t structure ptr -> (float * float)
(*Not implemented gtk_frame_get_label_widget return type object not handled*)
val get_shadow_type:
  t structure ptr -> Shadow_type.t
val set_label:
  t structure ptr -> string option -> unit
val set_label_align:
  t structure ptr -> float -> float -> unit
(*Not implemented gtk_frame_set_label_widget type object not implemented*)
val set_shadow_type:
  t structure ptr -> Shadow_type.t -> unit
