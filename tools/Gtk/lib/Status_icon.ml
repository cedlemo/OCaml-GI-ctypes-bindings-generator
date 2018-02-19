open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_status_icon_new return type object not handled*)
(*Not implemented gtk_status_icon_new_from_file return type object not handled*)
(*Not implemented gtk_status_icon_new_from_gicon type interface not implemented*)
(*Not implemented gtk_status_icon_new_from_icon_name return type object not handled*)
(*Not implemented gtk_status_icon_new_from_pixbuf type object not implemented*)
(*Not implemented gtk_status_icon_new_from_stock return type object not handled*)
(*Not implemented gtk_status_icon_position_menu type object not implemented*)
(*Not implemented gtk_status_icon_get_geometry type object not implemented*)
(*Not implemented gtk_status_icon_get_gicon return type interface not handled*)
let get_has_tooltip =
  foreign "gtk_status_icon_get_has_tooltip" (ptr t_typ @-> returning (bool))
let get_icon_name =
  foreign "gtk_status_icon_get_icon_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_status_icon_get_pixbuf return type object not handled*)
(*Not implemented gtk_status_icon_get_screen return type object not handled*)
let get_size =
  foreign "gtk_status_icon_get_size" (ptr t_typ @-> returning (int32_t))
let get_stock =
  foreign "gtk_status_icon_get_stock" (ptr t_typ @-> returning (string_opt))
let get_storage_type =
  foreign "gtk_status_icon_get_storage_type" (ptr t_typ @-> returning (Image_type.t_view))
let get_title =
  foreign "gtk_status_icon_get_title" (ptr t_typ @-> returning (string_opt))
let get_tooltip_markup =
  foreign "gtk_status_icon_get_tooltip_markup" (ptr t_typ @-> returning (string_opt))
let get_tooltip_text =
  foreign "gtk_status_icon_get_tooltip_text" (ptr t_typ @-> returning (string_opt))
let get_visible =
  foreign "gtk_status_icon_get_visible" (ptr t_typ @-> returning (bool))
let get_x11_window_id =
  foreign "gtk_status_icon_get_x11_window_id" (ptr t_typ @-> returning (uint32_t))
let is_embedded =
  foreign "gtk_status_icon_is_embedded" (ptr t_typ @-> returning (bool))
let set_from_file =
  foreign "gtk_status_icon_set_from_file" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_status_icon_set_from_gicon type interface not implemented*)
let set_from_icon_name =
  foreign "gtk_status_icon_set_from_icon_name" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_status_icon_set_from_pixbuf type object not implemented*)
let set_from_stock =
  foreign "gtk_status_icon_set_from_stock" (ptr t_typ @-> string @-> returning (void))
let set_has_tooltip =
  foreign "gtk_status_icon_set_has_tooltip" (ptr t_typ @-> bool @-> returning (void))
let set_name =
  foreign "gtk_status_icon_set_name" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_status_icon_set_screen type object not implemented*)
let set_title =
  foreign "gtk_status_icon_set_title" (ptr t_typ @-> string @-> returning (void))
let set_tooltip_markup =
  foreign "gtk_status_icon_set_tooltip_markup" (ptr t_typ @-> string_opt @-> returning (void))
let set_tooltip_text =
  foreign "gtk_status_icon_set_tooltip_text" (ptr t_typ @-> string @-> returning (void))
let set_visible =
  foreign "gtk_status_icon_set_visible" (ptr t_typ @-> bool @-> returning (void))
