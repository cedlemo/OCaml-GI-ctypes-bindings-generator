open Ctypes

type t
val t_typ : t structure typ

val create_linear:
  float -> float -> float -> float -> t structure ptr
val create_radial:
  float -> float -> float -> float -> float -> float -> t structure ptr
val add_color_stop:
  t structure ptr -> float -> Symbolic_color.t structure ptr -> unit
val incr_ref:
  t structure ptr -> t structure ptr
(*Not implemented gtk_gradient_resolve type object not implemented*)
(*Not implemented gtk_gradient_resolve_for_context type object not implemented*)
val to_string:
  t structure ptr -> string option
val unref:
  t structure ptr -> unit
