open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val create_from_icon_name:
  string option -> int32 -> Widget.t
val create_from_stock:
  string -> Widget.t
val create_with_label:
  string -> Widget.t
val create_with_mnemonic:
  string -> Widget.t
val clicked:
  t -> unit
val enter:
  t -> unit
val get_alignment :
  t -> (float * float)
val get_always_show_image:
  t -> bool
val get_event_window:
  t -> Window.t
val get_focus_on_click:
  t -> bool
val get_image:
  t -> Widget.t
val get_image_position:
  t -> Position_type.t
val get_label:
  t -> string option
val get_relief:
  t -> Relief_style.t
val get_use_stock:
  t -> bool
val get_use_underline:
  t -> bool
val leave:
  t -> unit
val pressed:
  t -> unit
val released:
  t -> unit
val set_alignment:
  t -> float -> float -> unit
val set_always_show_image:
  t -> bool -> unit
val set_focus_on_click:
  t -> bool -> unit
val set_image:
  t -> Widget.t -> unit
val set_image_position:
  t -> Position_type.t -> unit
val set_label:
  t -> string -> unit
val set_relief:
  t -> Relief_style.t -> unit
val set_use_stock:
  t -> bool -> unit
val set_use_underline:
  t -> bool -> unit
