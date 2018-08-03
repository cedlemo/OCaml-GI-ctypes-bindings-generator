open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_status_icon_new" (void @-> returning (ptr t_typ))
let create_from_file =
  foreign "gtk_status_icon_new_from_file" (string @-> returning (ptr t_typ))
(*Not implemented gtk_status_icon_new_from_gicon type interface not implemented*)
let create_from_icon_name =
  foreign "gtk_status_icon_new_from_icon_name" (string @-> returning (ptr t_typ))
let create_from_pixbuf =
  foreign "gtk_status_icon_new_from_pixbuf" (ptr Pixbuf.t_typ @-> returning (ptr t_typ))
let create_from_stock =
  foreign "gtk_status_icon_new_from_stock" (string @-> returning (ptr t_typ))
let position_menu menu user_data x y =
  let position_menu_raw =
    foreign "gtk_status_icon_position_menu" (ptr Menu.t_typ @-> ptr t_typ @-> ptr (bool) @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let push_in_ptr = allocate bool false in
  let x_ptr = allocate int32_t x in
  let y_ptr = allocate int32_t y in
  let ret = position_menu_raw menu user_data push_in_ptr x_ptr y_ptr in
  let push_in = !@ push_in_ptr in
  let x = !@ x_ptr in
  let y = !@ y_ptr in
  (push_in, x, y)
let get_geometry self =
  let get_geometry_raw =
    foreign "gtk_status_icon_get_geometry" (t_typ @-> ptr (ptr Screen.t_typ) @-> ptr (Rectangle.t_typ) @-> ptr (Orientation.t_view) @-> returning (bool))
  in
  let screen_ptr = allocate (ptr_opt Screen.t_typ) None in
  let area_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let orientation_ptr = allocate Orientation.t_view (Orientation.t_view.of_value (Unsigned.UInt32.zero)) in
  let ret = get_geometry_raw self screen_ptr area_ptr orientation_ptr in
  let screen = !@ screen_ptr in
  let area = !@ area_ptr in
  let orientation = (!@ orientation_ptr) in
  (ret, screen, area, orientation)
(*Not implemented gtk_status_icon_get_gicon return type interface not handled*)
let get_has_tooltip =
  foreign "gtk_status_icon_get_has_tooltip" (t_typ @-> returning (bool))
let get_icon_name =
  foreign "gtk_status_icon_get_icon_name" (t_typ @-> returning (string_opt))
let get_pixbuf =
  foreign "gtk_status_icon_get_pixbuf" (t_typ @-> returning (ptr_opt Pixbuf.t_typ))
let get_screen =
  foreign "gtk_status_icon_get_screen" (t_typ @-> returning (ptr Screen.t_typ))
let get_size =
  foreign "gtk_status_icon_get_size" (t_typ @-> returning (int32_t))
let get_stock =
  foreign "gtk_status_icon_get_stock" (t_typ @-> returning (string_opt))
let get_storage_type =
  foreign "gtk_status_icon_get_storage_type" (t_typ @-> returning (Image_type.t_view))
let get_title =
  foreign "gtk_status_icon_get_title" (t_typ @-> returning (string_opt))
let get_tooltip_markup =
  foreign "gtk_status_icon_get_tooltip_markup" (t_typ @-> returning (string_opt))
let get_tooltip_text =
  foreign "gtk_status_icon_get_tooltip_text" (t_typ @-> returning (string_opt))
let get_visible =
  foreign "gtk_status_icon_get_visible" (t_typ @-> returning (bool))
let get_x11_window_id =
  foreign "gtk_status_icon_get_x11_window_id" (t_typ @-> returning (uint32_t))
let is_embedded =
  foreign "gtk_status_icon_is_embedded" (t_typ @-> returning (bool))
let set_from_file =
  foreign "gtk_status_icon_set_from_file" (t_typ @-> string @-> returning (void))
(*Not implemented gtk_status_icon_set_from_gicon type interface not implemented*)
let set_from_icon_name =
  foreign "gtk_status_icon_set_from_icon_name" (t_typ @-> string @-> returning (void))
let set_from_pixbuf =
  foreign "gtk_status_icon_set_from_pixbuf" (t_typ @-> ptr_opt Pixbuf.t_typ @-> returning (void))
let set_from_stock =
  foreign "gtk_status_icon_set_from_stock" (t_typ @-> string @-> returning (void))
let set_has_tooltip =
  foreign "gtk_status_icon_set_has_tooltip" (t_typ @-> bool @-> returning (void))
let set_name =
  foreign "gtk_status_icon_set_name" (t_typ @-> string @-> returning (void))
let set_screen =
  foreign "gtk_status_icon_set_screen" (t_typ @-> ptr Screen.t_typ @-> returning (void))
let set_title =
  foreign "gtk_status_icon_set_title" (t_typ @-> string @-> returning (void))
let set_tooltip_markup =
  foreign "gtk_status_icon_set_tooltip_markup" (t_typ @-> string_opt @-> returning (void))
let set_tooltip_text =
  foreign "gtk_status_icon_set_tooltip_text" (t_typ @-> string @-> returning (void))
let set_visible =
  foreign "gtk_status_icon_set_visible" (t_typ @-> bool @-> returning (void))
