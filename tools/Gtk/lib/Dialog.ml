open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_dialog_new" (void @-> returning (Widget.t_typ))
let add_action_widget =
  foreign "gtk_dialog_add_action_widget" (t_typ @-> Widget.t_typ @-> int32_t @-> returning (void))
let add_button =
  foreign "gtk_dialog_add_button" (t_typ @-> string @-> int32_t @-> returning (Widget.t_typ))
let get_action_area =
  foreign "gtk_dialog_get_action_area" (t_typ @-> returning (Widget.t_typ))
let get_content_area =
  foreign "gtk_dialog_get_content_area" (t_typ @-> returning (Box.t_typ))
let get_header_bar =
  foreign "gtk_dialog_get_header_bar" (t_typ @-> returning (Widget.t_typ))
let get_response_for_widget =
  foreign "gtk_dialog_get_response_for_widget" (t_typ @-> Widget.t_typ @-> returning (int32_t))
let get_widget_for_response =
  foreign "gtk_dialog_get_widget_for_response" (t_typ @-> int32_t @-> returning (Widget.t_typ))
let response =
  foreign "gtk_dialog_response" (t_typ @-> int32_t @-> returning (void))
let run =
  foreign "gtk_dialog_run" (t_typ @-> returning (int32_t))
(*Not implemented gtk_dialog_set_alternative_button_order_from_array type C Array type for Types.Array tag not implemented*)
let set_default_response =
  foreign "gtk_dialog_set_default_response" (t_typ @-> int32_t @-> returning (void))
let set_response_sensitive =
  foreign "gtk_dialog_set_response_sensitive" (t_typ @-> int32_t @-> bool @-> returning (void))
