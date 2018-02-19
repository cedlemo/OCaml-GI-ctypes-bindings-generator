open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_entry_completion_new return type object not handled*)
(*Not implemented gtk_entry_completion_new_with_area type object not implemented*)
let complete =
  foreign "gtk_entry_completion_complete" (ptr t_typ @-> returning (void))
let compute_prefix =
  foreign "gtk_entry_completion_compute_prefix" (ptr t_typ @-> string @-> returning (string_opt))
let delete_action =
  foreign "gtk_entry_completion_delete_action" (ptr t_typ @-> int32_t @-> returning (void))
let get_completion_prefix =
  foreign "gtk_entry_completion_get_completion_prefix" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_entry_completion_get_entry return type object not handled*)
let get_inline_completion =
  foreign "gtk_entry_completion_get_inline_completion" (ptr t_typ @-> returning (bool))
let get_inline_selection =
  foreign "gtk_entry_completion_get_inline_selection" (ptr t_typ @-> returning (bool))
let get_minimum_key_length =
  foreign "gtk_entry_completion_get_minimum_key_length" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_entry_completion_get_model return type interface not handled*)
let get_popup_completion =
  foreign "gtk_entry_completion_get_popup_completion" (ptr t_typ @-> returning (bool))
let get_popup_set_width =
  foreign "gtk_entry_completion_get_popup_set_width" (ptr t_typ @-> returning (bool))
let get_popup_single_match =
  foreign "gtk_entry_completion_get_popup_single_match" (ptr t_typ @-> returning (bool))
let get_text_column =
  foreign "gtk_entry_completion_get_text_column" (ptr t_typ @-> returning (int32_t))
let insert_action_markup =
  foreign "gtk_entry_completion_insert_action_markup" (ptr t_typ @-> int32_t @-> string @-> returning (void))
let insert_action_text =
  foreign "gtk_entry_completion_insert_action_text" (ptr t_typ @-> int32_t @-> string @-> returning (void))
let insert_prefix =
  foreign "gtk_entry_completion_insert_prefix" (ptr t_typ @-> returning (void))
let set_inline_completion =
  foreign "gtk_entry_completion_set_inline_completion" (ptr t_typ @-> bool @-> returning (void))
let set_inline_selection =
  foreign "gtk_entry_completion_set_inline_selection" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_entry_completion_set_match_func type callback not implemented*)
let set_minimum_key_length =
  foreign "gtk_entry_completion_set_minimum_key_length" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_entry_completion_set_model type interface not implemented*)
let set_popup_completion =
  foreign "gtk_entry_completion_set_popup_completion" (ptr t_typ @-> bool @-> returning (void))
let set_popup_set_width =
  foreign "gtk_entry_completion_set_popup_set_width" (ptr t_typ @-> bool @-> returning (void))
let set_popup_single_match =
  foreign "gtk_entry_completion_set_popup_single_match" (ptr t_typ @-> bool @-> returning (void))
let set_text_column =
  foreign "gtk_entry_completion_set_text_column" (ptr t_typ @-> int32_t @-> returning (void))
