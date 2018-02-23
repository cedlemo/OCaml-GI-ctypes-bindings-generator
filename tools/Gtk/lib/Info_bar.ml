open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_info_bar_new" (void @-> returning (Widget.t_typ))
let add_action_widget =
  foreign "gtk_info_bar_add_action_widget" (t_typ @-> Widget.t_typ @-> int32_t @-> returning (void))
let add_button =
  foreign "gtk_info_bar_add_button" (t_typ @-> string @-> int32_t @-> returning (Button.t_typ))
let get_action_area =
  foreign "gtk_info_bar_get_action_area" (t_typ @-> returning (Widget.t_typ))
let get_content_area =
  foreign "gtk_info_bar_get_content_area" (t_typ @-> returning (Widget.t_typ))
let get_message_type =
  foreign "gtk_info_bar_get_message_type" (t_typ @-> returning (Message_type.t_view))
let get_show_close_button =
  foreign "gtk_info_bar_get_show_close_button" (t_typ @-> returning (bool))
let response =
  foreign "gtk_info_bar_response" (t_typ @-> int32_t @-> returning (void))
let set_default_response =
  foreign "gtk_info_bar_set_default_response" (t_typ @-> int32_t @-> returning (void))
let set_message_type =
  foreign "gtk_info_bar_set_message_type" (t_typ @-> Message_type.t_view @-> returning (void))
let set_response_sensitive =
  foreign "gtk_info_bar_set_response_sensitive" (t_typ @-> int32_t @-> bool @-> returning (void))
let set_show_close_button =
  foreign "gtk_info_bar_set_show_close_button" (t_typ @-> bool @-> returning (void))
