open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_status_icon_new return type object not handled*)
(*Not implemented gtk_status_icon_new_from_file return type object not handled*)
(*Not implemented gtk_status_icon_new_from_gicon type interface not implemented*)
(*Not implemented gtk_status_icon_new_from_icon_name return type object not handled*)
(*Not implemented gtk_status_icon_new_from_pixbuf type object not implemented*)
(*Not implemented gtk_status_icon_new_from_stock return type object not handled*)
(*Not implemented gtk_status_icon_position_menu type object not implemented*)
(*Not implemented gtk_status_icon_get_geometry type object not implemented*)
(*Not implemented gtk_status_icon_get_gicon return type interface not handled*)
val get_has_tooltip:
  t structure ptr -> bool
val get_icon_name:
  t structure ptr -> string option
(*Not implemented gtk_status_icon_get_pixbuf return type object not handled*)
(*Not implemented gtk_status_icon_get_screen return type object not handled*)
val get_size:
  t structure ptr -> int32
val get_stock:
  t structure ptr -> string option
val get_storage_type:
  t structure ptr -> Image_type.t
val get_title:
  t structure ptr -> string option
val get_tooltip_markup:
  t structure ptr -> string option
val get_tooltip_text:
  t structure ptr -> string option
val get_visible:
  t structure ptr -> bool
val get_x11_window_id:
  t structure ptr -> Unsigned.uint32
val is_embedded:
  t structure ptr -> bool
val set_from_file:
  t structure ptr -> string -> unit
(*Not implemented gtk_status_icon_set_from_gicon type interface not implemented*)
val set_from_icon_name:
  t structure ptr -> string -> unit
(*Not implemented gtk_status_icon_set_from_pixbuf type object not implemented*)
val set_from_stock:
  t structure ptr -> string -> unit
val set_has_tooltip:
  t structure ptr -> bool -> unit
val set_name:
  t structure ptr -> string -> unit
(*Not implemented gtk_status_icon_set_screen type object not implemented*)
val set_title:
  t structure ptr -> string -> unit
val set_tooltip_markup:
  t structure ptr -> string option -> unit
val set_tooltip_text:
  t structure ptr -> string -> unit
val set_visible:
  t structure ptr -> bool -> unit
