open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_assistant_new" (void @-> returning (Widget.t_typ))
let add_action_widget =
  foreign "gtk_assistant_add_action_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let append_page =
  foreign "gtk_assistant_append_page" (t_typ @-> Widget.t_typ @-> returning (int32_t))
let commit =
  foreign "gtk_assistant_commit" (t_typ @-> returning (void))
let get_current_page =
  foreign "gtk_assistant_get_current_page" (t_typ @-> returning (int32_t))
let get_n_pages =
  foreign "gtk_assistant_get_n_pages" (t_typ @-> returning (int32_t))
let get_nth_page =
  foreign "gtk_assistant_get_nth_page" (t_typ @-> int32_t @-> returning (Widget.t_typ))
let get_page_complete =
  foreign "gtk_assistant_get_page_complete" (t_typ @-> Widget.t_typ @-> returning (bool))
let get_page_has_padding =
  foreign "gtk_assistant_get_page_has_padding" (t_typ @-> Widget.t_typ @-> returning (bool))
let get_page_header_image =
  foreign "gtk_assistant_get_page_header_image" (t_typ @-> Widget.t_typ @-> returning (Pixbuf.t_typ))
let get_page_side_image =
  foreign "gtk_assistant_get_page_side_image" (t_typ @-> Widget.t_typ @-> returning (Pixbuf.t_typ))
let get_page_title =
  foreign "gtk_assistant_get_page_title" (t_typ @-> Widget.t_typ @-> returning (string_opt))
let get_page_type =
  foreign "gtk_assistant_get_page_type" (t_typ @-> Widget.t_typ @-> returning (Assistant_page_type.t_view))
let insert_page =
  foreign "gtk_assistant_insert_page" (t_typ @-> Widget.t_typ @-> int32_t @-> returning (int32_t))
let next_page =
  foreign "gtk_assistant_next_page" (t_typ @-> returning (void))
let prepend_page =
  foreign "gtk_assistant_prepend_page" (t_typ @-> Widget.t_typ @-> returning (int32_t))
let previous_page =
  foreign "gtk_assistant_previous_page" (t_typ @-> returning (void))
let remove_action_widget =
  foreign "gtk_assistant_remove_action_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let remove_page =
  foreign "gtk_assistant_remove_page" (t_typ @-> int32_t @-> returning (void))
let set_current_page =
  foreign "gtk_assistant_set_current_page" (t_typ @-> int32_t @-> returning (void))
(*Not implemented gtk_assistant_set_forward_page_func type callback not implemented*)
let set_page_complete =
  foreign "gtk_assistant_set_page_complete" (t_typ @-> Widget.t_typ @-> bool @-> returning (void))
let set_page_has_padding =
  foreign "gtk_assistant_set_page_has_padding" (t_typ @-> Widget.t_typ @-> bool @-> returning (void))
let set_page_header_image =
  foreign "gtk_assistant_set_page_header_image" (t_typ @-> Widget.t_typ @-> Pixbuf.t_typ @-> returning (void))
let set_page_side_image =
  foreign "gtk_assistant_set_page_side_image" (t_typ @-> Widget.t_typ @-> Pixbuf.t_typ @-> returning (void))
let set_page_title =
  foreign "gtk_assistant_set_page_title" (t_typ @-> Widget.t_typ @-> string @-> returning (void))
let set_page_type =
  foreign "gtk_assistant_set_page_type" (t_typ @-> Widget.t_typ @-> Assistant_page_type.t_view @-> returning (void))
let update_buttons_state =
  foreign "gtk_assistant_update_buttons_state" (t_typ @-> returning (void))
