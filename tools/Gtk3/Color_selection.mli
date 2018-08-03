open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
(*Not implemented gtk_color_selection_palette_from_string type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_color_selection_palette_to_string type C Array type for Types.Array tag not implemented*)
val get_current_alpha :
  t -> Unsigned.uint16
val get_current_color :
  t -> (Color.t structure)
val get_current_rgba :
  t -> (RGBA.t structure)
val get_has_opacity_control :
  t -> bool
val get_has_palette :
  t -> bool
val get_previous_alpha :
  t -> Unsigned.uint16
val get_previous_color :
  t -> (Color.t structure)
val get_previous_rgba :
  t -> (RGBA.t structure)
val is_adjusting :
  t -> bool
val set_current_alpha :
  t -> Unsigned.uint16 -> unit
val set_current_color :
  t -> Color.t structure ptr -> unit
val set_current_rgba :
  t -> RGBA.t structure ptr -> unit
val set_has_opacity_control :
  t -> bool -> unit
val set_has_palette :
  t -> bool -> unit
val set_previous_alpha :
  t -> Unsigned.uint16 -> unit
val set_previous_color :
  t -> Color.t structure ptr -> unit
val set_previous_rgba :
  t -> RGBA.t structure ptr -> unit
