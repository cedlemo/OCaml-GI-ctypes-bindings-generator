open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Icon_source"

let create =
  foreign "gtk_icon_source_new" (void @-> returning (ptr t_typ))
let copy =
  foreign "gtk_icon_source_copy" (t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_icon_source_free" (t_typ @-> returning (void))
let get_direction =
  foreign "gtk_icon_source_get_direction" (t_typ @-> returning (Text_direction.t_view))
let get_direction_wildcarded =
  foreign "gtk_icon_source_get_direction_wildcarded" (t_typ @-> returning (bool))
let get_filename =
  foreign "gtk_icon_source_get_filename" (t_typ @-> returning (string_opt))
let get_icon_name =
  foreign "gtk_icon_source_get_icon_name" (t_typ @-> returning (string_opt))
let get_pixbuf =
  foreign "gtk_icon_source_get_pixbuf" (t_typ @-> returning (Pixbuf.t_typ))
let get_size =
  foreign "gtk_icon_source_get_size" (t_typ @-> returning (int32_t))
let get_size_wildcarded =
  foreign "gtk_icon_source_get_size_wildcarded" (t_typ @-> returning (bool))
let get_state =
  foreign "gtk_icon_source_get_state" (t_typ @-> returning (State_type.t_view))
let get_state_wildcarded =
  foreign "gtk_icon_source_get_state_wildcarded" (t_typ @-> returning (bool))
let set_direction =
  foreign "gtk_icon_source_set_direction" (t_typ @-> Text_direction.t_view @-> returning (void))
let set_direction_wildcarded =
  foreign "gtk_icon_source_set_direction_wildcarded" (t_typ @-> bool @-> returning (void))
let set_filename =
  foreign "gtk_icon_source_set_filename" (t_typ @-> string @-> returning (void))
let set_icon_name =
  foreign "gtk_icon_source_set_icon_name" (t_typ @-> string_opt @-> returning (void))
let set_pixbuf =
  foreign "gtk_icon_source_set_pixbuf" (t_typ @-> Pixbuf.t_typ @-> returning (void))
let set_size =
  foreign "gtk_icon_source_set_size" (t_typ @-> int32_t @-> returning (void))
let set_size_wildcarded =
  foreign "gtk_icon_source_set_size_wildcarded" (t_typ @-> bool @-> returning (void))
let set_state =
  foreign "gtk_icon_source_set_state" (t_typ @-> State_type.t_view @-> returning (void))
let set_state_wildcarded =
  foreign "gtk_icon_source_set_state_wildcarded" (t_typ @-> bool @-> returning (void))
