open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Icon_source"

let create =
  foreign "gtk_icon_source_new" (void @-> returning (ptr t_typ))
let copy =
  foreign "gtk_icon_source_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_icon_source_free" (ptr t_typ @-> returning (void))
let get_direction =
  foreign "gtk_icon_source_get_direction" (ptr t_typ @-> returning (Text_direction.t_view))
let get_direction_wildcarded =
  foreign "gtk_icon_source_get_direction_wildcarded" (ptr t_typ @-> returning (bool))
let get_filename =
  foreign "gtk_icon_source_get_filename" (ptr t_typ @-> returning (string_opt))
let get_icon_name =
  foreign "gtk_icon_source_get_icon_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_icon_source_get_pixbuf return type object not handled*)
let get_size =
  foreign "gtk_icon_source_get_size" (ptr t_typ @-> returning (int32_t))
let get_size_wildcarded =
  foreign "gtk_icon_source_get_size_wildcarded" (ptr t_typ @-> returning (bool))
let get_state =
  foreign "gtk_icon_source_get_state" (ptr t_typ @-> returning (State_type.t_view))
let get_state_wildcarded =
  foreign "gtk_icon_source_get_state_wildcarded" (ptr t_typ @-> returning (bool))
let set_direction =
  foreign "gtk_icon_source_set_direction" (ptr t_typ @-> Text_direction.t_view @-> returning (void))
let set_direction_wildcarded =
  foreign "gtk_icon_source_set_direction_wildcarded" (ptr t_typ @-> bool @-> returning (void))
let set_filename =
  foreign "gtk_icon_source_set_filename" (ptr t_typ @-> string @-> returning (void))
let set_icon_name =
  foreign "gtk_icon_source_set_icon_name" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_icon_source_set_pixbuf type object not implemented*)
let set_size =
  foreign "gtk_icon_source_set_size" (ptr t_typ @-> int32_t @-> returning (void))
let set_size_wildcarded =
  foreign "gtk_icon_source_set_size_wildcarded" (ptr t_typ @-> bool @-> returning (void))
let set_state =
  foreign "gtk_icon_source_set_state" (ptr t_typ @-> State_type.t_view @-> returning (void))
let set_state_wildcarded =
  foreign "gtk_icon_source_set_state_wildcarded" (ptr t_typ @-> bool @-> returning (void))
