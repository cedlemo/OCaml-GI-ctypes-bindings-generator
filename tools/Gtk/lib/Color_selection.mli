open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_color_selection_new return type object not handled*)
(*Not implemented gtk_color_selection_palette_from_string type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_color_selection_palette_to_string type C Array type for Types.Array tag not implemented*)
val get_current_alpha:
  t structure ptr -> Unsigned.uint16
val get_current_color :
  t structure ptr -> (Color.t structure)
val get_current_rgba :
  t structure ptr -> (RGBA.t structure)
val get_has_opacity_control:
  t structure ptr -> bool
val get_has_palette:
  t structure ptr -> bool
val get_previous_alpha:
  t structure ptr -> Unsigned.uint16
val get_previous_color :
  t structure ptr -> (Color.t structure)
val get_previous_rgba :
  t structure ptr -> (RGBA.t structure)
val is_adjusting:
  t structure ptr -> bool
val set_current_alpha:
  t structure ptr -> Unsigned.uint16 -> unit
val set_current_color:
  t structure ptr -> Color.t structure ptr -> unit
val set_current_rgba:
  t structure ptr -> RGBA.t structure ptr -> unit
val set_has_opacity_control:
  t structure ptr -> bool -> unit
val set_has_palette:
  t structure ptr -> bool -> unit
val set_previous_alpha:
  t structure ptr -> Unsigned.uint16 -> unit
val set_previous_color:
  t structure ptr -> Color.t structure ptr -> unit
val set_previous_rgba:
  t structure ptr -> RGBA.t structure ptr -> unit
