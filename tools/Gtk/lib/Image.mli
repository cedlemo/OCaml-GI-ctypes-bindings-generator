open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_image_new return type object not handled*)
(*Not implemented gtk_image_new_from_animation type object not implemented*)
(*Not implemented gtk_image_new_from_file return type object not handled*)
(*Not implemented gtk_image_new_from_gicon type interface not implemented*)
(*Not implemented gtk_image_new_from_icon_name return type object not handled*)
(*Not implemented gtk_image_new_from_icon_set return type object not handled*)
(*Not implemented gtk_image_new_from_pixbuf type object not implemented*)
(*Not implemented gtk_image_new_from_resource return type object not handled*)
(*Not implemented gtk_image_new_from_stock return type object not handled*)
(*Not implemented gtk_image_new_from_surface return type object not handled*)
val clear:
  t structure ptr -> unit
(*Not implemented gtk_image_get_animation return type object not handled*)
(*Not implemented gtk_image_get_gicon type interface not implemented*)
val get_icon_name :
  t structure ptr -> (string * int32)
val get_icon_set :
  t structure ptr -> (Icon_set.t structure ptr * int32)
(*Not implemented gtk_image_get_pixbuf return type object not handled*)
val get_pixel_size:
  t structure ptr -> int32
val get_stock :
  t structure ptr -> (string * int32)
val get_storage_type:
  t structure ptr -> Image_type.t
(*Not implemented gtk_image_set_from_animation type object not implemented*)
val set_from_file:
  t structure ptr -> string option -> unit
(*Not implemented gtk_image_set_from_gicon type interface not implemented*)
val set_from_icon_name:
  t structure ptr -> string option -> int32 -> unit
val set_from_icon_set:
  t structure ptr -> Icon_set.t structure ptr -> int32 -> unit
(*Not implemented gtk_image_set_from_pixbuf type object not implemented*)
val set_from_resource:
  t structure ptr -> string option -> unit
val set_from_stock:
  t structure ptr -> string -> int32 -> unit
val set_from_surface:
  t structure ptr -> Surface.t structure ptr option -> unit
val set_pixel_size:
  t structure ptr -> int32 -> unit
