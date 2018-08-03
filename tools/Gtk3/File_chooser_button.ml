open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_file_chooser_button_new" (string @-> File_chooser_action.t_view @-> returning (ptr Widget.t_typ))
let create_with_dialog =
  foreign "gtk_file_chooser_button_new_with_dialog" (ptr Dialog.t_typ @-> returning (ptr Widget.t_typ))
let get_focus_on_click =
  foreign "gtk_file_chooser_button_get_focus_on_click" (t_typ @-> returning (bool))
let get_title =
  foreign "gtk_file_chooser_button_get_title" (t_typ @-> returning (string_opt))
let get_width_chars =
  foreign "gtk_file_chooser_button_get_width_chars" (t_typ @-> returning (int32_t))
let set_focus_on_click =
  foreign "gtk_file_chooser_button_set_focus_on_click" (t_typ @-> bool @-> returning (void))
let set_title =
  foreign "gtk_file_chooser_button_set_title" (t_typ @-> string @-> returning (void))
let set_width_chars =
  foreign "gtk_file_chooser_button_set_width_chars" (t_typ @-> int32_t @-> returning (void))
