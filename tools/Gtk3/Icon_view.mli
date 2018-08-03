open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val create_with_area :
  Cell_area.t ptr -> Widget.t ptr
(*Not implemented gtk_icon_view_new_with_model type interface not implemented*)
val convert_widget_to_bin_window_coords :
  t -> int32 -> int32 -> (int32 * int32)
val create_drag_icon :
  t -> Tree_path.t structure ptr -> Surface.t structure ptr
(*Not implemented gtk_icon_view_enable_model_drag_dest type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_icon_view_enable_model_drag_source type C Array type for Types.Array tag not implemented*)
val get_activate_on_single_click :
  t -> bool
val get_cell_rect :
  t -> Tree_path.t structure ptr -> Cell_renderer.t ptr option -> (bool * Rectangle.t structure)
val get_column_spacing :
  t -> int32
val get_columns :
  t -> int32
val get_cursor :
  t -> (bool * Tree_path.t structure ptr * Cell_renderer.t ptr)
val get_dest_item_at_pos :
  t -> int32 -> int32 -> (bool * Tree_path.t structure ptr * Icon_view_drop_position.t)
val get_drag_dest_item :
  t -> (Tree_path.t structure ptr * Icon_view_drop_position.t)
val get_item_at_pos :
  t -> int32 -> int32 -> (bool * Tree_path.t structure ptr * Cell_renderer.t ptr)
val get_item_column :
  t -> Tree_path.t structure ptr -> int32
val get_item_orientation :
  t -> Orientation.t
val get_item_padding :
  t -> int32
val get_item_row :
  t -> Tree_path.t structure ptr -> int32
val get_item_width :
  t -> int32
val get_margin :
  t -> int32
val get_markup_column :
  t -> int32
(*Not implemented gtk_icon_view_get_model return type interface not handled*)
val get_path_at_pos :
  t -> int32 -> int32 -> Tree_path.t structure ptr option
val get_pixbuf_column :
  t -> int32
val get_reorderable :
  t -> bool
val get_row_spacing :
  t -> int32
val get_selected_items :
  t -> List.t structure (* Not implemented : interface *) ptr
val get_selection_mode :
  t -> Selection_mode.t
val get_spacing :
  t -> int32
val get_text_column :
  t -> int32
val get_tooltip_column :
  t -> int32
(*Not implemented gtk_icon_view_get_tooltip_context type interface not implemented*)
val get_visible_range :
  t -> (bool * Tree_path.t structure ptr * Tree_path.t structure ptr)
val item_activated :
  t -> Tree_path.t structure ptr -> unit
val path_is_selected :
  t -> Tree_path.t structure ptr -> bool
val scroll_to_path :
  t -> Tree_path.t structure ptr -> bool -> float -> float -> unit
val select_all :
  t -> unit
val select_path :
  t -> Tree_path.t structure ptr -> unit
(*Not implemented gtk_icon_view_selected_foreach type callback not implemented*)
val set_activate_on_single_click :
  t -> bool -> unit
val set_column_spacing :
  t -> int32 -> unit
val set_columns :
  t -> int32 -> unit
val set_cursor :
  t -> Tree_path.t structure ptr -> Cell_renderer.t ptr option -> bool -> unit
val set_drag_dest_item :
  t -> Tree_path.t structure ptr option -> Icon_view_drop_position.t -> unit
val set_item_orientation :
  t -> Orientation.t -> unit
val set_item_padding :
  t -> int32 -> unit
val set_item_width :
  t -> int32 -> unit
val set_margin :
  t -> int32 -> unit
val set_markup_column :
  t -> int32 -> unit
(*Not implemented gtk_icon_view_set_model type interface not implemented*)
val set_pixbuf_column :
  t -> int32 -> unit
val set_reorderable :
  t -> bool -> unit
val set_row_spacing :
  t -> int32 -> unit
val set_selection_mode :
  t -> Selection_mode.t -> unit
val set_spacing :
  t -> int32 -> unit
val set_text_column :
  t -> int32 -> unit
val set_tooltip_cell :
  t -> Tooltip.t ptr -> Tree_path.t structure ptr -> Cell_renderer.t ptr option -> unit
val set_tooltip_column :
  t -> int32 -> unit
val set_tooltip_item :
  t -> Tooltip.t ptr -> Tree_path.t structure ptr -> unit
val unselect_all :
  t -> unit
val unselect_path :
  t -> Tree_path.t structure ptr -> unit
val unset_model_drag_dest :
  t -> unit
val unset_model_drag_source :
  t -> unit
