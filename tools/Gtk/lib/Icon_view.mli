open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_icon_view_new return type object not handled*)
(*Not implemented gtk_icon_view_new_with_area type object not implemented*)
(*Not implemented gtk_icon_view_new_with_model type interface not implemented*)
val convert_widget_to_bin_window_coords :
  t structure ptr -> int32 -> int32 -> (int32 * int32)
val create_drag_icon:
  t structure ptr -> Tree_path.t structure ptr -> Surface.t structure ptr
(*Not implemented gtk_icon_view_enable_model_drag_dest type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_icon_view_enable_model_drag_source type C Array type for Types.Array tag not implemented*)
val get_activate_on_single_click:
  t structure ptr -> bool
(*Not implemented gtk_icon_view_get_cell_rect type object not implemented*)
val get_column_spacing:
  t structure ptr -> int32
val get_columns:
  t structure ptr -> int32
(*Not implemented gtk_icon_view_get_cursor type object not implemented*)
val get_dest_item_at_pos :
  t structure ptr -> int32 -> int32 -> (bool * Tree_path.t structure ptr * Icon_view_drop_position.t)
val get_drag_dest_item :
  t structure ptr -> (Tree_path.t structure ptr * Icon_view_drop_position.t)
(*Not implemented gtk_icon_view_get_item_at_pos type object not implemented*)
val get_item_column:
  t structure ptr -> Tree_path.t structure ptr -> int32
val get_item_orientation:
  t structure ptr -> Orientation.t
val get_item_padding:
  t structure ptr -> int32
val get_item_row:
  t structure ptr -> Tree_path.t structure ptr -> int32
val get_item_width:
  t structure ptr -> int32
val get_margin:
  t structure ptr -> int32
val get_markup_column:
  t structure ptr -> int32
(*Not implemented gtk_icon_view_get_model return type interface not handled*)
val get_path_at_pos:
  t structure ptr -> int32 -> int32 -> Tree_path.t structure ptr option
val get_pixbuf_column:
  t structure ptr -> int32
val get_reorderable:
  t structure ptr -> bool
val get_row_spacing:
  t structure ptr -> int32
val get_selected_items:
  t structure ptr -> List.t structure ptr
val get_selection_mode:
  t structure ptr -> Selection_mode.t
val get_spacing:
  t structure ptr -> int32
val get_text_column:
  t structure ptr -> int32
val get_tooltip_column:
  t structure ptr -> int32
(*Not implemented gtk_icon_view_get_tooltip_context type interface not implemented*)
val get_visible_range :
  t structure ptr -> (bool * Tree_path.t structure ptr * Tree_path.t structure ptr)
val item_activated:
  t structure ptr -> Tree_path.t structure ptr -> unit
val path_is_selected:
  t structure ptr -> Tree_path.t structure ptr -> bool
val scroll_to_path:
  t structure ptr -> Tree_path.t structure ptr -> bool -> float -> float -> unit
val select_all:
  t structure ptr -> unit
val select_path:
  t structure ptr -> Tree_path.t structure ptr -> unit
(*Not implemented gtk_icon_view_selected_foreach type callback not implemented*)
val set_activate_on_single_click:
  t structure ptr -> bool -> unit
val set_column_spacing:
  t structure ptr -> int32 -> unit
val set_columns:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_icon_view_set_cursor type object not implemented*)
val set_drag_dest_item:
  t structure ptr -> Tree_path.t structure ptr option -> Icon_view_drop_position.t -> unit
val set_item_orientation:
  t structure ptr -> Orientation.t -> unit
val set_item_padding:
  t structure ptr -> int32 -> unit
val set_item_width:
  t structure ptr -> int32 -> unit
val set_margin:
  t structure ptr -> int32 -> unit
val set_markup_column:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_icon_view_set_model type interface not implemented*)
val set_pixbuf_column:
  t structure ptr -> int32 -> unit
val set_reorderable:
  t structure ptr -> bool -> unit
val set_row_spacing:
  t structure ptr -> int32 -> unit
val set_selection_mode:
  t structure ptr -> Selection_mode.t -> unit
val set_spacing:
  t structure ptr -> int32 -> unit
val set_text_column:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_icon_view_set_tooltip_cell type object not implemented*)
val set_tooltip_column:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_icon_view_set_tooltip_item type object not implemented*)
val unselect_all:
  t structure ptr -> unit
val unselect_path:
  t structure ptr -> Tree_path.t structure ptr -> unit
val unset_model_drag_dest:
  t structure ptr -> unit
val unset_model_drag_source:
  t structure ptr -> unit
