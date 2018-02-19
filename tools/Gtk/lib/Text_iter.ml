open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Text_iter"

let f_dummy1 = field t_typ "dummy1" (ptr void)
let f_dummy2 = field t_typ "dummy2" (ptr void)
let f_dummy3 = field t_typ "dummy3" (int32_t)
let f_dummy4 = field t_typ "dummy4" (int32_t)
let f_dummy5 = field t_typ "dummy5" (int32_t)
let f_dummy6 = field t_typ "dummy6" (int32_t)
let f_dummy7 = field t_typ "dummy7" (int32_t)
let f_dummy8 = field t_typ "dummy8" (int32_t)
let f_dummy9 = field t_typ "dummy9" (ptr void)
let f_dummy10 = field t_typ "dummy10" (ptr void)
let f_dummy11 = field t_typ "dummy11" (int32_t)
let f_dummy12 = field t_typ "dummy12" (int32_t)
let f_dummy13 = field t_typ "dummy13" (int32_t)
let f_dummy14 = field t_typ "dummy14" (ptr void)
let _ = seal t_typ

let assign =
  foreign "gtk_text_iter_assign" (ptr t_typ @-> ptr t_typ @-> returning (void))
let backward_char =
  foreign "gtk_text_iter_backward_char" (ptr t_typ @-> returning (bool))
let backward_chars =
  foreign "gtk_text_iter_backward_chars" (ptr t_typ @-> int32_t @-> returning (bool))
let backward_cursor_position =
  foreign "gtk_text_iter_backward_cursor_position" (ptr t_typ @-> returning (bool))
let backward_cursor_positions =
  foreign "gtk_text_iter_backward_cursor_positions" (ptr t_typ @-> int32_t @-> returning (bool))
(*Not implemented gtk_text_iter_backward_find_char type callback not implemented*)
let backward_line =
  foreign "gtk_text_iter_backward_line" (ptr t_typ @-> returning (bool))
let backward_lines =
  foreign "gtk_text_iter_backward_lines" (ptr t_typ @-> int32_t @-> returning (bool))
let backward_search self str flags limit =
  let match_start_ptr = allocate t_typ (make t_typ) in
  let match_end_ptr = allocate t_typ (make t_typ) in
  let backward_search_raw =
    foreign "gtk_text_iter_backward_search" (ptr t_typ @-> string @-> Text_search_flags.t_list_view @-> ptr_opt t_typ @-> ptr (t_typ) @-> ptr (t_typ) @-> returning bool)
  in
  let ret = backward_search_raw self str flags limit match_start_ptr match_end_ptr in
  let match_start = !@ match_start_ptr in
  let match_end = !@ match_end_ptr in
  (ret, match_start, match_end)
let backward_sentence_start =
  foreign "gtk_text_iter_backward_sentence_start" (ptr t_typ @-> returning (bool))
let backward_sentence_starts =
  foreign "gtk_text_iter_backward_sentence_starts" (ptr t_typ @-> int32_t @-> returning (bool))
(*Not implemented gtk_text_iter_backward_to_tag_toggle type object not implemented*)
let backward_visible_cursor_position =
  foreign "gtk_text_iter_backward_visible_cursor_position" (ptr t_typ @-> returning (bool))
let backward_visible_cursor_positions =
  foreign "gtk_text_iter_backward_visible_cursor_positions" (ptr t_typ @-> int32_t @-> returning (bool))
let backward_visible_line =
  foreign "gtk_text_iter_backward_visible_line" (ptr t_typ @-> returning (bool))
let backward_visible_lines =
  foreign "gtk_text_iter_backward_visible_lines" (ptr t_typ @-> int32_t @-> returning (bool))
let backward_visible_word_start =
  foreign "gtk_text_iter_backward_visible_word_start" (ptr t_typ @-> returning (bool))
let backward_visible_word_starts =
  foreign "gtk_text_iter_backward_visible_word_starts" (ptr t_typ @-> int32_t @-> returning (bool))
let backward_word_start =
  foreign "gtk_text_iter_backward_word_start" (ptr t_typ @-> returning (bool))
let backward_word_starts =
  foreign "gtk_text_iter_backward_word_starts" (ptr t_typ @-> int32_t @-> returning (bool))
(*Not implemented gtk_text_iter_begins_tag type object not implemented*)
let can_insert =
  foreign "gtk_text_iter_can_insert" (ptr t_typ @-> bool @-> returning (bool))
let compare =
  foreign "gtk_text_iter_compare" (ptr t_typ @-> ptr t_typ @-> returning (int32_t))
let copy =
  foreign "gtk_text_iter_copy" (ptr t_typ @-> returning (ptr t_typ))
let editable =
  foreign "gtk_text_iter_editable" (ptr t_typ @-> bool @-> returning (bool))
let ends_line =
  foreign "gtk_text_iter_ends_line" (ptr t_typ @-> returning (bool))
let ends_sentence =
  foreign "gtk_text_iter_ends_sentence" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_text_iter_ends_tag type object not implemented*)
let ends_word =
  foreign "gtk_text_iter_ends_word" (ptr t_typ @-> returning (bool))
let equal =
  foreign "gtk_text_iter_equal" (ptr t_typ @-> ptr t_typ @-> returning (bool))
let forward_char =
  foreign "gtk_text_iter_forward_char" (ptr t_typ @-> returning (bool))
let forward_chars =
  foreign "gtk_text_iter_forward_chars" (ptr t_typ @-> int32_t @-> returning (bool))
let forward_cursor_position =
  foreign "gtk_text_iter_forward_cursor_position" (ptr t_typ @-> returning (bool))
let forward_cursor_positions =
  foreign "gtk_text_iter_forward_cursor_positions" (ptr t_typ @-> int32_t @-> returning (bool))
(*Not implemented gtk_text_iter_forward_find_char type callback not implemented*)
let forward_line =
  foreign "gtk_text_iter_forward_line" (ptr t_typ @-> returning (bool))
let forward_lines =
  foreign "gtk_text_iter_forward_lines" (ptr t_typ @-> int32_t @-> returning (bool))
let forward_search self str flags limit =
  let match_start_ptr = allocate t_typ (make t_typ) in
  let match_end_ptr = allocate t_typ (make t_typ) in
  let forward_search_raw =
    foreign "gtk_text_iter_forward_search" (ptr t_typ @-> string @-> Text_search_flags.t_list_view @-> ptr_opt t_typ @-> ptr (t_typ) @-> ptr (t_typ) @-> returning bool)
  in
  let ret = forward_search_raw self str flags limit match_start_ptr match_end_ptr in
  let match_start = !@ match_start_ptr in
  let match_end = !@ match_end_ptr in
  (ret, match_start, match_end)
let forward_sentence_end =
  foreign "gtk_text_iter_forward_sentence_end" (ptr t_typ @-> returning (bool))
let forward_sentence_ends =
  foreign "gtk_text_iter_forward_sentence_ends" (ptr t_typ @-> int32_t @-> returning (bool))
let forward_to_end =
  foreign "gtk_text_iter_forward_to_end" (ptr t_typ @-> returning (void))
let forward_to_line_end =
  foreign "gtk_text_iter_forward_to_line_end" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_text_iter_forward_to_tag_toggle type object not implemented*)
let forward_visible_cursor_position =
  foreign "gtk_text_iter_forward_visible_cursor_position" (ptr t_typ @-> returning (bool))
let forward_visible_cursor_positions =
  foreign "gtk_text_iter_forward_visible_cursor_positions" (ptr t_typ @-> int32_t @-> returning (bool))
let forward_visible_line =
  foreign "gtk_text_iter_forward_visible_line" (ptr t_typ @-> returning (bool))
let forward_visible_lines =
  foreign "gtk_text_iter_forward_visible_lines" (ptr t_typ @-> int32_t @-> returning (bool))
let forward_visible_word_end =
  foreign "gtk_text_iter_forward_visible_word_end" (ptr t_typ @-> returning (bool))
let forward_visible_word_ends =
  foreign "gtk_text_iter_forward_visible_word_ends" (ptr t_typ @-> int32_t @-> returning (bool))
let forward_word_end =
  foreign "gtk_text_iter_forward_word_end" (ptr t_typ @-> returning (bool))
let forward_word_ends =
  foreign "gtk_text_iter_forward_word_ends" (ptr t_typ @-> int32_t @-> returning (bool))
let free =
  foreign "gtk_text_iter_free" (ptr t_typ @-> returning (void))
let get_attributes self =
  let values_ptr = allocate Text_attributes.t_typ (make Text_attributes.t_typ) in
  let get_attributes_raw =
    foreign "gtk_text_iter_get_attributes" (ptr t_typ @-> ptr (Text_attributes.t_typ) @-> returning bool)
  in
  let ret = get_attributes_raw self values_ptr in
  let values = !@ values_ptr in
  (ret, values)
(*Not implemented gtk_text_iter_get_buffer return type object not handled*)
let get_bytes_in_line =
  foreign "gtk_text_iter_get_bytes_in_line" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_text_iter_get_char return type unichar not handled*)
let get_chars_in_line =
  foreign "gtk_text_iter_get_chars_in_line" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_text_iter_get_child_anchor return type object not handled*)
let get_language =
  foreign "gtk_text_iter_get_language" (ptr t_typ @-> returning (ptr Language.t_typ))
let get_line =
  foreign "gtk_text_iter_get_line" (ptr t_typ @-> returning (int32_t))
let get_line_index =
  foreign "gtk_text_iter_get_line_index" (ptr t_typ @-> returning (int32_t))
let get_line_offset =
  foreign "gtk_text_iter_get_line_offset" (ptr t_typ @-> returning (int32_t))
let get_marks =
  foreign "gtk_text_iter_get_marks" (ptr t_typ @-> returning (ptr SList.t_typ))
let get_offset =
  foreign "gtk_text_iter_get_offset" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_text_iter_get_pixbuf return type object not handled*)
let get_slice =
  foreign "gtk_text_iter_get_slice" (ptr t_typ @-> ptr t_typ @-> returning (string_opt))
let get_tags =
  foreign "gtk_text_iter_get_tags" (ptr t_typ @-> returning (ptr SList.t_typ))
let get_text =
  foreign "gtk_text_iter_get_text" (ptr t_typ @-> ptr t_typ @-> returning (string_opt))
let get_toggled_tags =
  foreign "gtk_text_iter_get_toggled_tags" (ptr t_typ @-> bool @-> returning (ptr SList.t_typ))
let get_visible_line_index =
  foreign "gtk_text_iter_get_visible_line_index" (ptr t_typ @-> returning (int32_t))
let get_visible_line_offset =
  foreign "gtk_text_iter_get_visible_line_offset" (ptr t_typ @-> returning (int32_t))
let get_visible_slice =
  foreign "gtk_text_iter_get_visible_slice" (ptr t_typ @-> ptr t_typ @-> returning (string_opt))
let get_visible_text =
  foreign "gtk_text_iter_get_visible_text" (ptr t_typ @-> ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_text_iter_has_tag type object not implemented*)
let in_range =
  foreign "gtk_text_iter_in_range" (ptr t_typ @-> ptr t_typ @-> ptr t_typ @-> returning (bool))
let inside_sentence =
  foreign "gtk_text_iter_inside_sentence" (ptr t_typ @-> returning (bool))
let inside_word =
  foreign "gtk_text_iter_inside_word" (ptr t_typ @-> returning (bool))
let is_cursor_position =
  foreign "gtk_text_iter_is_cursor_position" (ptr t_typ @-> returning (bool))
let is_end =
  foreign "gtk_text_iter_is_end" (ptr t_typ @-> returning (bool))
let is_start =
  foreign "gtk_text_iter_is_start" (ptr t_typ @-> returning (bool))
let order =
  foreign "gtk_text_iter_order" (ptr t_typ @-> ptr t_typ @-> returning (void))
let set_line =
  foreign "gtk_text_iter_set_line" (ptr t_typ @-> int32_t @-> returning (void))
let set_line_index =
  foreign "gtk_text_iter_set_line_index" (ptr t_typ @-> int32_t @-> returning (void))
let set_line_offset =
  foreign "gtk_text_iter_set_line_offset" (ptr t_typ @-> int32_t @-> returning (void))
let set_offset =
  foreign "gtk_text_iter_set_offset" (ptr t_typ @-> int32_t @-> returning (void))
let set_visible_line_index =
  foreign "gtk_text_iter_set_visible_line_index" (ptr t_typ @-> int32_t @-> returning (void))
let set_visible_line_offset =
  foreign "gtk_text_iter_set_visible_line_offset" (ptr t_typ @-> int32_t @-> returning (void))
let starts_line =
  foreign "gtk_text_iter_starts_line" (ptr t_typ @-> returning (bool))
let starts_sentence =
  foreign "gtk_text_iter_starts_sentence" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_text_iter_starts_tag type object not implemented*)
let starts_word =
  foreign "gtk_text_iter_starts_word" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_text_iter_toggles_tag type object not implemented*)
