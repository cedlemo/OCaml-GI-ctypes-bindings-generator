open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_scrolled_window_new type object not implemented*)
(*Not implemented gtk_scrolled_window_add_with_viewport type object not implemented*)
val get_capture_button_press:
  t structure ptr -> bool
(*Not implemented gtk_scrolled_window_get_hadjustment return type object not handled*)
(*Not implemented gtk_scrolled_window_get_hscrollbar return type object not handled*)
val get_kinetic_scrolling:
  t structure ptr -> bool
val get_max_content_height:
  t structure ptr -> int32
val get_max_content_width:
  t structure ptr -> int32
val get_min_content_height:
  t structure ptr -> int32
val get_min_content_width:
  t structure ptr -> int32
val get_overlay_scrolling:
  t structure ptr -> bool
val get_placement:
  t structure ptr -> Corner_type.t
val get_policy :
  t structure ptr -> (Policy_type.t * Policy_type.t)
val get_propagate_natural_height:
  t structure ptr -> bool
val get_propagate_natural_width:
  t structure ptr -> bool
val get_shadow_type:
  t structure ptr -> Shadow_type.t
(*Not implemented gtk_scrolled_window_get_vadjustment return type object not handled*)
(*Not implemented gtk_scrolled_window_get_vscrollbar return type object not handled*)
val set_capture_button_press:
  t structure ptr -> bool -> unit
(*Not implemented gtk_scrolled_window_set_hadjustment type object not implemented*)
val set_kinetic_scrolling:
  t structure ptr -> bool -> unit
val set_max_content_height:
  t structure ptr -> int32 -> unit
val set_max_content_width:
  t structure ptr -> int32 -> unit
val set_min_content_height:
  t structure ptr -> int32 -> unit
val set_min_content_width:
  t structure ptr -> int32 -> unit
val set_overlay_scrolling:
  t structure ptr -> bool -> unit
val set_placement:
  t structure ptr -> Corner_type.t -> unit
val set_policy:
  t structure ptr -> Policy_type.t -> Policy_type.t -> unit
val set_propagate_natural_height:
  t structure ptr -> bool -> unit
val set_propagate_natural_width:
  t structure ptr -> bool -> unit
val set_shadow_type:
  t structure ptr -> Shadow_type.t -> unit
(*Not implemented gtk_scrolled_window_set_vadjustment type object not implemented*)
val unset_placement:
  t structure ptr -> unit
