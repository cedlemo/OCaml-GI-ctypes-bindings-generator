open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_app_chooser_dialog_new type interface not implemented*)
let create_for_content_type =
  foreign "gtk_app_chooser_dialog_new_for_content_type" (ptr_opt Window.t_typ @-> Dialog_flags.t_list_view @-> string @-> returning (ptr Widget.t_typ))
let get_heading =
  foreign "gtk_app_chooser_dialog_get_heading" (t_typ @-> returning (string_opt))
let get_widget =
  foreign "gtk_app_chooser_dialog_get_widget" (t_typ @-> returning (ptr Widget.t_typ))
let set_heading =
  foreign "gtk_app_chooser_dialog_set_heading" (t_typ @-> string @-> returning (void))
