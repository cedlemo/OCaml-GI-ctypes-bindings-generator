open Ctypes

type t
val t_typ : t typ

val create_for_pixbuf :
  Icon_theme.t -> Pixbuf.t -> t
(*Not implemented gtk_icon_info_get_attach_points type C Array type for Types.Array tag not implemented*)
val get_base_scale :
  t -> int32
val get_base_size :
  t -> int32
val get_builtin_pixbuf :
  t -> Pixbuf.t
val get_display_name :
  t -> string option
val get_embedded_rect :
  t -> (bool * Rectangle.t structure)
val get_filename :
  t -> string option
val is_symbolic :
  t -> bool
val load_icon :
  t -> (Pixbuf.t, Error.t structure ptr option) result
(*Not implemented gtk_icon_info_load_icon_async type callback not implemented*)
(*Not implemented gtk_icon_info_load_icon_finish type interface not implemented*)
val load_surface :
  t -> Window.t -> (Surface.t structure ptr option, Error.t structure ptr option) result
val load_symbolic :
  t -> RGBA.t structure ptr -> RGBA.t structure ptr option -> RGBA.t structure ptr option -> RGBA.t structure ptr option -> (Pixbuf.t * bool, Error.t structure ptr option) result
(*Not implemented gtk_icon_info_load_symbolic_async type callback not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_finish type interface not implemented*)
val load_symbolic_for_context :
  t -> Style_context.t -> (Pixbuf.t * bool, Error.t structure ptr option) result
(*Not implemented gtk_icon_info_load_symbolic_for_context_async type callback not implemented*)
(*Not implemented gtk_icon_info_load_symbolic_for_context_finish type interface not implemented*)
val load_symbolic_for_style :
  t -> Style.t -> State_type.t -> (Pixbuf.t * bool, Error.t structure ptr option) result
val set_raw_coordinates :
  t -> bool -> unit
