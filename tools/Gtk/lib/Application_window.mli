open Ctypes

type t
val t_typ : t typ

val create:
  Application.t -> Widget.t
val get_help_overlay:
  t -> Shortcuts_window.t
val get_id:
  t -> Unsigned.uint32
val get_show_menubar:
  t -> bool
val set_help_overlay:
  t -> Shortcuts_window.t -> unit
val set_show_menubar:
  t -> bool -> unit
