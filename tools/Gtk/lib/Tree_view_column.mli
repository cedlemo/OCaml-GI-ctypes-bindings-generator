open Ctypes

type t
val t_typ : t typ

val create:
  unit -> t
val create_with_area:
  Cell_area.t -> t
val add_attribute:
  t -> Cell_renderer.t -> string -> int32 -> unit
val cell_get_position :
  t -> Cell_renderer.t -> (bool * int32 * int32)
val cell_get_size :
  t -> Rectangle.t structure ptr option -> (int32 * int32 * int32 * int32)
val cell_is_visible:
  t -> bool
(*Not implemented gtk_tree_view_column_cell_set_cell_data type interface not implemented*)
val clear:
  t -> unit
val clear_attributes:
  t -> Cell_renderer.t -> unit
val clicked:
  t -> unit
val focus_cell:
  t -> Cell_renderer.t -> unit
val get_alignment:
  t -> float
val get_button:
  t -> Widget.t
val get_clickable:
  t -> bool
val get_expand:
  t -> bool
val get_fixed_width:
  t -> int32
val get_max_width:
  t -> int32
val get_min_width:
  t -> int32
val get_reorderable:
  t -> bool
val get_resizable:
  t -> bool
val get_sizing:
  t -> Tree_view_column_sizing.t
val get_sort_column_id:
  t -> int32
val get_sort_indicator:
  t -> bool
val get_sort_order:
  t -> Sort_type.t
val get_spacing:
  t -> int32
val get_title:
  t -> string option
val get_tree_view:
  t -> Widget.t
val get_visible:
  t -> bool
val get_widget:
  t -> Widget.t
val get_width:
  t -> int32
val get_x_offset:
  t -> int32
val pack_end:
  t -> Cell_renderer.t -> bool -> unit
val pack_start:
  t -> Cell_renderer.t -> bool -> unit
val queue_resize:
  t -> unit
val set_alignment:
  t -> float -> unit
(*Not implemented gtk_tree_view_column_set_cell_data_func type callback not implemented*)
val set_clickable:
  t -> bool -> unit
val set_expand:
  t -> bool -> unit
val set_fixed_width:
  t -> int32 -> unit
val set_max_width:
  t -> int32 -> unit
val set_min_width:
  t -> int32 -> unit
val set_reorderable:
  t -> bool -> unit
val set_resizable:
  t -> bool -> unit
val set_sizing:
  t -> Tree_view_column_sizing.t -> unit
val set_sort_column_id:
  t -> int32 -> unit
val set_sort_indicator:
  t -> bool -> unit
val set_sort_order:
  t -> Sort_type.t -> unit
val set_spacing:
  t -> int32 -> unit
val set_title:
  t -> string -> unit
val set_visible:
  t -> bool -> unit
val set_widget:
  t -> Widget.t -> unit
