open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_entry_completion_new return type object not handled*)
(*Not implemented gtk_entry_completion_new_with_area type object not implemented*)
val complete:
  t structure ptr -> unit
val compute_prefix:
  t structure ptr -> string -> string option
val delete_action:
  t structure ptr -> int32 -> unit
val get_completion_prefix:
  t structure ptr -> string option
(*Not implemented gtk_entry_completion_get_entry return type object not handled*)
val get_inline_completion:
  t structure ptr -> bool
val get_inline_selection:
  t structure ptr -> bool
val get_minimum_key_length:
  t structure ptr -> int32
(*Not implemented gtk_entry_completion_get_model return type interface not handled*)
val get_popup_completion:
  t structure ptr -> bool
val get_popup_set_width:
  t structure ptr -> bool
val get_popup_single_match:
  t structure ptr -> bool
val get_text_column:
  t structure ptr -> int32
val insert_action_markup:
  t structure ptr -> int32 -> string -> unit
val insert_action_text:
  t structure ptr -> int32 -> string -> unit
val insert_prefix:
  t structure ptr -> unit
val set_inline_completion:
  t structure ptr -> bool -> unit
val set_inline_selection:
  t structure ptr -> bool -> unit
(*Not implemented gtk_entry_completion_set_match_func type callback not implemented*)
val set_minimum_key_length:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_entry_completion_set_model type interface not implemented*)
val set_popup_completion:
  t structure ptr -> bool -> unit
val set_popup_set_width:
  t structure ptr -> bool -> unit
val set_popup_single_match:
  t structure ptr -> bool -> unit
val set_text_column:
  t structure ptr -> int32 -> unit
