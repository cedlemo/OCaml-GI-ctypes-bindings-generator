open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

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
let clear =
  foreign "gtk_image_clear" (ptr t_typ @-> returning (void))
(*Not implemented gtk_image_get_animation return type object not handled*)
(*Not implemented gtk_image_get_gicon type interface not implemented*)
let get_icon_name self =
  let icon_name_ptr = allocate string " " in
  let size_ptr = allocate int32_t Int32.zero in
  let get_icon_name_raw =
    foreign "gtk_image_get_icon_name" (ptr t_typ @-> ptr (string) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_icon_name_raw self icon_name_ptr size_ptr in
  let icon_name = !@ icon_name_ptr in
  let size = !@ size_ptr in
  (icon_name, size)
let get_icon_set self =
  let icon_set_ptr = allocate (ptr_opt Icon_set.t_typ) None in
  let size_ptr = allocate int32_t Int32.zero in
  let get_icon_set_raw =
    foreign "gtk_image_get_icon_set" (ptr t_typ @-> ptr (ptr Icon_set.t_typ) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_icon_set_raw self icon_set_ptr size_ptr in
  let icon_set = !@ icon_set_ptr in
  let size = !@ size_ptr in
  (icon_set, size)
(*Not implemented gtk_image_get_pixbuf return type object not handled*)
let get_pixel_size =
  foreign "gtk_image_get_pixel_size" (ptr t_typ @-> returning (int32_t))
let get_stock self =
  let stock_id_ptr = allocate string " " in
  let size_ptr = allocate int32_t Int32.zero in
  let get_stock_raw =
    foreign "gtk_image_get_stock" (ptr t_typ @-> ptr (string) @-> ptr (int32_t) @-> returning void)
  in
  let ret = get_stock_raw self stock_id_ptr size_ptr in
  let stock_id = !@ stock_id_ptr in
  let size = !@ size_ptr in
  (stock_id, size)
let get_storage_type =
  foreign "gtk_image_get_storage_type" (ptr t_typ @-> returning (Image_type.t_view))
(*Not implemented gtk_image_set_from_animation type object not implemented*)
let set_from_file =
  foreign "gtk_image_set_from_file" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_image_set_from_gicon type interface not implemented*)
let set_from_icon_name =
  foreign "gtk_image_set_from_icon_name" (ptr t_typ @-> string_opt @-> int32_t @-> returning (void))
let set_from_icon_set =
  foreign "gtk_image_set_from_icon_set" (ptr t_typ @-> ptr Icon_set.t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_image_set_from_pixbuf type object not implemented*)
let set_from_resource =
  foreign "gtk_image_set_from_resource" (ptr t_typ @-> string_opt @-> returning (void))
let set_from_stock =
  foreign "gtk_image_set_from_stock" (ptr t_typ @-> string @-> int32_t @-> returning (void))
let set_from_surface =
  foreign "gtk_image_set_from_surface" (ptr t_typ @-> ptr_opt Surface.t_typ @-> returning (void))
let set_pixel_size =
  foreign "gtk_image_set_pixel_size" (ptr t_typ @-> int32_t @-> returning (void))
