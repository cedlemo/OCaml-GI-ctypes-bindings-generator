open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_style_new return type object not handled*)
(*Not implemented gtk_style_apply_default_background type object not implemented*)
(*Not implemented gtk_style_copy return type object not handled*)
val detach:
  t structure ptr -> unit
(*Not implemented gtk_style_get_style_property type gType not implemented*)
val has_context:
  t structure ptr -> bool
val lookup_color :
  t structure ptr -> string -> (bool * Color.t structure)
val lookup_icon_set:
  t structure ptr -> string -> Icon_set.t structure ptr
(*Not implemented gtk_style_render_icon type object not implemented*)
(*Not implemented gtk_style_set_background type object not implemented*)
