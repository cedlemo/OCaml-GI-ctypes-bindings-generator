open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_text_buffer_new type object not implemented*)
(*Not implemented gtk_text_buffer_add_mark type object not implemented*)
(*Not implemented gtk_text_buffer_add_selection_clipboard type object not implemented*)
(*Not implemented gtk_text_buffer_apply_tag type object not implemented*)
let apply_tag_by_name =
  foreign "gtk_text_buffer_apply_tag_by_name" (ptr t_typ @-> string @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let backspace =
  foreign "gtk_text_buffer_backspace" (ptr t_typ @-> ptr Text_iter.t_typ @-> bool @-> bool @-> returning (bool))
let begin_user_action =
  foreign "gtk_text_buffer_begin_user_action" (ptr t_typ @-> returning (void))
(*Not implemented gtk_text_buffer_copy_clipboard type object not implemented*)
(*Not implemented gtk_text_buffer_create_child_anchor return type object not handled*)
(*Not implemented gtk_text_buffer_create_mark return type object not handled*)
(*Not implemented gtk_text_buffer_cut_clipboard type object not implemented*)
let delete =
  foreign "gtk_text_buffer_delete" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let delete_interactive =
  foreign "gtk_text_buffer_delete_interactive" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> bool @-> returning (bool))
(*Not implemented gtk_text_buffer_delete_mark type object not implemented*)
let delete_mark_by_name =
  foreign "gtk_text_buffer_delete_mark_by_name" (ptr t_typ @-> string @-> returning (void))
let delete_selection =
  foreign "gtk_text_buffer_delete_selection" (ptr t_typ @-> bool @-> bool @-> returning (bool))
(*Not implemented gtk_text_buffer_deserialize type object not implemented*)
let deserialize_get_can_create_tags =
  foreign "gtk_text_buffer_deserialize_get_can_create_tags" (ptr t_typ @-> ptr Atom.t_typ @-> returning (bool))
let deserialize_set_can_create_tags =
  foreign "gtk_text_buffer_deserialize_set_can_create_tags" (ptr t_typ @-> ptr Atom.t_typ @-> bool @-> returning (void))
let end_user_action =
  foreign "gtk_text_buffer_end_user_action" (ptr t_typ @-> returning (void))
let get_bounds self =
  let start_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let _end_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_bounds_raw =
    foreign "gtk_text_buffer_get_bounds" (ptr t_typ @-> ptr (Text_iter.t_typ) @-> ptr (Text_iter.t_typ) @-> returning void)
  in
  let ret = get_bounds_raw self start_ptr _end_ptr in
  let start = !@ start_ptr in
  let _end = !@ _end_ptr in
  (start, _end)
let get_char_count =
  foreign "gtk_text_buffer_get_char_count" (ptr t_typ @-> returning (int32_t))
let get_copy_target_list =
  foreign "gtk_text_buffer_get_copy_target_list" (ptr t_typ @-> returning (ptr Target_list.t_typ))
(*Not implemented gtk_text_buffer_get_deserialize_formats return type C Array type for Types.Array tag not handled*)
let get_end_iter self =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_end_iter_raw =
    foreign "gtk_text_buffer_get_end_iter" (ptr t_typ @-> ptr (Text_iter.t_typ) @-> returning void)
  in
  let ret = get_end_iter_raw self iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_has_selection =
  foreign "gtk_text_buffer_get_has_selection" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_text_buffer_get_insert return type object not handled*)
(*Not implemented gtk_text_buffer_get_iter_at_child_anchor type object not implemented*)
let get_iter_at_line self line_number =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_iter_at_line_raw =
    foreign "gtk_text_buffer_get_iter_at_line" (ptr t_typ @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning void)
  in
  let ret = get_iter_at_line_raw self line_number iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_iter_at_line_index self line_number byte_index =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_iter_at_line_index_raw =
    foreign "gtk_text_buffer_get_iter_at_line_index" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning void)
  in
  let ret = get_iter_at_line_index_raw self line_number byte_index iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_iter_at_line_offset self line_number char_offset =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_iter_at_line_offset_raw =
    foreign "gtk_text_buffer_get_iter_at_line_offset" (ptr t_typ @-> int32_t @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning void)
  in
  let ret = get_iter_at_line_offset_raw self line_number char_offset iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
(*Not implemented gtk_text_buffer_get_iter_at_mark type object not implemented*)
let get_iter_at_offset self char_offset =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_iter_at_offset_raw =
    foreign "gtk_text_buffer_get_iter_at_offset" (ptr t_typ @-> int32_t @-> ptr (Text_iter.t_typ) @-> returning void)
  in
  let ret = get_iter_at_offset_raw self char_offset iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
let get_line_count =
  foreign "gtk_text_buffer_get_line_count" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_text_buffer_get_mark return type object not handled*)
let get_modified =
  foreign "gtk_text_buffer_get_modified" (ptr t_typ @-> returning (bool))
let get_paste_target_list =
  foreign "gtk_text_buffer_get_paste_target_list" (ptr t_typ @-> returning (ptr Target_list.t_typ))
(*Not implemented gtk_text_buffer_get_selection_bound return type object not handled*)
let get_selection_bounds self =
  let start_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let _end_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_selection_bounds_raw =
    foreign "gtk_text_buffer_get_selection_bounds" (ptr t_typ @-> ptr (Text_iter.t_typ) @-> ptr (Text_iter.t_typ) @-> returning bool)
  in
  let ret = get_selection_bounds_raw self start_ptr _end_ptr in
  let start = !@ start_ptr in
  let _end = !@ _end_ptr in
  (ret, start, _end)
(*Not implemented gtk_text_buffer_get_serialize_formats return type C Array type for Types.Array tag not handled*)
let get_slice =
  foreign "gtk_text_buffer_get_slice" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> bool @-> returning (string_opt))
let get_start_iter self =
  let iter_ptr = allocate Text_iter.t_typ (make Text_iter.t_typ) in
  let get_start_iter_raw =
    foreign "gtk_text_buffer_get_start_iter" (ptr t_typ @-> ptr (Text_iter.t_typ) @-> returning void)
  in
  let ret = get_start_iter_raw self iter_ptr in
  let iter = !@ iter_ptr in
  (iter)
(*Not implemented gtk_text_buffer_get_tag_table return type object not handled*)
let get_text =
  foreign "gtk_text_buffer_get_text" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> bool @-> returning (string_opt))
let insert =
  foreign "gtk_text_buffer_insert" (ptr t_typ @-> ptr Text_iter.t_typ @-> string @-> int32_t @-> returning (void))
let insert_at_cursor =
  foreign "gtk_text_buffer_insert_at_cursor" (ptr t_typ @-> string @-> int32_t @-> returning (void))
(*Not implemented gtk_text_buffer_insert_child_anchor type object not implemented*)
let insert_interactive =
  foreign "gtk_text_buffer_insert_interactive" (ptr t_typ @-> ptr Text_iter.t_typ @-> string @-> int32_t @-> bool @-> returning (bool))
let insert_interactive_at_cursor =
  foreign "gtk_text_buffer_insert_interactive_at_cursor" (ptr t_typ @-> string @-> int32_t @-> bool @-> returning (bool))
let insert_markup =
  foreign "gtk_text_buffer_insert_markup" (ptr t_typ @-> ptr Text_iter.t_typ @-> string @-> int32_t @-> returning (void))
(*Not implemented gtk_text_buffer_insert_pixbuf type object not implemented*)
let insert_range =
  foreign "gtk_text_buffer_insert_range" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let insert_range_interactive =
  foreign "gtk_text_buffer_insert_range_interactive" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> bool @-> returning (bool))
(*Not implemented gtk_text_buffer_move_mark type object not implemented*)
let move_mark_by_name =
  foreign "gtk_text_buffer_move_mark_by_name" (ptr t_typ @-> string @-> ptr Text_iter.t_typ @-> returning (void))
(*Not implemented gtk_text_buffer_paste_clipboard type object not implemented*)
let place_cursor =
  foreign "gtk_text_buffer_place_cursor" (ptr t_typ @-> ptr Text_iter.t_typ @-> returning (void))
(*Not implemented gtk_text_buffer_register_deserialize_format type callback not implemented*)
let register_deserialize_tagset =
  foreign "gtk_text_buffer_register_deserialize_tagset" (ptr t_typ @-> string_opt @-> returning (ptr Atom.t_typ))
(*Not implemented gtk_text_buffer_register_serialize_format type callback not implemented*)
let register_serialize_tagset =
  foreign "gtk_text_buffer_register_serialize_tagset" (ptr t_typ @-> string_opt @-> returning (ptr Atom.t_typ))
let remove_all_tags =
  foreign "gtk_text_buffer_remove_all_tags" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
(*Not implemented gtk_text_buffer_remove_selection_clipboard type object not implemented*)
(*Not implemented gtk_text_buffer_remove_tag type object not implemented*)
let remove_tag_by_name =
  foreign "gtk_text_buffer_remove_tag_by_name" (ptr t_typ @-> string @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
let select_range =
  foreign "gtk_text_buffer_select_range" (ptr t_typ @-> ptr Text_iter.t_typ @-> ptr Text_iter.t_typ @-> returning (void))
(*Not implemented gtk_text_buffer_serialize type object not implemented*)
let set_modified =
  foreign "gtk_text_buffer_set_modified" (ptr t_typ @-> bool @-> returning (void))
let set_text =
  foreign "gtk_text_buffer_set_text" (ptr t_typ @-> string @-> int32_t @-> returning (void))
let unregister_deserialize_format =
  foreign "gtk_text_buffer_unregister_deserialize_format" (ptr t_typ @-> ptr Atom.t_typ @-> returning (void))
let unregister_serialize_format =
  foreign "gtk_text_buffer_unregister_serialize_format" (ptr t_typ @-> ptr Atom.t_typ @-> returning (void))
