open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_dialog_new return type object not handled*)
(*Not implemented gtk_dialog_add_action_widget type object not implemented*)
(*Not implemented gtk_dialog_add_button return type object not handled*)
(*Not implemented gtk_dialog_get_action_area return type object not handled*)
(*Not implemented gtk_dialog_get_content_area return type object not handled*)
(*Not implemented gtk_dialog_get_header_bar return type object not handled*)
(*Not implemented gtk_dialog_get_response_for_widget type object not implemented*)
(*Not implemented gtk_dialog_get_widget_for_response return type object not handled*)
let response =
  foreign "gtk_dialog_response" (ptr t_typ @-> int32_t @-> returning (void))
let run =
  foreign "gtk_dialog_run" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_dialog_set_alternative_button_order_from_array type C Array type for Types.Array tag not implemented*)
let set_default_response =
  foreign "gtk_dialog_set_default_response" (ptr t_typ @-> int32_t @-> returning (void))
let set_response_sensitive =
  foreign "gtk_dialog_set_response_sensitive" (ptr t_typ @-> int32_t @-> bool @-> returning (void))
