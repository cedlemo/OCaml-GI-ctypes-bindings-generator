open Ctypes

type t
val t_typ : t typ

val allocate:
  t structure ptr -> int32 -> int32 -> unit
val get_allocation :
  t structure ptr -> (int32 * int32)
(*Not implemented gtk_cell_area_context_get_area return type object not handled*)
val get_preferred_height :
  t structure ptr -> (int32 * int32)
val get_preferred_height_for_width :
  t structure ptr -> int32 -> (int32 * int32)
val get_preferred_width :
  t structure ptr -> (int32 * int32)
val get_preferred_width_for_height :
  t structure ptr -> int32 -> (int32 * int32)
val push_preferred_height:
  t structure ptr -> int32 -> int32 -> unit
val push_preferred_width:
  t structure ptr -> int32 -> int32 -> unit
val reset:
  t structure ptr -> unit
