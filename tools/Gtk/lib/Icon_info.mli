open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_icon_info_new_for_pixbuf type object not implemented*)
(*Not implemented gtk_icon_info_get_attach_points type C Array type for Types.Array tag not implemented*)
val get_base_scale:
  t structure ptr -> int32
val get_base_size:
  t structure ptr -> int32
(*Not implemented gtk_icon_info_get_builtin_pixbuf return type object not handled*)
val get_display_name:
  t structure ptr -> string option
val get_embedded_rect :
  t structure ptr -> (bool * Rectangle.t structure)
val get_filename:
  t structure ptr -> string option
val is_symbolic:
  t structure ptr -> bool
(*Not implemented gtk_icon_info_load_icon return type object not handled*)
(*Not implemented gtk_icon_info_load_icon_async type object not implemented*)
(*Not implemented gtk_icon_info_load_icon_finish type interface not implemented*)
(*Not implemented gtk_icon_info_load_surface type object not implemented*)
(*Not implemented gtk_icon_info_load_symbolic return type object not handled*)
(*Not implemented gtk_icon_info_load_symbolic_async type object not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_finish type interface not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_for_context type object not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_for_context_async type object not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_for_context_finish type interface not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_for_style type object not implemented*)
val set_raw_coordinates:
  t structure ptr -> bool -> unit
