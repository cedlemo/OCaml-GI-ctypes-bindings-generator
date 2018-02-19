open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_info_bar_new return type object not handled*)
(*Not implemented gtk_info_bar_add_action_widget type object not implemented*)
(*Not implemented gtk_info_bar_add_button return type object not handled*)
(*Not implemented gtk_info_bar_get_action_area return type object not handled*)
(*Not implemented gtk_info_bar_get_content_area return type object not handled*)
val get_message_type:
  t structure ptr -> Message_type.t
val get_show_close_button:
  t structure ptr -> bool
val response:
  t structure ptr -> int32 -> unit
val set_default_response:
  t structure ptr -> int32 -> unit
val set_message_type:
  t structure ptr -> Message_type.t -> unit
val set_response_sensitive:
  t structure ptr -> int32 -> bool -> unit
val set_show_close_button:
  t structure ptr -> bool -> unit
