open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_level_bar_new return type object not handled*)
(*Not implemented gtk_level_bar_new_for_interval return type object not handled*)
val add_offset_value:
  t structure ptr -> string -> float -> unit
val get_inverted:
  t structure ptr -> bool
val get_max_value:
  t structure ptr -> float
val get_min_value:
  t structure ptr -> float
val get_mode:
  t structure ptr -> Level_bar_mode.t
val get_offset_value :
  t structure ptr -> string option -> (bool * float)
val get_value:
  t structure ptr -> float
val remove_offset_value:
  t structure ptr -> string option -> unit
val set_inverted:
  t structure ptr -> bool -> unit
val set_max_value:
  t structure ptr -> float -> unit
val set_min_value:
  t structure ptr -> float -> unit
val set_mode:
  t structure ptr -> Level_bar_mode.t -> unit
val set_value:
  t structure ptr -> float -> unit
