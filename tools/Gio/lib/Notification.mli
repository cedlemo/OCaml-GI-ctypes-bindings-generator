open Ctypes

type t
val t_typ : t typ

(*Not implemented g_notification_new return type object not handled*)
val add_button:
  t structure ptr -> string -> string -> unit
val add_button_with_target:
  t structure ptr -> string -> string -> Variant.t structure ptr option -> unit
val set_body:
  t structure ptr -> string option -> unit
val set_default_action:
  t structure ptr -> string -> unit
val set_default_action_and_target:
  t structure ptr -> string -> Variant.t structure ptr option -> unit
(*Not implemented g_notification_set_icon type interface not implemented*)
val set_priority:
  t structure ptr -> Notification_priority.t -> unit
val set_title:
  t structure ptr -> string -> unit
val set_urgent:
  t structure ptr -> bool -> unit
