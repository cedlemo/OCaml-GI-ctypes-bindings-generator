open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_cell_renderer_activate type union not implemented*)
(*Not implemented gtk_cell_renderer_get_aligned_area type object not implemented*)
val get_alignment :
  t structure ptr -> (float * float)
val get_fixed_size :
  t structure ptr -> (int32 * int32)
val get_padding :
  t structure ptr -> (int32 * int32)
(*Not implemented gtk_cell_renderer_get_preferred_height type object not implemented*)
(*Not implemented gtk_cell_renderer_get_preferred_height_for_width type object not implemented*)
(*Not implemented gtk_cell_renderer_get_preferred_size type object not implemented*)
(*Not implemented gtk_cell_renderer_get_preferred_width type object not implemented*)
(*Not implemented gtk_cell_renderer_get_preferred_width_for_height type object not implemented*)
val get_request_mode:
  t structure ptr -> Size_request_mode.t
val get_sensitive:
  t structure ptr -> bool
(*Not implemented gtk_cell_renderer_get_size type object not implemented*)
(*Not implemented gtk_cell_renderer_get_state type object not implemented*)
val get_visible:
  t structure ptr -> bool
val is_activatable:
  t structure ptr -> bool
(*Not implemented gtk_cell_renderer_render type object not implemented*)
val set_alignment:
  t structure ptr -> float -> float -> unit
val set_fixed_size:
  t structure ptr -> int32 -> int32 -> unit
val set_padding:
  t structure ptr -> int32 -> int32 -> unit
val set_sensitive:
  t structure ptr -> bool -> unit
val set_visible:
  t structure ptr -> bool -> unit
(*Not implemented gtk_cell_renderer_start_editing type union not implemented*)
val stop_editing:
  t structure ptr -> bool -> unit
