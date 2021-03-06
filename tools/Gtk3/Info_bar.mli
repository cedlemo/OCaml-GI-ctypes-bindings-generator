open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val add_action_widget :
  t -> Widget.t ptr -> int32 -> unit
val add_button :
  t -> string -> int32 -> Button.t ptr
val get_action_area :
  t -> Widget.t ptr
val get_content_area :
  t -> Widget.t ptr
val get_message_type :
  t -> Message_type.t
val get_revealed :
  t -> bool
val get_show_close_button :
  t -> bool
val response :
  t -> int32 -> unit
val set_default_response :
  t -> int32 -> unit
val set_message_type :
  t -> Message_type.t -> unit
val set_response_sensitive :
  t -> int32 -> bool -> unit
val set_revealed :
  t -> bool -> unit
val set_show_close_button :
  t -> bool -> unit
