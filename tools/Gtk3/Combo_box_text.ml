open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_combo_box_text_new" (void @-> returning (Widget.t_typ))
let create_with_entry =
  foreign "gtk_combo_box_text_new_with_entry" (void @-> returning (Widget.t_typ))
let append =
  foreign "gtk_combo_box_text_append" (t_typ @-> string_opt @-> string @-> returning (void))
let append_text =
  foreign "gtk_combo_box_text_append_text" (t_typ @-> string @-> returning (void))
let get_active_text =
  foreign "gtk_combo_box_text_get_active_text" (t_typ @-> returning (string_opt))
let insert =
  foreign "gtk_combo_box_text_insert" (t_typ @-> int32_t @-> string_opt @-> string @-> returning (void))
let insert_text =
  foreign "gtk_combo_box_text_insert_text" (t_typ @-> int32_t @-> string @-> returning (void))
let prepend =
  foreign "gtk_combo_box_text_prepend" (t_typ @-> string_opt @-> string @-> returning (void))
let prepend_text =
  foreign "gtk_combo_box_text_prepend_text" (t_typ @-> string @-> returning (void))
let remove =
  foreign "gtk_combo_box_text_remove" (t_typ @-> int32_t @-> returning (void))
let remove_all =
  foreign "gtk_combo_box_text_remove_all" (t_typ @-> returning (void))
