open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_combo_box_text_new return type object not handled*)
(*Not implemented gtk_combo_box_text_new_with_entry return type object not handled*)
let append =
  foreign "gtk_combo_box_text_append" (ptr t_typ @-> string_opt @-> string @-> returning (void))
let append_text =
  foreign "gtk_combo_box_text_append_text" (ptr t_typ @-> string @-> returning (void))
let get_active_text =
  foreign "gtk_combo_box_text_get_active_text" (ptr t_typ @-> returning (string_opt))
let insert =
  foreign "gtk_combo_box_text_insert" (ptr t_typ @-> int32_t @-> string_opt @-> string @-> returning (void))
let insert_text =
  foreign "gtk_combo_box_text_insert_text" (ptr t_typ @-> int32_t @-> string @-> returning (void))
let prepend =
  foreign "gtk_combo_box_text_prepend" (ptr t_typ @-> string_opt @-> string @-> returning (void))
let prepend_text =
  foreign "gtk_combo_box_text_prepend_text" (ptr t_typ @-> string @-> returning (void))
let remove =
  foreign "gtk_combo_box_text_remove" (ptr t_typ @-> int32_t @-> returning (void))
let remove_all =
  foreign "gtk_combo_box_text_remove_all" (ptr t_typ @-> returning (void))
