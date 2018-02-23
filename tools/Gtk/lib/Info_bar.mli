open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val add_action_widget:
  t -> Widget.t -> int32 -> unit
val add_button:
  t -> string -> int32 -> Button.t
val get_action_area:
  t -> Widget.t
val get_content_area:
  t -> Widget.t
val get_message_type:
  t -> Message_type.t
val get_show_close_button:
  t -> bool
val response:
  t -> int32 -> unit
val set_default_response:
  t -> int32 -> unit
val set_message_type:
  t -> Message_type.t -> unit
val set_response_sensitive:
  t -> int32 -> bool -> unit
val set_show_close_button:
  t -> bool -> unit
