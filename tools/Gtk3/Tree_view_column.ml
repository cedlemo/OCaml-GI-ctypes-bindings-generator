open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_tree_view_column_new" (void @-> returning (ptr t_typ))
let create_with_area =
  foreign "gtk_tree_view_column_new_with_area" (ptr Cell_area.t_typ @-> returning (ptr t_typ))
let add_attribute =
  foreign "gtk_tree_view_column_add_attribute" (t_typ @-> ptr Cell_renderer.t_typ @-> string @-> int32_t @-> returning (void))
let cell_get_position self cell_renderer =
  let cell_get_position_raw =
    foreign "gtk_tree_view_column_cell_get_position" (t_typ @-> ptr Cell_renderer.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (bool))
  in
  let x_offset_ptr = allocate int32_t Int32.zero in
  let width_ptr = allocate int32_t Int32.zero in
  let ret = cell_get_position_raw self cell_renderer x_offset_ptr width_ptr in
  let x_offset = !@ x_offset_ptr in
  let width = !@ width_ptr in
  (ret, x_offset, width)
let cell_get_size self cell_area =
  let cell_get_size_raw =
    foreign "gtk_tree_view_column_cell_get_size" (t_typ @-> ptr_opt Rectangle.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> ptr (int32_t) @-> ptr (int32_t) @-> returning (void))
  in
  let x_offset_ptr = allocate int32_t Int32.zero in
  let y_offset_ptr = allocate int32_t Int32.zero in
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let ret = cell_get_size_raw self cell_area x_offset_ptr y_offset_ptr width_ptr height_ptr in
  let x_offset = !@ x_offset_ptr in
  let y_offset = !@ y_offset_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (x_offset, y_offset, width, height)
let cell_is_visible =
  foreign "gtk_tree_view_column_cell_is_visible" (t_typ @-> returning (bool))
(*Not implemented gtk_tree_view_column_cell_set_cell_data type interface not implemented*)
let clear =
  foreign "gtk_tree_view_column_clear" (t_typ @-> returning (void))
let clear_attributes =
  foreign "gtk_tree_view_column_clear_attributes" (t_typ @-> ptr Cell_renderer.t_typ @-> returning (void))
let clicked =
  foreign "gtk_tree_view_column_clicked" (t_typ @-> returning (void))
let focus_cell =
  foreign "gtk_tree_view_column_focus_cell" (t_typ @-> ptr Cell_renderer.t_typ @-> returning (void))
let get_alignment =
  foreign "gtk_tree_view_column_get_alignment" (t_typ @-> returning (float))
let get_button =
  foreign "gtk_tree_view_column_get_button" (t_typ @-> returning (ptr Widget.t_typ))
let get_clickable =
  foreign "gtk_tree_view_column_get_clickable" (t_typ @-> returning (bool))
let get_expand =
  foreign "gtk_tree_view_column_get_expand" (t_typ @-> returning (bool))
let get_fixed_width =
  foreign "gtk_tree_view_column_get_fixed_width" (t_typ @-> returning (int32_t))
let get_max_width =
  foreign "gtk_tree_view_column_get_max_width" (t_typ @-> returning (int32_t))
let get_min_width =
  foreign "gtk_tree_view_column_get_min_width" (t_typ @-> returning (int32_t))
let get_reorderable =
  foreign "gtk_tree_view_column_get_reorderable" (t_typ @-> returning (bool))
let get_resizable =
  foreign "gtk_tree_view_column_get_resizable" (t_typ @-> returning (bool))
let get_sizing =
  foreign "gtk_tree_view_column_get_sizing" (t_typ @-> returning (Tree_view_column_sizing.t_view))
let get_sort_column_id =
  foreign "gtk_tree_view_column_get_sort_column_id" (t_typ @-> returning (int32_t))
let get_sort_indicator =
  foreign "gtk_tree_view_column_get_sort_indicator" (t_typ @-> returning (bool))
let get_sort_order =
  foreign "gtk_tree_view_column_get_sort_order" (t_typ @-> returning (Sort_type.t_view))
let get_spacing =
  foreign "gtk_tree_view_column_get_spacing" (t_typ @-> returning (int32_t))
let get_title =
  foreign "gtk_tree_view_column_get_title" (t_typ @-> returning (string_opt))
let get_tree_view =
  foreign "gtk_tree_view_column_get_tree_view" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_visible =
  foreign "gtk_tree_view_column_get_visible" (t_typ @-> returning (bool))
let get_widget =
  foreign "gtk_tree_view_column_get_widget" (t_typ @-> returning (ptr_opt Widget.t_typ))
let get_width =
  foreign "gtk_tree_view_column_get_width" (t_typ @-> returning (int32_t))
let get_x_offset =
  foreign "gtk_tree_view_column_get_x_offset" (t_typ @-> returning (int32_t))
let pack_end =
  foreign "gtk_tree_view_column_pack_end" (t_typ @-> ptr Cell_renderer.t_typ @-> bool @-> returning (void))
let pack_start =
  foreign "gtk_tree_view_column_pack_start" (t_typ @-> ptr Cell_renderer.t_typ @-> bool @-> returning (void))
let queue_resize =
  foreign "gtk_tree_view_column_queue_resize" (t_typ @-> returning (void))
let set_alignment =
  foreign "gtk_tree_view_column_set_alignment" (t_typ @-> float @-> returning (void))
(*Not implemented gtk_tree_view_column_set_cell_data_func type callback not implemented*)
let set_clickable =
  foreign "gtk_tree_view_column_set_clickable" (t_typ @-> bool @-> returning (void))
let set_expand =
  foreign "gtk_tree_view_column_set_expand" (t_typ @-> bool @-> returning (void))
let set_fixed_width =
  foreign "gtk_tree_view_column_set_fixed_width" (t_typ @-> int32_t @-> returning (void))
let set_max_width =
  foreign "gtk_tree_view_column_set_max_width" (t_typ @-> int32_t @-> returning (void))
let set_min_width =
  foreign "gtk_tree_view_column_set_min_width" (t_typ @-> int32_t @-> returning (void))
let set_reorderable =
  foreign "gtk_tree_view_column_set_reorderable" (t_typ @-> bool @-> returning (void))
let set_resizable =
  foreign "gtk_tree_view_column_set_resizable" (t_typ @-> bool @-> returning (void))
let set_sizing =
  foreign "gtk_tree_view_column_set_sizing" (t_typ @-> Tree_view_column_sizing.t_view @-> returning (void))
let set_sort_column_id =
  foreign "gtk_tree_view_column_set_sort_column_id" (t_typ @-> int32_t @-> returning (void))
let set_sort_indicator =
  foreign "gtk_tree_view_column_set_sort_indicator" (t_typ @-> bool @-> returning (void))
let set_sort_order =
  foreign "gtk_tree_view_column_set_sort_order" (t_typ @-> Sort_type.t_view @-> returning (void))
let set_spacing =
  foreign "gtk_tree_view_column_set_spacing" (t_typ @-> int32_t @-> returning (void))
let set_title =
  foreign "gtk_tree_view_column_set_title" (t_typ @-> string @-> returning (void))
let set_visible =
  foreign "gtk_tree_view_column_set_visible" (t_typ @-> bool @-> returning (void))
let set_widget =
  foreign "gtk_tree_view_column_set_widget" (t_typ @-> ptr_opt Widget.t_typ @-> returning (void))
