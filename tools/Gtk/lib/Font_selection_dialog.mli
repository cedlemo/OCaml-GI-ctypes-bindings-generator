open Ctypes

type t
val t_typ : t typ

val create:
  string -> Widget.t
val get_cancel_button:
  t -> Widget.t
val get_font_name:
  t -> string option
val get_font_selection:
  t -> Widget.t
val get_ok_button:
  t -> Widget.t
val get_preview_text:
  t -> string option
val set_font_name:
  t -> string -> bool
val set_preview_text:
  t -> string -> unit
