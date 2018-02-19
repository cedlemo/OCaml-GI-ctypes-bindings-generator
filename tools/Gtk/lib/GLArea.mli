open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_gl_area_new return type object not handled*)
val attach_buffers:
  t structure ptr -> unit
val get_auto_render:
  t structure ptr -> bool
(*Not implemented gtk_gl_area_get_context return type object not handled*)
val get_error:
  t structure ptr -> Error.t structure ptr option
val get_has_alpha:
  t structure ptr -> bool
val get_has_depth_buffer:
  t structure ptr -> bool
val get_has_stencil_buffer:
  t structure ptr -> bool
val get_required_version :
  t structure ptr -> (int32 * int32)
val get_use_es:
  t structure ptr -> bool
val make_current:
  t structure ptr -> unit
val queue_render:
  t structure ptr -> unit
val set_auto_render:
  t structure ptr -> bool -> unit
val set_error:
  t structure ptr -> Error.t structure ptr option -> unit
val set_has_alpha:
  t structure ptr -> bool -> unit
val set_has_depth_buffer:
  t structure ptr -> bool -> unit
val set_has_stencil_buffer:
  t structure ptr -> bool -> unit
val set_required_version:
  t structure ptr -> int32 -> int32 -> unit
val set_use_es:
  t structure ptr -> bool -> unit
