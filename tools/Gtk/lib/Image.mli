open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val create_from_animation:
  Pixbuf_animation.t -> Widget.t
val create_from_file:
  string -> Widget.t
(*Not implemented gtk_image_new_from_gicon type interface not implemented*)
val create_from_icon_name:
  string option -> int32 -> Widget.t
val create_from_icon_set:
  Icon_set.t structure ptr -> int32 -> Widget.t
val create_from_pixbuf:
  Pixbuf.t -> Widget.t
val create_from_resource:
  string -> Widget.t
val create_from_stock:
  string -> int32 -> Widget.t
val create_from_surface:
  Surface.t structure ptr option -> Widget.t
val clear:
  t -> unit
val get_animation:
  t -> Pixbuf_animation.t
(*Not implemented gtk_image_get_gicon type interface not implemented*)
val get_icon_name :
  t -> (string * int32)
val get_icon_set :
  t -> (Icon_set.t structure ptr * int32)
val get_pixbuf:
  t -> Pixbuf.t
val get_pixel_size:
  t -> int32
val get_stock :
  t -> (string * int32)
val get_storage_type:
  t -> Image_type.t
val set_from_animation:
  t -> Pixbuf_animation.t -> unit
val set_from_file:
  t -> string option -> unit
(*Not implemented gtk_image_set_from_gicon type interface not implemented*)
val set_from_icon_name:
  t -> string option -> int32 -> unit
val set_from_icon_set:
  t -> Icon_set.t structure ptr -> int32 -> unit
val set_from_pixbuf:
  t -> Pixbuf.t -> unit
val set_from_resource:
  t -> string option -> unit
val set_from_stock:
  t -> string -> int32 -> unit
val set_from_surface:
  t -> Surface.t structure ptr option -> unit
val set_pixel_size:
  t -> int32 -> unit
