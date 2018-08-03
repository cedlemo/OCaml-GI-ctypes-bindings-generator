open Ctypes

type t
val t_typ : t typ

val activate :
  t -> Cell_area_context.t ptr -> Widget.t ptr -> Rectangle.t structure ptr -> Cell_renderer_state.t_list -> bool -> bool
(*Not implemented gtk_cell_area_activate_cell type union not implemented*)
val add :
  t -> Cell_renderer.t ptr -> unit
val add_focus_sibling :
  t -> Cell_renderer.t ptr -> Cell_renderer.t ptr -> unit
(*Not implemented gtk_cell_area_apply_attributes type interface not implemented*)
val attribute_connect :
  t -> Cell_renderer.t ptr -> string -> int32 -> unit
val attribute_disconnect :
  t -> Cell_renderer.t ptr -> string -> unit
val attribute_get_column :
  t -> Cell_renderer.t ptr -> string -> int32
val cell_get_property :
  t -> Cell_renderer.t ptr -> string -> Value.t structure ptr -> unit
val cell_set_property :
  t -> Cell_renderer.t ptr -> string -> Value.t structure ptr -> unit
val copy_context :
  t -> Cell_area_context.t ptr -> Cell_area_context.t ptr
val create_context :
  t -> Cell_area_context.t ptr
(*Not implemented gtk_cell_area_event type union not implemented*)
val focus :
  t -> Direction_type.t -> bool
(*Not implemented gtk_cell_area_foreach type callback not implemented*)
(*Not implemented gtk_cell_area_foreach_alloc type callback not implemented*)
val get_cell_allocation :
  t -> Cell_area_context.t ptr -> Widget.t ptr -> Cell_renderer.t ptr -> Rectangle.t structure ptr -> (Rectangle.t structure)
val get_cell_at_position :
  t -> Cell_area_context.t ptr -> Widget.t ptr -> Rectangle.t structure ptr -> int32 -> int32 -> (Cell_renderer.t ptr * Rectangle.t structure)
val get_current_path_string :
  t -> string option
(*Not implemented gtk_cell_area_get_edit_widget return type interface not handled*)
val get_edited_cell :
  t -> Cell_renderer.t ptr
val get_focus_cell :
  t -> Cell_renderer.t ptr
val get_focus_from_sibling :
  t -> Cell_renderer.t ptr -> Cell_renderer.t ptr option
val get_focus_siblings :
  t -> Cell_renderer.t ptr -> List.t structure (* Not implemented : interface *) ptr
val get_preferred_height :
  t -> Cell_area_context.t ptr -> Widget.t ptr -> (int32 * int32)
val get_preferred_height_for_width :
  t -> Cell_area_context.t ptr -> Widget.t ptr -> int32 -> (int32 * int32)
val get_preferred_width :
  t -> Cell_area_context.t ptr -> Widget.t ptr -> (int32 * int32)
val get_preferred_width_for_height :
  t -> Cell_area_context.t ptr -> Widget.t ptr -> int32 -> (int32 * int32)
val get_request_mode :
  t -> Size_request_mode.t
val has_renderer :
  t -> Cell_renderer.t ptr -> bool
val inner_cell_area :
  t -> Widget.t ptr -> Rectangle.t structure ptr -> (Rectangle.t structure)
val is_activatable :
  t -> bool
val is_focus_sibling :
  t -> Cell_renderer.t ptr -> Cell_renderer.t ptr -> bool
val remove :
  t -> Cell_renderer.t ptr -> unit
val remove_focus_sibling :
  t -> Cell_renderer.t ptr -> Cell_renderer.t ptr -> unit
val render :
  t -> Cell_area_context.t ptr -> Widget.t ptr -> Context.t structure ptr -> Rectangle.t structure ptr -> Rectangle.t structure ptr -> Cell_renderer_state.t_list -> bool -> unit
val request_renderer :
  t -> Cell_renderer.t ptr -> Orientation.t -> Widget.t ptr -> int32 -> (int32 * int32)
val set_focus_cell :
  t -> Cell_renderer.t ptr -> unit
val stop_editing :
  t -> bool -> unit
