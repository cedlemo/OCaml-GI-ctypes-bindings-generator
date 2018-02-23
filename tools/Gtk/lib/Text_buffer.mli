open Ctypes

type t
val t_typ : t typ

val create:
  Text_tag_table.t -> t
val add_mark:
  t -> Text_mark.t -> Text_iter.t structure ptr -> unit
val add_selection_clipboard:
  t -> Clipboard.t -> unit
val apply_tag:
  t -> Text_tag.t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val apply_tag_by_name:
  t -> string -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val backspace:
  t -> Text_iter.t structure ptr -> bool -> bool -> bool
val begin_user_action:
  t -> unit
val copy_clipboard:
  t -> Clipboard.t -> unit
val create_child_anchor:
  t -> Text_iter.t structure ptr -> Text_child_anchor.t
val create_mark:
  t -> string option -> Text_iter.t structure ptr -> bool -> Text_mark.t
val cut_clipboard:
  t -> Clipboard.t -> bool -> unit
val delete:
  t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val delete_interactive:
  t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> bool -> bool
val delete_mark:
  t -> Text_mark.t -> unit
val delete_mark_by_name:
  t -> string -> unit
val delete_selection:
  t -> bool -> bool -> bool
(*Not implemented gtk_text_buffer_deserialize type C Array type for Types.Array tag not implemented*)
val deserialize_get_can_create_tags:
  t -> Atom.t structure ptr -> bool
val deserialize_set_can_create_tags:
  t -> Atom.t structure ptr -> bool -> unit
val end_user_action:
  t -> unit
val get_bounds :
  t -> (Text_iter.t structure * Text_iter.t structure)
val get_char_count:
  t -> int32
val get_copy_target_list:
  t -> Target_list.t structure ptr
(*Not implemented gtk_text_buffer_get_deserialize_formats return type C Array type for Types.Array tag not handled*)
val get_end_iter :
  t -> (Text_iter.t structure)
val get_has_selection:
  t -> bool
val get_insert:
  t -> Text_mark.t
val get_iter_at_child_anchor :
  t -> Text_child_anchor.t -> (Text_iter.t structure)
val get_iter_at_line :
  t -> int32 -> (Text_iter.t structure)
val get_iter_at_line_index :
  t -> int32 -> int32 -> (Text_iter.t structure)
val get_iter_at_line_offset :
  t -> int32 -> int32 -> (Text_iter.t structure)
val get_iter_at_mark :
  t -> Text_mark.t -> (Text_iter.t structure)
val get_iter_at_offset :
  t -> int32 -> (Text_iter.t structure)
val get_line_count:
  t -> int32
val get_mark:
  t -> string -> Text_mark.t
val get_modified:
  t -> bool
val get_paste_target_list:
  t -> Target_list.t structure ptr
val get_selection_bound:
  t -> Text_mark.t
val get_selection_bounds :
  t -> (bool * Text_iter.t structure * Text_iter.t structure)
(*Not implemented gtk_text_buffer_get_serialize_formats return type C Array type for Types.Array tag not handled*)
val get_slice:
  t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> bool -> string option
val get_start_iter :
  t -> (Text_iter.t structure)
val get_tag_table:
  t -> Text_tag_table.t
val get_text:
  t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> bool -> string option
val insert:
  t -> Text_iter.t structure ptr -> string -> int32 -> unit
val insert_at_cursor:
  t -> string -> int32 -> unit
val insert_child_anchor:
  t -> Text_iter.t structure ptr -> Text_child_anchor.t -> unit
val insert_interactive:
  t -> Text_iter.t structure ptr -> string -> int32 -> bool -> bool
val insert_interactive_at_cursor:
  t -> string -> int32 -> bool -> bool
val insert_markup:
  t -> Text_iter.t structure ptr -> string -> int32 -> unit
val insert_pixbuf:
  t -> Text_iter.t structure ptr -> Pixbuf.t -> unit
val insert_range:
  t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val insert_range_interactive:
  t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> bool -> bool
val move_mark:
  t -> Text_mark.t -> Text_iter.t structure ptr -> unit
val move_mark_by_name:
  t -> string -> Text_iter.t structure ptr -> unit
val paste_clipboard:
  t -> Clipboard.t -> Text_iter.t structure ptr option -> bool -> unit
val place_cursor:
  t -> Text_iter.t structure ptr -> unit
(*Not implemented gtk_text_buffer_register_deserialize_format type callback not implemented*)
val register_deserialize_tagset:
  t -> string option -> Atom.t structure ptr
(*Not implemented gtk_text_buffer_register_serialize_format type callback not implemented*)
val register_serialize_tagset:
  t -> string option -> Atom.t structure ptr
val remove_all_tags:
  t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val remove_selection_clipboard:
  t -> Clipboard.t -> unit
val remove_tag:
  t -> Text_tag.t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val remove_tag_by_name:
  t -> string -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
val select_range:
  t -> Text_iter.t structure ptr -> Text_iter.t structure ptr -> unit
(*Not implemented gtk_text_buffer_serialize return type C Array type for Types.Array tag not handled*)
val set_modified:
  t -> bool -> unit
val set_text:
  t -> string -> int32 -> unit
val unregister_deserialize_format:
  t -> Atom.t structure ptr -> unit
val unregister_serialize_format:
  t -> Atom.t structure ptr -> unit
