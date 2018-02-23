open Ctypes

type t
val t_typ : t structure typ

val f_dummy1: (unit ptr, t structure) field
val f_dummy2: (unit ptr, t structure) field
val f_dummy3: (int32, t structure) field
val f_dummy4: (int32, t structure) field
val f_dummy5: (int32, t structure) field
val f_dummy6: (int32, t structure) field
val f_dummy7: (int32, t structure) field
val f_dummy8: (int32, t structure) field
val f_dummy9: (unit ptr, t structure) field
val f_dummy10: (unit ptr, t structure) field
val f_dummy11: (int32, t structure) field
val f_dummy12: (int32, t structure) field
val f_dummy13: (int32, t structure) field
val f_dummy14: (unit ptr, t structure) field

val assign:
  t structure -> t structure ptr -> unit
val backward_char:
  t structure -> bool
val backward_chars:
  t structure -> int32 -> bool
val backward_cursor_position:
  t structure -> bool
val backward_cursor_positions:
  t structure -> int32 -> bool
(*Not implemented gtk_text_iter_backward_find_char type callback not implemented*)
val backward_line:
  t structure -> bool
val backward_lines:
  t structure -> int32 -> bool
val backward_search :
  t structure -> string -> Text_search_flags.t_list -> t structure ptr option -> (bool * t structure * t structure)
val backward_sentence_start:
  t structure -> bool
val backward_sentence_starts:
  t structure -> int32 -> bool
val backward_to_tag_toggle:
  t structure -> Text_tag.t -> bool
val backward_visible_cursor_position:
  t structure -> bool
val backward_visible_cursor_positions:
  t structure -> int32 -> bool
val backward_visible_line:
  t structure -> bool
val backward_visible_lines:
  t structure -> int32 -> bool
val backward_visible_word_start:
  t structure -> bool
val backward_visible_word_starts:
  t structure -> int32 -> bool
val backward_word_start:
  t structure -> bool
val backward_word_starts:
  t structure -> int32 -> bool
val begins_tag:
  t structure -> Text_tag.t -> bool
val can_insert:
  t structure -> bool -> bool
val compare:
  t structure -> t structure ptr -> int32
val copy:
  t structure -> t structure ptr
val editable:
  t structure -> bool -> bool
val ends_line:
  t structure -> bool
val ends_sentence:
  t structure -> bool
val ends_tag:
  t structure -> Text_tag.t -> bool
val ends_word:
  t structure -> bool
val equal:
  t structure -> t structure ptr -> bool
val forward_char:
  t structure -> bool
val forward_chars:
  t structure -> int32 -> bool
val forward_cursor_position:
  t structure -> bool
val forward_cursor_positions:
  t structure -> int32 -> bool
(*Not implemented gtk_text_iter_forward_find_char type callback not implemented*)
val forward_line:
  t structure -> bool
val forward_lines:
  t structure -> int32 -> bool
val forward_search :
  t structure -> string -> Text_search_flags.t_list -> t structure ptr option -> (bool * t structure * t structure)
val forward_sentence_end:
  t structure -> bool
val forward_sentence_ends:
  t structure -> int32 -> bool
val forward_to_end:
  t structure -> unit
val forward_to_line_end:
  t structure -> bool
val forward_to_tag_toggle:
  t structure -> Text_tag.t -> bool
val forward_visible_cursor_position:
  t structure -> bool
val forward_visible_cursor_positions:
  t structure -> int32 -> bool
val forward_visible_line:
  t structure -> bool
val forward_visible_lines:
  t structure -> int32 -> bool
val forward_visible_word_end:
  t structure -> bool
val forward_visible_word_ends:
  t structure -> int32 -> bool
val forward_word_end:
  t structure -> bool
val forward_word_ends:
  t structure -> int32 -> bool
val free:
  t structure -> unit
val get_attributes :
  t structure -> (bool * Text_attributes.t structure)
val get_buffer:
  t structure -> Text_buffer.t
val get_bytes_in_line:
  t structure -> int32
(*Not implemented gtk_text_iter_get_char return type unichar not handled*)
val get_chars_in_line:
  t structure -> int32
val get_child_anchor:
  t structure -> Text_child_anchor.t
val get_language:
  t structure -> Language.t structure ptr
val get_line:
  t structure -> int32
val get_line_index:
  t structure -> int32
val get_line_offset:
  t structure -> int32
val get_marks:
  t structure -> SList.t structure ptr
val get_offset:
  t structure -> int32
val get_pixbuf:
  t structure -> Pixbuf.t
val get_slice:
  t structure -> t structure ptr -> string option
val get_tags:
  t structure -> SList.t structure ptr
val get_text:
  t structure -> t structure ptr -> string option
val get_toggled_tags:
  t structure -> bool -> SList.t structure ptr
val get_visible_line_index:
  t structure -> int32
val get_visible_line_offset:
  t structure -> int32
val get_visible_slice:
  t structure -> t structure ptr -> string option
val get_visible_text:
  t structure -> t structure ptr -> string option
val has_tag:
  t structure -> Text_tag.t -> bool
val in_range:
  t structure -> t structure ptr -> t structure ptr -> bool
val inside_sentence:
  t structure -> bool
val inside_word:
  t structure -> bool
val is_cursor_position:
  t structure -> bool
val is_end:
  t structure -> bool
val is_start:
  t structure -> bool
val order:
  t structure -> t structure ptr -> unit
val set_line:
  t structure -> int32 -> unit
val set_line_index:
  t structure -> int32 -> unit
val set_line_offset:
  t structure -> int32 -> unit
val set_offset:
  t structure -> int32 -> unit
val set_visible_line_index:
  t structure -> int32 -> unit
val set_visible_line_offset:
  t structure -> int32 -> unit
val starts_line:
  t structure -> bool
val starts_sentence:
  t structure -> bool
val starts_tag:
  t structure -> Text_tag.t -> bool
val starts_word:
  t structure -> bool
val toggles_tag:
  t structure -> Text_tag.t -> bool
