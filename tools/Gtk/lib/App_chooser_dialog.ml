open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_app_chooser_dialog_new type object not implemented*)
(*Not implemented gtk_app_chooser_dialog_new_for_content_type type object not implemented*)
let get_heading =
  foreign "gtk_app_chooser_dialog_get_heading" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_app_chooser_dialog_get_widget return type object not handled*)
let set_heading =
  foreign "gtk_app_chooser_dialog_set_heading" (ptr t_typ @-> string @-> returning (void))
