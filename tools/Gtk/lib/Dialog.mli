open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_dialog_new return type object not handled*)
(*Not implemented gtk_dialog_add_action_widget type object not implemented*)
(*Not implemented gtk_dialog_add_button return type object not handled*)
(*Not implemented gtk_dialog_get_action_area return type object not handled*)
(*Not implemented gtk_dialog_get_content_area return type object not handled*)
(*Not implemented gtk_dialog_get_header_bar return type object not handled*)
(*Not implemented gtk_dialog_get_response_for_widget type object not implemented*)
(*Not implemented gtk_dialog_get_widget_for_response return type object not handled*)
val response:
  t structure ptr -> int32 -> unit
val run:
  t structure ptr -> int32
(*Not implemented gtk_dialog_set_alternative_button_order_from_array type C Array type for Types.Array tag not implemented*)
val set_default_response:
  t structure ptr -> int32 -> unit
val set_response_sensitive:
  t structure ptr -> int32 -> bool -> unit
