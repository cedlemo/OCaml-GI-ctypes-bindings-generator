open Ctypes

type t
val t_typ : t typ

val create :
  string -> File_chooser_action.t -> Widget.t
val create_with_dialog :
  Dialog.t -> Widget.t
val get_focus_on_click :
  t -> bool
val get_title :
  t -> string option
val get_width_chars :
  t -> int32
val set_focus_on_click :
  t -> bool -> unit
val set_title :
  t -> string -> unit
val set_width_chars :
  t -> int32 -> unit
