open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_scale_new type object not implemented*)
(*Not implemented gtk_scale_new_with_range return type object not handled*)
val add_mark:
  t structure ptr -> float -> Position_type.t -> string option -> unit
val clear_marks:
  t structure ptr -> unit
val get_digits:
  t structure ptr -> int32
val get_draw_value:
  t structure ptr -> bool
val get_has_origin:
  t structure ptr -> bool
(*Not implemented gtk_scale_get_layout return type object not handled*)
val get_layout_offsets :
  t structure ptr -> (int32 * int32)
val get_value_pos:
  t structure ptr -> Position_type.t
val set_digits:
  t structure ptr -> int32 -> unit
val set_draw_value:
  t structure ptr -> bool -> unit
val set_has_origin:
  t structure ptr -> bool -> unit
val set_value_pos:
  t structure ptr -> Position_type.t -> unit
