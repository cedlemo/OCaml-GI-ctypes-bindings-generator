open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_text_buffer_new type object not implemented*)
(*Not implemented gtk_text_buffer_add_mark type object not implemented*)
(*Not implemented gtk_text_buffer_add_selection_clipboard type object not implemented*)
(*Not implemented gtk_text_buffer_apply_tag type object not implemented*)
val apply_tag_by_name:
  t structure ptr -> string -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val backspace:
  t structure ptr -> Text_iter.t structure ptr -> bool -> bool -> bool
val begin_user_action:
  t structure ptr -> unit
(*Not implemented gtk_text_buffer_copy_clipboard type object not implemented*)
(*Not implemented gtk_text_buffer_create_child_anchor return type object not handled*)
(*Not implemented gtk_text_buffer_create_mark return type object not handled*)
(*Not implemented gtk_text_buffer_cut_clipboard type object not implemented*)
val delete:
  t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val delete_interactive:
  t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> bool -> bool
(*Not implemented gtk_text_buffer_delete_mark type object not implemented*)
val delete_mark_by_name:
  t structure ptr -> string -> unit
val delete_selection:
  t structure ptr -> bool -> bool -> bool
(*Not implemented gtk_text_buffer_deserialize type object not implemented*)
val deserialize_get_can_create_tags:
  t structure ptr -> Atom.t structure ptr -> bool
val deserialize_set_can_create_tags:
  t structure ptr -> Atom.t structure ptr -> bool -> unit
val end_user_action:
  t structure ptr -> unit
val get_bounds :
  t structure ptr -> (Text_iter.t structure * Text_iter.t structure)
val get_char_count:
  t structure ptr -> int32
val get_copy_target_list:
  t structure ptr -> Target_list.t structure ptr
(*Not implemented gtk_text_buffer_get_deserialize_formats return type C Array type for Types.Array tag not handled*)
val get_end_iter :
  t structure ptr -> (Text_iter.t structure)
val get_has_selection:
  t structure ptr -> bool
(*Not implemented gtk_text_buffer_get_insert return type object not handled*)
(*Not implemented gtk_text_buffer_get_iter_at_child_anchor type object not implemented*)
val get_iter_at_line :
  t structure ptr -> int32 -> (Text_iter.t structure)
val get_iter_at_line_index :
  t structure ptr -> int32 -> int32 -> (Text_iter.t structure)
val get_iter_at_line_offset :
  t structure ptr -> int32 -> int32 -> (Text_iter.t structure)
(*Not implemented gtk_text_buffer_get_iter_at_mark type object not implemented*)
val get_iter_at_offset :
  t structure ptr -> int32 -> (Text_iter.t structure)
val get_line_count:
  t structure ptr -> int32
(*Not implemented gtk_text_buffer_get_mark return type object not handled*)
val get_modified:
  t structure ptr -> bool
val get_paste_target_list:
  t structure ptr -> Target_list.t structure ptr
(*Not implemented gtk_text_buffer_get_selection_bound return type object not handled*)
val get_selection_bounds :
  t structure ptr -> (bool * Text_iter.t structure * Text_iter.t structure)
(*Not implemented gtk_text_buffer_get_serialize_formats return type C Array type for Types.Array tag not handled*)
val get_slice:
  t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> bool -> string option
val get_start_iter :
  t structure ptr -> (Text_iter.t structure)
(*Not implemented gtk_text_buffer_get_tag_table return type object not handled*)
val get_text:
  t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> bool -> string option
val insert:
  t structure ptr -> Text_iter.t structure ptr -> string -> int32 -> unit
val insert_at_cursor:
  t structure ptr -> string -> int32 -> unit
(*Not implemented gtk_text_buffer_insert_child_anchor type object not implemented*)
val insert_interactive:
  t structure ptr -> Text_iter.t structure ptr -> string -> int32 -> bool -> bool
val insert_interactive_at_cursor:
  t structure ptr -> string -> int32 -> bool -> bool
val insert_markup:
  t structure ptr -> Text_iter.t structure ptr -> string -> int32 -> unit
(*Not implemented gtk_text_buffer_insert_pixbuf type object not implemented*)
val insert_range:
  t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val insert_range_interactive:
  t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> bool -> bool
(*Not implemented gtk_text_buffer_move_mark type object not implemented*)
val move_mark_by_name:
  t structure ptr -> string -> Text_iter.t structure ptr -> unit
(*Not implemented gtk_text_buffer_paste_clipboard type object not implemented*)
val place_cursor:
  t structure ptr -> Text_iter.t structure ptr -> unit
(*Not implemented gtk_text_buffer_register_deserialize_format type callback not implemented*)
val register_deserialize_tagset:
  t structure ptr -> string option -> Atom.t structure ptr
(*Not implemented gtk_text_buffer_register_serialize_format type callback not implemented*)
val register_serialize_tagset:
  t structure ptr -> string option -> Atom.t structure ptr
val remove_all_tags:
  t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
(*Not implemented gtk_text_buffer_remove_selection_clipboard type object not implemented*)
(*Not implemented gtk_text_buffer_remove_tag type object not implemented*)
val remove_tag_by_name:
  t structure ptr -> string -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val select_range:
  t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
(*Not implemented gtk_text_buffer_serialize type object not implemented*)
val set_modified:
  t structure ptr -> bool -> unit
val set_text:
  t structure ptr -> string -> int32 -> unit
val unregister_deserialize_format:
  t structure ptr -> Atom.t structure ptr -> unit
val unregister_serialize_format:
  t structure ptr -> Atom.t structure ptr -> unit
