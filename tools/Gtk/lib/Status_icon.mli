open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val create_from_file :
  string -> t
(*Not implemented gtk_status_icon_new_from_gicon type interface not implemented*)
val create_from_icon_name :
  string -> t
val create_from_pixbuf :
  Pixbuf.t -> t
val create_from_stock :
  string -> t
val position_menu :
  Menu.t -> t -> int32 -> int32 -> (bool * int32 * int32)
val get_geometry :
  t -> (bool * Screen.t * Rectangle.t structure * Orientation.t)
(*Not implemented gtk_status_icon_get_gicon return type interface not handled*)
val get_has_tooltip :
  t -> bool
val get_icon_name :
  t -> string option
val get_pixbuf :
  t -> Pixbuf.t
val get_screen :
  t -> Screen.t
val get_size :
  t -> int32
val get_stock :
  t -> string option
val get_storage_type :
  t -> Image_type.t
val get_title :
  t -> string option
val get_tooltip_markup :
  t -> string option
val get_tooltip_text :
  t -> string option
val get_visible :
  t -> bool
val get_x11_window_id :
  t -> Unsigned.uint32
val is_embedded :
  t -> bool
val set_from_file :
  t -> string -> unit
(*Not implemented gtk_status_icon_set_from_gicon type interface not implemented*)
val set_from_icon_name :
  t -> string -> unit
val set_from_pixbuf :
  t -> Pixbuf.t -> unit
val set_from_stock :
  t -> string -> unit
val set_has_tooltip :
  t -> bool -> unit
val set_name :
  t -> string -> unit
val set_screen :
  t -> Screen.t -> unit
val set_title :
  t -> string -> unit
val set_tooltip_markup :
  t -> string option -> unit
val set_tooltip_text :
  t -> string -> unit
val set_visible :
  t -> bool -> unit
