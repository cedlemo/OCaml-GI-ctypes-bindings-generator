open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_tree_view_column_new return type object not handled*)
(*Not implemented gtk_tree_view_column_new_with_area type object not implemented*)
(*Not implemented gtk_tree_view_column_add_attribute type object not implemented*)
(*Not implemented gtk_tree_view_column_cell_get_position type object not implemented*)
let cell_get_size self cell_area =
  let x_offset_ptr = allocate int32_t Int32.zero in
  let y_offset_ptr = allocate int32_t Int32.zero in
  let width_ptr = allocate int32_t Int32.zero in
  let height_ptr = allocate int32_t Int32.zero in
  let cell_get_size_raw =
    foreign "gtk_tree_view_column_cell_get_size" (ptr t_typ @-> ptr_opt Rectangle.t_typ @-> ptr (int32_t) @-> ptr (int32_t) @-> ptr (int32_t) @-> ptr (int32_t) @-> returning void)
  in
  let ret = cell_get_size_raw self cell_area x_offset_ptr y_offset_ptr width_ptr height_ptr in
  let x_offset = !@ x_offset_ptr in
  let y_offset = !@ y_offset_ptr in
  let width = !@ width_ptr in
  let height = !@ height_ptr in
  (x_offset, y_offset, width, height)
let cell_is_visible =
  foreign "gtk_tree_view_column_cell_is_visible" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_tree_view_column_cell_set_cell_data type interface not implemented*)
let clear =
  foreign "gtk_tree_view_column_clear" (ptr t_typ @-> returning (void))
(*Not implemented gtk_tree_view_column_clear_attributes type object not implemented*)
let clicked =
  foreign "gtk_tree_view_column_clicked" (ptr t_typ @-> returning (void))
(*Not implemented gtk_tree_view_column_focus_cell type object not implemented*)
let get_alignment =
  foreign "gtk_tree_view_column_get_alignment" (ptr t_typ @-> returning (float))
(*Not implemented gtk_tree_view_column_get_button return type object not handled*)
let get_clickable =
  foreign "gtk_tree_view_column_get_clickable" (ptr t_typ @-> returning (bool))
let get_expand =
  foreign "gtk_tree_view_column_get_expand" (ptr t_typ @-> returning (bool))
let get_fixed_width =
  foreign "gtk_tree_view_column_get_fixed_width" (ptr t_typ @-> returning (int32_t))
let get_max_width =
  foreign "gtk_tree_view_column_get_max_width" (ptr t_typ @-> returning (int32_t))
let get_min_width =
  foreign "gtk_tree_view_column_get_min_width" (ptr t_typ @-> returning (int32_t))
let get_reorderable =
  foreign "gtk_tree_view_column_get_reorderable" (ptr t_typ @-> returning (bool))
let get_resizable =
  foreign "gtk_tree_view_column_get_resizable" (ptr t_typ @-> returning (bool))
let get_sizing =
  foreign "gtk_tree_view_column_get_sizing" (ptr t_typ @-> returning (Tree_view_column_sizing.t_view))
let get_sort_column_id =
  foreign "gtk_tree_view_column_get_sort_column_id" (ptr t_typ @-> returning (int32_t))
let get_sort_indicator =
  foreign "gtk_tree_view_column_get_sort_indicator" (ptr t_typ @-> returning (bool))
let get_sort_order =
  foreign "gtk_tree_view_column_get_sort_order" (ptr t_typ @-> returning (Sort_type.t_view))
let get_spacing =
  foreign "gtk_tree_view_column_get_spacing" (ptr t_typ @-> returning (int32_t))
let get_title =
  foreign "gtk_tree_view_column_get_title" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_tree_view_column_get_tree_view return type object not handled*)
let get_visible =
  foreign "gtk_tree_view_column_get_visible" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_tree_view_column_get_widget return type object not handled*)
let get_width =
  foreign "gtk_tree_view_column_get_width" (ptr t_typ @-> returning (int32_t))
let get_x_offset =
  foreign "gtk_tree_view_column_get_x_offset" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_tree_view_column_pack_end type object not implemented*)
(*Not implemented gtk_tree_view_column_pack_start type object not implemented*)
let queue_resize =
  foreign "gtk_tree_view_column_queue_resize" (ptr t_typ @-> returning (void))
let set_alignment =
  foreign "gtk_tree_view_column_set_alignment" (ptr t_typ @-> float @-> returning (void))
(*Not implemented gtk_tree_view_column_set_cell_data_func type object not implemented*)
let set_clickable =
  foreign "gtk_tree_view_column_set_clickable" (ptr t_typ @-> bool @-> returning (void))
let set_expand =
  foreign "gtk_tree_view_column_set_expand" (ptr t_typ @-> bool @-> returning (void))
let set_fixed_width =
  foreign "gtk_tree_view_column_set_fixed_width" (ptr t_typ @-> int32_t @-> returning (void))
let set_max_width =
  foreign "gtk_tree_view_column_set_max_width" (ptr t_typ @-> int32_t @-> returning (void))
let set_min_width =
  foreign "gtk_tree_view_column_set_min_width" (ptr t_typ @-> int32_t @-> returning (void))
let set_reorderable =
  foreign "gtk_tree_view_column_set_reorderable" (ptr t_typ @-> bool @-> returning (void))
let set_resizable =
  foreign "gtk_tree_view_column_set_resizable" (ptr t_typ @-> bool @-> returning (void))
let set_sizing =
  foreign "gtk_tree_view_column_set_sizing" (ptr t_typ @-> Tree_view_column_sizing.t_view @-> returning (void))
let set_sort_column_id =
  foreign "gtk_tree_view_column_set_sort_column_id" (ptr t_typ @-> int32_t @-> returning (void))
let set_sort_indicator =
  foreign "gtk_tree_view_column_set_sort_indicator" (ptr t_typ @-> bool @-> returning (void))
let set_sort_order =
  foreign "gtk_tree_view_column_set_sort_order" (ptr t_typ @-> Sort_type.t_view @-> returning (void))
let set_spacing =
  foreign "gtk_tree_view_column_set_spacing" (ptr t_typ @-> int32_t @-> returning (void))
let set_title =
  foreign "gtk_tree_view_column_set_title" (ptr t_typ @-> string @-> returning (void))
let set_visible =
  foreign "gtk_tree_view_column_set_visible" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_tree_view_column_set_widget type object not implemented*)
