open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_notification_new return type object not handled*)
let add_button =
  foreign "g_notification_add_button" (ptr t_typ @-> string @-> string @-> returning (void))
let add_button_with_target =
  foreign "g_notification_add_button_with_target_value" (ptr t_typ @-> string @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
let set_body =
  foreign "g_notification_set_body" (ptr t_typ @-> string_opt @-> returning (void))
let set_default_action =
  foreign "g_notification_set_default_action" (ptr t_typ @-> string @-> returning (void))
let set_default_action_and_target =
  foreign "g_notification_set_default_action_and_target_value" (ptr t_typ @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
(*Not implemented g_notification_set_icon type interface not implemented*)
let set_priority =
  foreign "g_notification_set_priority" (ptr t_typ @-> Notification_priority.t_view @-> returning (void))
let set_title =
  foreign "g_notification_set_title" (ptr t_typ @-> string @-> returning (void))
let set_urgent =
  foreign "g_notification_set_urgent" (ptr t_typ @-> bool @-> returning (void))
