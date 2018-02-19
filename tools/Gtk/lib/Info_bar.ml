open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_info_bar_new return type object not handled*)
(*Not implemented gtk_info_bar_add_action_widget type object not implemented*)
(*Not implemented gtk_info_bar_add_button return type object not handled*)
(*Not implemented gtk_info_bar_get_action_area return type object not handled*)
(*Not implemented gtk_info_bar_get_content_area return type object not handled*)
let get_message_type =
  foreign "gtk_info_bar_get_message_type" (ptr t_typ @-> returning (Message_type.t_view))
let get_show_close_button =
  foreign "gtk_info_bar_get_show_close_button" (ptr t_typ @-> returning (bool))
let response =
  foreign "gtk_info_bar_response" (ptr t_typ @-> int32_t @-> returning (void))
let set_default_response =
  foreign "gtk_info_bar_set_default_response" (ptr t_typ @-> int32_t @-> returning (void))
let set_message_type =
  foreign "gtk_info_bar_set_message_type" (ptr t_typ @-> Message_type.t_view @-> returning (void))
let set_response_sensitive =
  foreign "gtk_info_bar_set_response_sensitive" (ptr t_typ @-> int32_t @-> bool @-> returning (void))
let set_show_close_button =
  foreign "gtk_info_bar_set_show_close_button" (ptr t_typ @-> bool @-> returning (void))
