open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_aspect_frame_new return type object not handled*)
val set:
  t structure ptr -> float -> float -> float -> bool -> unit
