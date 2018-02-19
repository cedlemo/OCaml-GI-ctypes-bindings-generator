open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_cell_area_activate type object not implemented*)
(*Not implemented gtk_cell_area_activate_cell type object not implemented*)
(*Not implemented gtk_cell_area_add type object not implemented*)
(*Not implemented gtk_cell_area_add_focus_sibling type object not implemented*)
(*Not implemented gtk_cell_area_apply_attributes type interface not implemented*)
(*Not implemented gtk_cell_area_attribute_connect type object not implemented*)
(*Not implemented gtk_cell_area_attribute_disconnect type object not implemented*)
(*Not implemented gtk_cell_area_attribute_get_column type object not implemented*)
(*Not implemented gtk_cell_area_cell_get_property type object not implemented*)
(*Not implemented gtk_cell_area_cell_set_property type object not implemented*)
(*Not implemented gtk_cell_area_copy_context type object not implemented*)
(*Not implemented gtk_cell_area_create_context return type object not handled*)
(*Not implemented gtk_cell_area_event type object not implemented*)
let focus =
  foreign "gtk_cell_area_focus" (ptr t_typ @-> Direction_type.t_view @-> returning (bool))
(*Not implemented gtk_cell_area_foreach type callback not implemented*)
(*Not implemented gtk_cell_area_foreach_alloc type object not implemented*)
(*Not implemented gtk_cell_area_get_cell_allocation type object not implemented*)
(*Not implemented gtk_cell_area_get_cell_at_position type object not implemented*)
let get_current_path_string =
  foreign "gtk_cell_area_get_current_path_string" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_cell_area_get_edit_widget return type interface not handled*)
(*Not implemented gtk_cell_area_get_edited_cell return type object not handled*)
(*Not implemented gtk_cell_area_get_focus_cell return type object not handled*)
(*Not implemented gtk_cell_area_get_focus_from_sibling type object not implemented*)
(*Not implemented gtk_cell_area_get_focus_siblings type object not implemented*)
(*Not implemented gtk_cell_area_get_preferred_height type object not implemented*)
(*Not implemented gtk_cell_area_get_preferred_height_for_width type object not implemented*)
(*Not implemented gtk_cell_area_get_preferred_width type object not implemented*)
(*Not implemented gtk_cell_area_get_preferred_width_for_height type object not implemented*)
let get_request_mode =
  foreign "gtk_cell_area_get_request_mode" (ptr t_typ @-> returning (Size_request_mode.t_view))
(*Not implemented gtk_cell_area_has_renderer type object not implemented*)
(*Not implemented gtk_cell_area_inner_cell_area type object not implemented*)
let is_activatable =
  foreign "gtk_cell_area_is_activatable" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_cell_area_is_focus_sibling type object not implemented*)
(*Not implemented gtk_cell_area_remove type object not implemented*)
(*Not implemented gtk_cell_area_remove_focus_sibling type object not implemented*)
(*Not implemented gtk_cell_area_render type object not implemented*)
(*Not implemented gtk_cell_area_request_renderer type object not implemented*)
(*Not implemented gtk_cell_area_set_focus_cell type object not implemented*)
let stop_editing =
  foreign "gtk_cell_area_stop_editing" (ptr t_typ @-> bool @-> returning (void))
