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
  foreign "gtk_text_iter_assign" (t_typ @-> ptr t_typ @-> returning (void))
let backward_char =
  foreign "gtk_text_iter_backward_char" (t_typ @-> returning (bool))
let backward_chars =
  foreign "gtk_text_iter_backward_chars" (t_typ @-> int32_t @-> returning (bool))
let backward_cursor_position =
  foreign "gtk_text_iter_backward_cursor_position" (t_typ @-> returning (bool))
let backward_cursor_positions =
  foreign "gtk_text_iter_backward_cursor_positions" (t_typ @-> int32_t @-> returning (bool))
(*Not implemented gtk_text_iter_backward_find_char type callback not implemented*)
let backward_line =
  foreign "gtk_text_iter_backward_line" (t_typ @-> returning (bool))
let backward_lines =
  foreign "gtk_text_iter_backward_lines" (t_typ @-> int32_t @-> returning (bool))
let backward_search self str flags limit =
  let match_start_ptr = allocate t_typ (make t_typ) in
  let match_end_ptr = allocate t_typ (make t_typ) in
  let backward_search_raw =
    foreign "gtk_text_iter_backward_search" (t_typ @-> string @-> Text_search_flags.t_list_view @-> ptr_opt t_typ @-> ptr (t_typ) @-> ptr (t_typ) @-> returning bool)
  in
  let ret = backward_search_raw self str flags limit match_start_ptr match_end_ptr in
  let match_start = !@ match_start_ptr in
  let match_end = !@ match_end_ptr in
  (ret, match_start, match_end)
let backward_sentence_start =
  foreign "gtk_text_iter_backward_sentence_start" (t_typ @-> returning (bool))
let backward_sentence_starts =
  foreign "gtk_text_iter_backward_sentence_starts" (t_typ @-> int32_t @-> returning (bool))
let backward_to_tag_toggle =
  foreign "gtk_text_iter_backward_to_tag_toggle" (t_typ @-> Text_tag.t_typ @-> returning (bool))
let backward_visible_cursor_position =
  foreign "gtk_text_iter_backward_visible_cursor_position" (t_typ @-> returning (bool))
let backward_visible_cursor_positions =
  foreign "gtk_text_iter_backward_visible_cursor_positions" (t_typ @-> int32_t @-> returning (bool))
let backward_visible_line =
  foreign "gtk_text_iter_backward_visible_line" (t_typ @-> returning (bool))
let backward_visible_lines =
  foreign "gtk_text_iter_backward_visible_lines" (t_typ @-> int32_t @-> returning (bool))
let backward_visible_word_start =
  foreign "gtk_text_iter_backward_visible_word_start" (t_typ @-> returning (bool))
let backward_visible_word_starts =
  foreign "gtk_text_iter_backward_visible_word_starts" (t_typ @-> int32_t @-> returning (bool))
let backward_word_start =
  foreign "gtk_text_iter_backward_word_start" (t_typ @-> returning (bool))
let backward_word_starts =
  foreign "gtk_text_iter_backward_word_starts" (t_typ @-> int32_t @-> returning (bool))
let begins_tag =
  foreign "gtk_text_iter_begins_tag" (t_typ @-> Text_tag.t_typ @-> returning (bool))
let can_insert =
  foreign "gtk_text_iter_can_insert" (t_typ @-> bool @-> returning (bool))
let compare =
  foreign "gtk_text_iter_compare" (t_typ @-> ptr t_typ @-> returning (int32_t))
let copy =
  foreign "gtk_text_iter_copy" (t_typ @-> returning (ptr t_typ))
let editable =
  foreign "gtk_text_iter_editable" (t_typ @-> bool @-> returning (bool))
let ends_line =
  foreign "gtk_text_iter_ends_line" (t_typ @-> returning (bool))
let ends_sentence =
  foreign "gtk_text_iter_ends_sentence" (t_typ @-> returning (bool))
let ends_tag =
  foreign "gtk_text_iter_ends_tag" (t_typ @-> Text_tag.t_typ @-> returning (bool))
let ends_word =
  foreign "gtk_text_iter_ends_word" (t_typ @-> returning (bool))
let equal =
  foreign "gtk_text_iter_equal" (t_typ @-> ptr t_typ @-> returning (bool))
let forward_char =
  foreign "gtk_text_iter_forward_char" (t_typ @-> returning (bool))
let forward_chars =
  foreign "gtk_text_iter_forward_chars" (t_typ @-> int32_t @-> returning (bool))
let forward_cursor_position =
  foreign "gtk_text_iter_forward_cursor_position" (t_typ @-> returning (bool))
let forward_cursor_positions =
  foreign "gtk_text_iter_forward_cursor_positions" (t_typ @-> int32_t @-> returning (bool))
(*Not implemented gtk_text_iter_forward_find_char type callback not implemented*)
let forward_line =
  foreign "gtk_text_iter_forward_line" (t_typ @-> returning (bool))
let forward_lines =
  foreign "gtk_text_iter_forward_lines" (t_typ @-> int32_t @-> returning (bool))
let forward_search self str flags limit =
  let match_start_ptr = allocate t_typ (make t_typ) in
  let match_end_ptr = allocate t_typ (make t_typ) in
  let forward_search_raw =
    foreign "gtk_text_iter_forward_search" (t_typ @-> string @-> Text_search_flags.t_list_view @-> ptr_opt t_typ @-> ptr (t_typ) @-> ptr (t_typ) @-> returning bool)
  in
  let ret = forward_search_raw self str flags limit match_start_ptr match_end_ptr in
  let match_start = !@ match_start_ptr in
  let match_end = !@ match_end_ptr in
  (ret, match_start, match_end)
let forward_sentence_end =
  foreign "gtk_text_iter_forward_sentence_end" (t_typ @-> returning (bool))
let forward_sentence_ends =
  foreign "gtk_text_iter_forward_sentence_ends" (t_typ @-> int32_t @-> returning (bool))
let forward_to_end =
  foreign "gtk_text_iter_forward_to_end" (t_typ @-> returning (void))
let forward_to_line_end =
  foreign "gtk_text_iter_forward_to_line_end" (t_typ @-> returning (bool))
let forward_to_tag_toggle =
  foreign "gtk_text_iter_forward_to_tag_toggle" (t_typ @-> Text_tag.t_typ @-> returning (bool))
let forward_visible_cursor_position =
  foreign "gtk_text_iter_forward_visible_cursor_position" (t_typ @-> returning (bool))
let forward_visible_cursor_positions =
  foreign "gtk_text_iter_forward_visible_cursor_positions" (t_typ @-> int32_t @-> returning (bool))
let forward_visible_line =
  foreign "gtk_text_iter_forward_visible_line" (t_typ @-> returning (bool))
let forward_visible_lines =
  foreign "gtk_text_iter_forward_visible_lines" (t_typ @-> int32_t @-> returning (bool))
let forward_visible_word_end =
  foreign "gtk_text_iter_forward_visible_word_end" (t_typ @-> returning (bool))
let forward_visible_word_ends =
  foreign "gtk_text_iter_forward_visible_word_ends" (t_typ @-> int32_t @-> returning (bool))
let forward_word_end =
  foreign "gtk_text_iter_forward_word_end" (t_typ @-> returning (bool))
let forward_word_ends =
  foreign "gtk_text_iter_forward_word_ends" (t_typ @-> int32_t @-> returning (bool))
let free =
  foreign "gtk_text_iter_free" (t_typ @-> returning (void))
let get_attributes self =
  let values_ptr = allocate Text_attributes.t_typ (make Text_attributes.t_typ) in
  let get_attributes_raw =
    foreign "gtk_text_iter_get_attributes" (t_typ @-> ptr (Text_attributes.t_typ) @-> returning bool)
  in
  let ret = get_attributes_raw self values_ptr in
  let values = !@ values_ptr in
  (ret, values)
let get_buffer =
  foreign "gtk_text_iter_get_buffer" (t_typ @-> returning (Text_buffer.t_typ))
let get_bytes_in_line =
  foreign "gtk_text_iter_get_bytes_in_line" (t_typ @-> returning (int32_t))
(*Not implemented gtk_text_iter_get_char return type unichar not handled*)
let get_chars_in_line =
  foreign "gtk_text_iter_get_chars_in_line" (t_typ @-> returning (int32_t))
let get_child_anchor =
  foreign "gtk_text_iter_get_child_anchor" (t_typ @-> returning (Text_child_anchor.t_typ))
let get_language =
  foreign "gtk_text_iter_get_language" (t_typ @-> returning (ptr Language.t_typ))
let get_line =
  foreign "gtk_text_iter_get_line" (t_typ @-> returning (int32_t))
let get_line_index =
  foreign "gtk_text_iter_get_line_index" (t_typ @-> returning (int32_t))
let get_line_offset =
  foreign "gtk_text_iter_get_line_offset" (t_typ @-> returning (int32_t))
let get_marks =
  foreign "gtk_text_iter_get_marks" (t_typ @-> returning (ptr SList.t_typ))
let get_offset =
  foreign "gtk_text_iter_get_offset" (t_typ @-> returning (int32_t))
let get_pixbuf =
  foreign "gtk_text_iter_get_pixbuf" (t_typ @-> returning (Pixbuf.t_typ))
let get_slice =
  foreign "gtk_text_iter_get_slice" (t_typ @-> ptr t_typ @-> returning (string_opt))
let get_tags =
  foreign "gtk_text_iter_get_tags" (t_typ @-> returning (ptr SList.t_typ))
let get_text =
  foreign "gtk_text_iter_get_text" (t_typ @-> ptr t_typ @-> returning (string_opt))
let get_toggled_tags =
  foreign "gtk_text_iter_get_toggled_tags" (t_typ @-> bool @-> returning (ptr SList.t_typ))
let get_visible_line_index =
  foreign "gtk_text_iter_get_visible_line_index" (t_typ @-> returning (int32_t))
let get_visible_line_offset =
  foreign "gtk_text_iter_get_visible_line_offset" (t_typ @-> returning (int32_t))
let get_visible_slice =
  foreign "gtk_text_iter_get_visible_slice" (t_typ @-> ptr t_typ @-> returning (string_opt))
let get_visible_text =
  foreign "gtk_text_iter_get_visible_text" (t_typ @-> ptr t_typ @-> returning (string_opt))
let has_tag =
  foreign "gtk_text_iter_has_tag" (t_typ @-> Text_tag.t_typ @-> returning (bool))
let in_range =
  foreign "gtk_text_iter_in_range" (t_typ @-> ptr t_typ @-> ptr t_typ @-> returning (bool))
let inside_sentence =
  foreign "gtk_text_iter_inside_sentence" (t_typ @-> returning (bool))
let inside_word =
  foreign "gtk_text_iter_inside_word" (t_typ @-> returning (bool))
let is_cursor_position =
  foreign "gtk_text_iter_is_cursor_position" (t_typ @-> returning (bool))
let is_end =
  foreign "gtk_text_iter_is_end" (t_typ @-> returning (bool))
let is_start =
  foreign "gtk_text_iter_is_start" (t_typ @-> returning (bool))
let order =
  foreign "gtk_text_iter_order" (t_typ @-> ptr t_typ @-> returning (void))
let set_line =
  foreign "gtk_text_iter_set_line" (t_typ @-> int32_t @-> returning (void))
let set_line_index =
  foreign "gtk_text_iter_set_line_index" (t_typ @-> int32_t @-> returning (void))
let set_line_offset =
  foreign "gtk_text_iter_set_line_offset" (t_typ @-> int32_t @-> returning (void))
let set_offset =
  foreign "gtk_text_iter_set_offset" (t_typ @-> int32_t @-> returning (void))
let set_visible_line_index =
  foreign "gtk_text_iter_set_visible_line_index" (t_typ @-> int32_t @-> returning (void))
let set_visible_line_offset =
  foreign "gtk_text_iter_set_visible_line_offset" (t_typ @-> int32_t @-> returning (void))
let starts_line =
  foreign "gtk_text_iter_starts_line" (t_typ @-> returning (bool))
let starts_sentence =
  foreign "gtk_text_iter_starts_sentence" (t_typ @-> returning (bool))
let starts_tag =
  foreign "gtk_text_iter_starts_tag" (t_typ @-> Text_tag.t_typ @-> returning (bool))
let starts_word =
  foreign "gtk_text_iter_starts_word" (t_typ @-> returning (bool))
let toggles_tag =
  foreign "gtk_text_iter_toggles_tag" (t_typ @-> Text_tag.t_typ @-> returning (bool))
