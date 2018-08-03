open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_notification_new" (string @-> returning (ptr t_typ))
let add_button =
  foreign "g_notification_add_button" (t_typ @-> string @-> string @-> returning (void))
let add_button_with_target =
  foreign "g_notification_add_button_with_target_value" (t_typ @-> string @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
let set_body =
  foreign "g_notification_set_body" (t_typ @-> string_opt @-> returning (void))
let set_default_action =
  foreign "g_notification_set_default_action" (t_typ @-> string @-> returning (void))
let set_default_action_and_target =
  foreign "g_notification_set_default_action_and_target_value" (t_typ @-> string @-> ptr_opt Variant.t_typ @-> returning (void))
(*Not implemented g_notification_set_icon type interface not implemented*)
let set_priority =
  foreign "g_notification_set_priority" (t_typ @-> Notification_priority.t_view @-> returning (void))
let set_title =
  foreign "g_notification_set_title" (t_typ @-> string @-> returning (void))
let set_urgent =
  foreign "g_notification_set_urgent" (t_typ @-> bool @-> returning (void))
