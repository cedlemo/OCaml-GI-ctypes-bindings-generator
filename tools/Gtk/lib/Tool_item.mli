open Ctypes

type t
val t_typ : t typ

val create:
  unit -> t
val get_ellipsize_mode:
  t -> Ellipsize_mode.t
val get_expand:
  t -> bool
val get_homogeneous:
  t -> bool
val get_icon_size:
  t -> int32
val get_is_important:
  t -> bool
val get_orientation:
  t -> Orientation.t
val get_proxy_menu_item:
  t -> string -> Widget.t
val get_relief_style:
  t -> Relief_style.t
val get_text_alignment:
  t -> float
val get_text_orientation:
  t -> Orientation.t
val get_text_size_group:
  t -> Size_group.t
val get_toolbar_style:
  t -> Toolbar_style.t
val get_use_drag_window:
  t -> bool
val get_visible_horizontal:
  t -> bool
val get_visible_vertical:
  t -> bool
val rebuild_menu:
  t -> unit
val retrieve_proxy_menu_item:
  t -> Widget.t
val set_expand:
  t -> bool -> unit
val set_homogeneous:
  t -> bool -> unit
val set_is_important:
  t -> bool -> unit
val set_proxy_menu_item:
  t -> string -> Widget.t -> unit
val set_tooltip_markup:
  t -> string -> unit
val set_tooltip_text:
  t -> string -> unit
val set_use_drag_window:
  t -> bool -> unit
val set_visible_horizontal:
  t -> bool -> unit
val set_visible_vertical:
  t -> bool -> unit
val toolbar_reconfigured:
  t -> unit
