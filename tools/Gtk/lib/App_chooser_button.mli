open Ctypes

type t
val t_typ : t typ

val create:
  string -> Widget.t
(*Not implemented gtk_app_chooser_button_append_custom_item type interface not implemented*)
val append_separator:
  t -> unit
val get_heading:
  t -> string option
val get_show_default_item:
  t -> bool
val get_show_dialog_item:
  t -> bool
val set_active_custom_item:
  t -> string -> unit
val set_heading:
  t -> string -> unit
val set_show_default_item:
  t -> bool -> unit
val set_show_dialog_item:
  t -> bool -> unit
