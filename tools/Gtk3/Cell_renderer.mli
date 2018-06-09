open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_cell_renderer_activate type union not implemented*)
val get_aligned_area :
  t -> Widget.t -> Cell_renderer_state.t_list -> Rectangle.t structure ptr -> (Rectangle.t structure)
val get_alignment :
  t -> (float * float)
val get_fixed_size :
  t -> (int32 * int32)
val get_padding :
  t -> (int32 * int32)
val get_preferred_height :
  t -> Widget.t -> (int32 * int32)
val get_preferred_height_for_width :
  t -> Widget.t -> int32 -> (int32 * int32)
val get_preferred_size :
  t -> Widget.t -> (Requisition.t structure * Requisition.t structure)
val get_preferred_width :
  t -> Widget.t -> (int32 * int32)
val get_preferred_width_for_height :
  t -> Widget.t -> int32 -> (int32 * int32)
val get_request_mode :
  t -> Size_request_mode.t
val get_sensitive :
  t -> bool
val get_size :
  t -> Widget.t -> Rectangle.t structure ptr option -> (int32 * int32 * int32 * int32)
val get_state :
  t -> Widget.t -> Cell_renderer_state.t_list -> State_flags.t_list
val get_visible :
  t -> bool
val is_activatable :
  t -> bool
val render :
  t -> Context.t structure ptr -> Widget.t -> Rectangle.t structure ptr -> Rectangle.t structure ptr -> Cell_renderer_state.t_list -> unit
val set_alignment :
  t -> float -> float -> unit
val set_fixed_size :
  t -> int32 -> int32 -> unit
val set_padding :
  t -> int32 -> int32 -> unit
val set_sensitive :
  t -> bool -> unit
val set_visible :
  t -> bool -> unit
(*Not implemented gtk_cell_renderer_start_editing type union not implemented*)
val stop_editing :
  t -> bool -> unit
