open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let activate =
  foreign "gtk_cell_area_activate" (t_typ @-> ptr Cell_area_context.t_typ @-> ptr Widget.t_typ @-> ptr Rectangle.t_typ @-> Cell_renderer_state.t_list_view @-> bool @-> returning (bool))
(*Not implemented gtk_cell_area_activate_cell type union not implemented*)
let add =
  foreign "gtk_cell_area_add" (t_typ @-> ptr Cell_renderer.t_typ @-> returning (void))
let add_focus_sibling =
  foreign "gtk_cell_area_add_focus_sibling" (t_typ @-> ptr Cell_renderer.t_typ @-> ptr Cell_renderer.t_typ @-> returning (void))
(*Not implemented gtk_cell_area_apply_attributes type interface not implemented*)
let attribute_connect =
  foreign "gtk_cell_area_attribute_connect" (t_typ @-> ptr Cell_renderer.t_typ @-> string @-> int32_t @-> returning (void))
let attribute_disconnect =
  foreign "gtk_cell_area_attribute_disconnect" (t_typ @-> ptr Cell_renderer.t_typ @-> string @-> returning (void))
let attribute_get_column =
  foreign "gtk_cell_area_attribute_get_column" (t_typ @-> ptr Cell_renderer.t_typ @-> string @-> returning (int32_t))
let cell_get_property =
  foreign "gtk_cell_area_cell_get_property" (t_typ @-> ptr Cell_renderer.t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let cell_set_property =
  foreign "gtk_cell_area_cell_set_property" (t_typ @-> ptr Cell_renderer.t_typ @-> string @-> ptr Value.t_typ @-> returning (void))
let copy_context =
  foreign "gtk_cell_area_copy_context" (t_typ @-> ptr Cell_area_context.t_typ @-> returning (ptr Cell_area_context.t_typ))
let create_context =
  foreign "gtk_cell_area_create_context" (t_typ @-> returning (ptr Cell_area_context.t_typ))
(*Not implemented gtk_cell_area_event type union not implemented*)
let focus =
  foreign "gtk_cell_area_focus" (t_typ @-> Direction_type.t_view @-> returning (bool))
(*Not implemented gtk_cell_area_foreach type callback not implemented*)
(*Not implemented gtk_cell_area_foreach_alloc type callback not implemented*)
let get_cell_allocation self context widget renderer cell_area =
  let get_cell_allocation_raw =
    foreign "gtk_cell_area_get_cell_allocation" (t_typ @-> ptr Cell_area_context.t_typ @-> ptr Widget.t_typ @-> ptr Cell_renderer.t_typ @-> ptr Rectangle.t_typ @-> ptr (Rectangle.t_typ) @-> returning (void))
  in
  let allocation_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let ret = get_cell_allocation_raw self context widget renderer cell_area allocation_ptr in
  let allocation = !@ allocation_ptr in
  (allocation)
let get_cell_at_position self context widget cell_area x y =
  let get_cell_at_position_raw =
    foreign "gtk_cell_area_get_cell_at_position" (t_typ @-> ptr Cell_area_context.t_typ @-> ptr Widget.t_typ @-> ptr Rectangle.t_typ @-> int32_t @-> int32_t @-> ptr (Rectangle.t_typ) @-> returning (ptr Cell_renderer.t_typ))
  in
  let alloc_area_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let ret = get_cell_at_position_raw self context widget cell_area x y alloc_area_ptr in
  let alloc_area = !@ alloc_area_ptr in
  (ret, alloc_area)
let get_current_path_string =
  foreign "gtk_cell_area_get_current_path_string" (t_typ @-> returning (string_opt))
(*Not implemented gtk_cell_area_get_edit_widget return type interface not handled*)
let get_edited_cell =
  foreign "gtk_cell_area_get_edited_cell" (t_typ @-> returning (ptr Cell_renderer.t_typ))
let get_focus_cell =
  foreign "gtk_cell_area_get_focus_cell" (t_typ @-> returning (ptr Cell_renderer.t_typ))
let get_focus_from_sibling =
  foreign "gtk_cell_area_get_focus_from_sibling" (t_typ @-> ptr Cell_renderer.t_typ @-> returning (ptr_opt Cell_renderer.t_typ))
let get_focus_siblings =
  foreign "gtk_cell_area_get_focus_siblings" (t_typ @-> ptr Cell_renderer.t_typ @-> returning (ptr List.t_typ))
let get_preferred_height self context widget =
  let get_preferred_height_raw =
    foreign "gtk_cell_area_get_preferred_height" (t_typ @-> ptr Cell_area_context.t_typ @-> ptr Widget.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_height_ptr = allocate int32_t Int32.zero in
  let natural_height_ptr = allocate int32_t Int32.zero in
  let ret = get_preferred_height_raw self context widget minimum_height_ptr natural_height_ptr in
  let minimum_height = !@ minimum_height_ptr in
  let natural_height = !@ natural_height_ptr in
  (minimum_height, natural_height)
let get_preferred_height_for_width self context widget width =
  let get_preferred_height_for_width_raw =
    foreign "gtk_cell_area_get_preferred_height_for_width" (t_typ @-> ptr Cell_area_context.t_typ @-> ptr Widget.t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_height_ptr = allocate int32_t Int32.zero in
  let natural_height_ptr = allocate int32_t Int32.zero in
  let ret = get_preferred_height_for_width_raw self context widget width minimum_height_ptr natural_height_ptr in
  let minimum_height = !@ minimum_height_ptr in
  let natural_height = !@ natural_height_ptr in
  (minimum_height, natural_height)
let get_preferred_width self context widget =
  let get_preferred_width_raw =
    foreign "gtk_cell_area_get_preferred_width" (t_typ @-> ptr Cell_area_context.t_typ @-> ptr Widget.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_width_ptr = allocate int32_t Int32.zero in
  let natural_width_ptr = allocate int32_t Int32.zero in
  let ret = get_preferred_width_raw self context widget minimum_width_ptr natural_width_ptr in
  let minimum_width = !@ minimum_width_ptr in
  let natural_width = !@ natural_width_ptr in
  (minimum_width, natural_width)
let get_preferred_width_for_height self context widget height =
  let get_preferred_width_for_height_raw =
    foreign "gtk_cell_area_get_preferred_width_for_height" (t_typ @-> ptr Cell_area_context.t_typ @-> ptr Widget.t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_width_ptr = allocate int32_t Int32.zero in
  let natural_width_ptr = allocate int32_t Int32.zero in
  let ret = get_preferred_width_for_height_raw self context widget height minimum_width_ptr natural_width_ptr in
  let minimum_width = !@ minimum_width_ptr in
  let natural_width = !@ natural_width_ptr in
  (minimum_width, natural_width)
let get_request_mode =
  foreign "gtk_cell_area_get_request_mode" (t_typ @-> returning (Size_request_mode.t_view))
let has_renderer =
  foreign "gtk_cell_area_has_renderer" (t_typ @-> ptr Cell_renderer.t_typ @-> returning (bool))
let inner_cell_area self widget cell_area =
  let inner_cell_area_raw =
    foreign "gtk_cell_area_inner_cell_area" (t_typ @-> ptr Widget.t_typ @-> ptr Rectangle.t_typ @-> ptr (Rectangle.t_typ) @-> returning (void))
  in
  let inner_area_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let ret = inner_cell_area_raw self widget cell_area inner_area_ptr in
  let inner_area = !@ inner_area_ptr in
  (inner_area)
let is_activatable =
  foreign "gtk_cell_area_is_activatable" (t_typ @-> returning (bool))
let is_focus_sibling =
  foreign "gtk_cell_area_is_focus_sibling" (t_typ @-> ptr Cell_renderer.t_typ @-> ptr Cell_renderer.t_typ @-> returning (bool))
let remove =
  foreign "gtk_cell_area_remove" (t_typ @-> ptr Cell_renderer.t_typ @-> returning (void))
let remove_focus_sibling =
  foreign "gtk_cell_area_remove_focus_sibling" (t_typ @-> ptr Cell_renderer.t_typ @-> ptr Cell_renderer.t_typ @-> returning (void))
let render =
  foreign "gtk_cell_area_render" (t_typ @-> ptr Cell_area_context.t_typ @-> ptr Widget.t_typ @-> ptr Context.t_typ @-> ptr Rectangle.t_typ @-> ptr Rectangle.t_typ @-> Cell_renderer_state.t_list_view @-> bool @-> returning (void))
let request_renderer self renderer orientation widget for_size =
  let request_renderer_raw =
    foreign "gtk_cell_area_request_renderer" (t_typ @-> ptr Cell_renderer.t_typ @-> Orientation.t_view @-> ptr Widget.t_typ @-> int32_t @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let minimum_size_ptr = allocate int32_t Int32.zero in
  let natural_size_ptr = allocate int32_t Int32.zero in
  let ret = request_renderer_raw self renderer orientation widget for_size minimum_size_ptr natural_size_ptr in
  let minimum_size = !@ minimum_size_ptr in
  let natural_size = !@ natural_size_ptr in
  (minimum_size, natural_size)
let set_focus_cell =
  foreign "gtk_cell_area_set_focus_cell" (t_typ @-> ptr Cell_renderer.t_typ @-> returning (void))
let stop_editing =
  foreign "gtk_cell_area_stop_editing" (t_typ @-> bool @-> returning (void))
