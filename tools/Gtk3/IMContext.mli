open Ctypes

type t
val t_typ : t typ

val delete_surrounding :
  t -> int32 -> int32 -> bool
val filter_keypress :
  t -> Event_key.t structure ptr -> bool
val focus_in :
  t -> unit
val focus_out :
  t -> unit
val get_preedit_string :
  t -> (string * Attr_list.t structure ptr * int32)
val get_surrounding :
  t -> (bool * string * int32)
val reset :
  t -> unit
val set_client_window :
  t -> Window.t ptr option -> unit
val set_cursor_location :
  t -> Rectangle.t structure ptr -> unit
val set_surrounding :
  t -> string -> int32 -> int32 -> unit
val set_use_preedit :
  t -> bool -> unit
