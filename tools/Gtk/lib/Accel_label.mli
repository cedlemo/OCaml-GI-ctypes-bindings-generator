open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_accel_label_new return type object not handled*)
val get_accel :
  t structure ptr -> (Unsigned.uint32 * Modifier_type.t_list)
(*Not implemented gtk_accel_label_get_accel_widget return type object not handled*)
val get_accel_width:
  t structure ptr -> Unsigned.uint32
val refetch:
  t structure ptr -> bool
val set_accel:
  t structure ptr -> Unsigned.uint32 -> Modifier_type.t_list -> unit
val set_accel_closure:
  t structure ptr -> Closure.t structure ptr option -> unit
(*Not implemented gtk_accel_label_set_accel_widget type object not implemented*)
