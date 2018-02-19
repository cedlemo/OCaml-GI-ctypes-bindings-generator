open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_hsv_new return type object not handled*)
val to_rgb :
  float -> float -> float -> (float * float * float)
val get_color :
  t structure ptr -> (float * float * float)
val get_metrics :
  t structure ptr -> (int32 * int32)
val is_adjusting:
  t structure ptr -> bool
val set_color:
  t structure ptr -> float -> float -> float -> unit
val set_metrics:
  t structure ptr -> int32 -> int32 -> unit
