open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_entry_completion_new" (void @-> returning (ptr t_typ))
let create_with_area =
  foreign "gtk_entry_completion_new_with_area" (ptr Cell_area.t_typ @-> returning (ptr t_typ))
let complete =
  foreign "gtk_entry_completion_complete" (t_typ @-> returning (void))
let compute_prefix =
  foreign "gtk_entry_completion_compute_prefix" (t_typ @-> string @-> returning (string_opt))
let delete_action =
  foreign "gtk_entry_completion_delete_action" (t_typ @-> int32_t @-> returning (void))
let get_completion_prefix =
  foreign "gtk_entry_completion_get_completion_prefix" (t_typ @-> returning (string_opt))
let get_entry =
  foreign "gtk_entry_completion_get_entry" (t_typ @-> returning (ptr Widget.t_typ))
let get_inline_completion =
  foreign "gtk_entry_completion_get_inline_completion" (t_typ @-> returning (bool))
let get_inline_selection =
  foreign "gtk_entry_completion_get_inline_selection" (t_typ @-> returning (bool))
let get_minimum_key_length =
  foreign "gtk_entry_completion_get_minimum_key_length" (t_typ @-> returning (int32_t))
(*Not implemented gtk_entry_completion_get_model return type interface not handled*)
let get_popup_completion =
  foreign "gtk_entry_completion_get_popup_completion" (t_typ @-> returning (bool))
let get_popup_set_width =
  foreign "gtk_entry_completion_get_popup_set_width" (t_typ @-> returning (bool))
let get_popup_single_match =
  foreign "gtk_entry_completion_get_popup_single_match" (t_typ @-> returning (bool))
let get_text_column =
  foreign "gtk_entry_completion_get_text_column" (t_typ @-> returning (int32_t))
let insert_action_markup =
  foreign "gtk_entry_completion_insert_action_markup" (t_typ @-> int32_t @-> string @-> returning (void))
let insert_action_text =
  foreign "gtk_entry_completion_insert_action_text" (t_typ @-> int32_t @-> string @-> returning (void))
let insert_prefix =
  foreign "gtk_entry_completion_insert_prefix" (t_typ @-> returning (void))
let set_inline_completion =
  foreign "gtk_entry_completion_set_inline_completion" (t_typ @-> bool @-> returning (void))
let set_inline_selection =
  foreign "gtk_entry_completion_set_inline_selection" (t_typ @-> bool @-> returning (void))
(*Not implemented gtk_entry_completion_set_match_func type callback not implemented*)
let set_minimum_key_length =
  foreign "gtk_entry_completion_set_minimum_key_length" (t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_entry_completion_set_model type interface not implemented*)
let set_popup_completion =
  foreign "gtk_entry_completion_set_popup_completion" (t_typ @-> bool @-> returning (void))
let set_popup_set_width =
  foreign "gtk_entry_completion_set_popup_set_width" (t_typ @-> bool @-> returning (void))
let set_popup_single_match =
  foreign "gtk_entry_completion_set_popup_single_match" (t_typ @-> bool @-> returning (void))
let set_text_column =
  foreign "gtk_entry_completion_set_text_column" (t_typ @-> int32_t @-> returning (void))
