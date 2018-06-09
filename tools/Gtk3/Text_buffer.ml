open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_text_buffer_new" (Text_tag_table.t_typ @-> returning (t_typ))
let add_mark =
  foreign "gtk_text_buffer_add_mark" (t_typ @-> Text_mark.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let add_selection_clipboard =
  foreign "gtk_text_buffer_add_selection_clipboard" (t_typ @-> Clipboard.t_typ @-> returning (void))
let apply_tag =
  foreign "gtk_text_buffer_apply_tag" (t_typ @-> Text_tag.t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let apply_tag_by_name =
  foreign "gtk_text_buffer_apply_tag_by_name" (t_typ @-> string @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let backspace =
  foreign "gtk_text_buffer_backspace" (t_typ @-> ptr Text_iter.t_typ @-> bool @-> bool @-> returning (bool))
let begin_user_action =
  foreign "gtk_text_buffer_begin_user_action" (t_typ @-> returning (void))
let copy_clipboard =
  foreign "gtk_text_buffer_copy_clipboard" (t_typ @-> Clipboard.t_typ @-> returning (void))
let create_child_anchor =
  foreign "gtk_text_buffer_create_child_anchor" (t_typ @-> ptr Text_iter.t_typ @-> returning (Text_child_anchor.t_typ))
let create_mark =
  foreign "gtk_text_buffer_create_mark" (t_typ @-> string_opt @-> ptr Text_iter.t_typ @-> bool @-> returning (Text_mark.t_typ))
let cut_clipboard =
  foreign "gtk_text_buffer_cut_clipboard" (t_typ @-> Clipboard.t_typ @-> bool @-> returning (void))
let delete =
  foreign "gtk_text_buffer_delete" (t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let delete_interactive =
  foreign "gtk_text_buffer_delete_interactive" (t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> bool @-> returning (bool))
let delete_mark =
  foreign "gtk_text_buffer_delete_mark" (t_typ @-> Text_mark.t_typ @-> returning (void))
let delete_mark_by_name =
  foreign "gtk_text_buffer_delete_mark_by_name" (t_typ @-> string @-> returning (void))
let delete_selection =
  foreign "gtk_text_buffer_delete_selection" (t_typ @-> bool @-> bool @-> returning (bool))
(*Not implemented gtk_text_buffer_deserialize type C Array type for Types.Array tag not implemented*)
let deserialize_get_can_create_tags =
  foreign "gtk_text_buffer_deserialize_get_can_create_tags" (t_typ @-> ptr Atom.t_typ @-> returning (bool))
let deserialize_set_can_create_tags =
  foreign "gtk_text_buffer_deserialize_set_can_create_tags" (t_typ @-> ptr Atom.t_typ @-> bool @-> returning (void))
let end_user_action =
  foreign "gtk_text_buffer_end_user_action" (t_typ @-> returning (void))
let get_bounds self =
  let get_bounds_raw =
    foreign "gtk_text_buffer_get_bounds" (t_typ @-> ptr (Text_iter.t_typ) @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let start_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let _end_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_bounds_raw self start_ptr _end_ptr in
  let start = !@ start_ptr in
  let _end = !@ _end_ptr in
  (start, _end)
let get_char_count =
  foreign "gtk_text_buffer_get_char_count" (t_typ @-> returning (int32_t))
let get_copy_target_list =
  foreign "gtk_text_buffer_get_copy_target_list" (t_typ @-> returning (ptr Target_list.t_typ))
(*Not implemented gtk_text_buffer_get_deserialize_formats return type C Array type for Types.Array tag not handled*)
let get_end_iter self =
  let get_end_iter_raw =
    foreign "gtk_text_buffer_get_end_iter" (t_typ @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_end_iter_raw self iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_has_selection =
  foreign "gtk_text_buffer_get_has_selection" (t_typ @-> returning (bool))
let get_insert =
  foreign "gtk_text_buffer_get_insert" (t_typ @-> returning (Text_mark.t_typ))
let get_iter_at_child_anchor self anchor =
  let get_iter_at_child_anchor_raw =
    foreign "gtk_text_buffer_get_iter_at_child_anchor" (t_typ @-> Text_child_anchor.t_typ @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_iter_at_child_anchor_raw self anchor iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_iter_at_line self line_number =
  let get_iter_at_line_raw =
    foreign "gtk_text_buffer_get_iter_at_line" (t_typ @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_iter_at_line_raw self line_number iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_iter_at_line_index self line_number byte_index =
  let get_iter_at_line_index_raw =
    foreign "gtk_text_buffer_get_iter_at_line_index" (t_typ @-> int32_t @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_iter_at_line_index_raw self line_number byte_index iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_iter_at_line_offset self line_number char_offset =
  let get_iter_at_line_offset_raw =
    foreign "gtk_text_buffer_get_iter_at_line_offset" (t_typ @-> int32_t @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_iter_at_line_offset_raw self line_number char_offset iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_iter_at_mark self mark =
  let get_iter_at_mark_raw =
    foreign "gtk_text_buffer_get_iter_at_mark" (t_typ @-> Text_mark.t_typ @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_iter_at_mark_raw self mark iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_iter_at_offset self char_offset =
  let get_iter_at_offset_raw =
    foreign "gtk_text_buffer_get_iter_at_offset" (t_typ @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_iter_at_offset_raw self char_offset iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_line_count =
  foreign "gtk_text_buffer_get_line_count" (t_typ @-> returning (int32_t))
let get_mark =
  foreign "gtk_text_buffer_get_mark" (t_typ @-> string @-> returning (Text_mark.t_typ))
let get_modified =
  foreign "gtk_text_buffer_get_modified" (t_typ @-> returning (bool))
let get_paste_target_list =
  foreign "gtk_text_buffer_get_paste_target_list" (t_typ @-> returning (ptr Target_list.t_typ))
let get_selection_bound =
  foreign "gtk_text_buffer_get_selection_bound" (t_typ @-> returning (Text_mark.t_typ))
let get_selection_bounds self =
  let get_selection_bounds_raw =
    foreign "gtk_text_buffer_get_selection_bounds" (t_typ @-> ptr (Text_iter.t_typ) @-> ptr (Text_iter.t_typ) @-> returning (bool))
  in
  let start_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let _end_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_selection_bounds_raw self start_ptr _end_ptr in
  let start = !@ start_ptr in
  let _end = !@ _end_ptr in
  (ret, start, _end)
(*Not implemented gtk_text_buffer_get_serialize_formats return type C Array type for Types.Array tag not handled*)
let get_slice =
  foreign "gtk_text_buffer_get_slice" (t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> bool @-> returning (string_opt))
let get_start_iter self =
  let get_start_iter_raw =
    foreign "gtk_text_buffer_get_start_iter" (t_typ @-> ptr (Text_iter.t_typ) @-> returning (void))
  in
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let ret = get_start_iter_raw self iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_tag_table =
  foreign "gtk_text_buffer_get_tag_table" (t_typ @-> returning (Text_tag_table.t_typ))
let get_text =
  foreign "gtk_text_buffer_get_text" (t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> bool @-> returning (string_opt))
let insert =
  foreign "gtk_text_buffer_insert" (t_typ @-> ptr Text_iter.t_typ @-> string @-> int32_t @-> returning (void))
let insert_at_cursor =
  foreign "gtk_text_buffer_insert_at_cursor" (t_typ @-> string @-> int32_t @-> returning (void))
let insert_child_anchor =
  foreign "gtk_text_buffer_insert_child_anchor" (t_typ @-> ptr Text_iter.t_typ @-> Text_child_anchor.t_typ @-> returning (void))
let insert_interactive =
  foreign "gtk_text_buffer_insert_interactive" (t_typ @-> ptr Text_iter.t_typ @-> string @-> int32_t @-> bool @-> returning (bool))
let insert_interactive_at_cursor =
  foreign "gtk_text_buffer_insert_interactive_at_cursor" (t_typ @-> string @-> int32_t @-> bool @-> returning (bool))
let insert_markup =
  foreign "gtk_text_buffer_insert_markup" (t_typ @-> ptr Text_iter.t_typ @-> string @-> int32_t @-> returning (void))
let insert_pixbuf =
  foreign "gtk_text_buffer_insert_pixbuf" (t_typ @-> ptr Text_iter.t_typ @-> Pixbuf.t_typ @-> returning (void))
let insert_range =
  foreign "gtk_text_buffer_insert_range" (t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let insert_range_interactive =
  foreign "gtk_text_buffer_insert_range_interactive" (t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> bool @-> returning (bool))
let move_mark =
  foreign "gtk_text_buffer_move_mark" (t_typ @-> Text_mark.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let move_mark_by_name =
  foreign "gtk_text_buffer_move_mark_by_name" (t_typ @-> string @-> ptr Text_iter.t_typ @-> returning (void))
let paste_clipboard =
  foreign "gtk_text_buffer_paste_clipboard" (t_typ @-> Clipboard.t_typ @-> ptr_opt Text_iter.t_typ @-> bool @-> returning (void))
let place_cursor =
  foreign "gtk_text_buffer_place_cursor" (t_typ @-> ptr Text_iter.t_typ @-> returning (void))
(*Not implemented gtk_text_buffer_register_deserialize_format type callback not implemented*)
let register_deserialize_tagset =
  foreign "gtk_text_buffer_register_deserialize_tagset" (t_typ @-> string_opt @-> returning (ptr Atom.t_typ))
(*Not implemented gtk_text_buffer_register_serialize_format type callback not implemented*)
let register_serialize_tagset =
  foreign "gtk_text_buffer_register_serialize_tagset" (t_typ @-> string_opt @-> returning (ptr Atom.t_typ))
let remove_all_tags =
  foreign "gtk_text_buffer_remove_all_tags" (t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let remove_selection_clipboard =
  foreign "gtk_text_buffer_remove_selection_clipboard" (t_typ @-> Clipboard.t_typ @-> returning (void))
let remove_tag =
  foreign "gtk_text_buffer_remove_tag" (t_typ @-> Text_tag.t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let remove_tag_by_name =
  foreign "gtk_text_buffer_remove_tag_by_name" (t_typ @-> string @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let select_range =
  foreign "gtk_text_buffer_select_range" (t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
(*Not implemented gtk_text_buffer_serialize return type C Array type for Types.Array tag not handled*)
let set_modified =
  foreign "gtk_text_buffer_set_modified" (t_typ @-> bool @-> returning (void))
let set_text =
  foreign "gtk_text_buffer_set_text" (t_typ @-> string @-> int32_t @-> returning (void))
let unregister_deserialize_format =
  foreign "gtk_text_buffer_unregister_deserialize_format" (t_typ @-> ptr Atom.t_typ @-> returning (void))
let unregister_serialize_format =
  foreign "gtk_text_buffer_unregister_serialize_format" (t_typ @-> ptr Atom.t_typ @-> returning (void))
