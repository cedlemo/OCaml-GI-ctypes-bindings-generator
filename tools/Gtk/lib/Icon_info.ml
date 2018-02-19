open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_icon_info_new_for_pixbuf type object not implemented*)
(*Not implemented gtk_icon_info_get_attach_points type C Array type for Types.Array tag not implemented*)
let get_base_scale =
  foreign "gtk_icon_info_get_base_scale" (ptr t_typ @-> returning (int32_t))
let get_base_size =
  foreign "gtk_icon_info_get_base_size" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_icon_info_get_builtin_pixbuf return type object not handled*)
let get_display_name =
  foreign "gtk_icon_info_get_display_name" (ptr t_typ @-> returning (string_opt))
let get_embedded_rect self =
  let rectangle_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_embedded_rect_raw =
    foreign "gtk_icon_info_get_embedded_rect" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning bool)
  in
  let ret = get_embedded_rect_raw self rectangle_ptr in
  let rectangle = !@ rectangle_ptr in
  (ret, rectangle)
let get_filename =
  foreign "gtk_icon_info_get_filename" (ptr t_typ @-> returning (string_opt))
let is_symbolic =
  foreign "gtk_icon_info_is_symbolic" (ptr t_typ @-> returning (bool))
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
let set_raw_coordinates =
  foreign "gtk_icon_info_set_raw_coordinates" (ptr t_typ @-> bool @-> returning (void))
