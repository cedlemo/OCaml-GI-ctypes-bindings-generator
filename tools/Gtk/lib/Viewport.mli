open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_viewport_new type object not implemented*)
(*Not implemented gtk_viewport_get_bin_window return type object not handled*)
(*Not implemented gtk_viewport_get_hadjustment return type object not handled*)
val get_shadow_type:
  t structure ptr -> Shadow_type.t
(*Not implemented gtk_viewport_get_vadjustment return type object not handled*)
(*Not implemented gtk_viewport_get_view_window return type object not handled*)
(*Not implemented gtk_viewport_set_hadjustment type object not implemented*)
val set_shadow_type:
  t structure ptr -> Shadow_type.t -> unit
(*Not implemented gtk_viewport_set_vadjustment type object not implemented*)
