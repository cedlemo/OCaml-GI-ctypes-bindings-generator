open Ctypes

type t
val t_typ : t typ

val create :
  string -> t
val add_button :
  t -> string -> string -> unit
val add_button_with_target :
  t -> string -> string -> Variant.t structure ptr option -> unit
val set_body :
  t -> string option -> unit
val set_default_action :
  t -> string -> unit
val set_default_action_and_target :
  t -> string -> Variant.t structure ptr option -> unit
(*Not implemented g_notification_set_icon type interface not implemented*)
val set_priority :
  t -> Notification_priority.t -> unit
val set_title :
  t -> string -> unit
val set_urgent :
  t -> bool -> unit
