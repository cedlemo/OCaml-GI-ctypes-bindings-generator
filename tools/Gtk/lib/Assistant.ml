open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_assistant_new return type object not handled*)
(*Not implemented gtk_assistant_add_action_widget type object not implemented*)
(*Not implemented gtk_assistant_append_page type object not implemented*)
let commit =
  foreign "gtk_assistant_commit" (ptr t_typ @-> returning (void))
let get_current_page =
  foreign "gtk_assistant_get_current_page" (ptr t_typ @-> returning (int32_t))
let get_n_pages =
  foreign "gtk_assistant_get_n_pages" (ptr t_typ @-> returning (int32_t))
(*Not implemented gtk_assistant_get_nth_page return type object not handled*)
(*Not implemented gtk_assistant_get_page_complete type object not implemented*)
(*Not implemented gtk_assistant_get_page_has_padding type object not implemented*)
(*Not implemented gtk_assistant_get_page_header_image type object not implemented*)
(*Not implemented gtk_assistant_get_page_side_image type object not implemented*)
(*Not implemented gtk_assistant_get_page_title type object not implemented*)
(*Not implemented gtk_assistant_get_page_type type object not implemented*)
(*Not implemented gtk_assistant_insert_page type object not implemented*)
let next_page =
  foreign "gtk_assistant_next_page" (ptr t_typ @-> returning (void))
(*Not implemented gtk_assistant_prepend_page type object not implemented*)
let previous_page =
  foreign "gtk_assistant_previous_page" (ptr t_typ @-> returning (void))
(*Not implemented gtk_assistant_remove_action_widget type object not implemented*)
let remove_page =
  foreign "gtk_assistant_remove_page" (ptr t_typ @-> int32_t @-> returning (void))
let set_current_page =
  foreign "gtk_assistant_set_current_page" (ptr t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_assistant_set_forward_page_func type callback not implemented*)
(*Not implemented gtk_assistant_set_page_complete type object not implemented*)
(*Not implemented gtk_assistant_set_page_has_padding type object not implemented*)
(*Not implemented gtk_assistant_set_page_header_image type object not implemented*)
(*Not implemented gtk_assistant_set_page_side_image type object not implemented*)
(*Not implemented gtk_assistant_set_page_title type object not implemented*)
(*Not implemented gtk_assistant_set_page_type type object not implemented*)
let update_buttons_state =
  foreign "gtk_assistant_update_buttons_state" (ptr t_typ @-> returning (void))
