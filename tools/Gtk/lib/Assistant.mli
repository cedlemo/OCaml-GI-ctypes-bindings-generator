open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_assistant_new return type object not handled*)
(*Not implemented gtk_assistant_add_action_widget type object not implemented*)
(*Not implemented gtk_assistant_append_page type object not implemented*)
val commit:
  t structure ptr -> unit
val get_current_page:
  t structure ptr -> int32
val get_n_pages:
  t structure ptr -> int32
(*Not implemented gtk_assistant_get_nth_page return type object not handled*)
(*Not implemented gtk_assistant_get_page_complete type object not implemented*)
(*Not implemented gtk_assistant_get_page_has_padding type object not implemented*)
(*Not implemented gtk_assistant_get_page_header_image type object not implemented*)
(*Not implemented gtk_assistant_get_page_side_image type object not implemented*)
(*Not implemented gtk_assistant_get_page_title type object not implemented*)
(*Not implemented gtk_assistant_get_page_type type object not implemented*)
(*Not implemented gtk_assistant_insert_page type object not implemented*)
val next_page:
  t structure ptr -> unit
(*Not implemented gtk_assistant_prepend_page type object not implemented*)
val previous_page:
  t structure ptr -> unit
(*Not implemented gtk_assistant_remove_action_widget type object not implemented*)
val remove_page:
  t structure ptr -> int32 -> unit
val set_current_page:
  t structure ptr -> int32 -> unit
(*Not implemented gtk_assistant_set_forward_page_func type callback not implemented*)
(*Not implemented gtk_assistant_set_page_complete type object not implemented*)
(*Not implemented gtk_assistant_set_page_has_padding type object not implemented*)
(*Not implemented gtk_assistant_set_page_header_image type object not implemented*)
(*Not implemented gtk_assistant_set_page_side_image type object not implemented*)
(*Not implemented gtk_assistant_set_page_title type object not implemented*)
(*Not implemented gtk_assistant_set_page_type type object not implemented*)
val update_buttons_state:
  t structure ptr -> unit
