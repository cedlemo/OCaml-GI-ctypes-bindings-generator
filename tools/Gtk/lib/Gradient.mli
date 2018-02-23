open Ctypes

type t
val t_typ : t structure typ

val create_linear:
  float -> float -> float -> float -> t structure ptr
val create_radial:
  float -> float -> float -> float -> float -> float -> t structure ptr
val add_color_stop:
  t structure -> float -> Symbolic_color.t structure ptr -> unit
val incr_ref:
  t structure -> t structure ptr
val resolve :
  t structure -> Style_properties.t -> (bool * Pattern.t structure ptr)
val resolve_for_context:
  t structure -> Style_context.t -> Pattern.t structure ptr
val to_string:
  t structure -> string option
val unref:
  t structure -> unit
