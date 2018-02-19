open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_app_chooser_widget_new return type object not handled*)
let get_default_text =
  foreign "gtk_app_chooser_widget_get_default_text" (ptr t_typ @-> returning (string_opt))
let get_show_all =
  foreign "gtk_app_chooser_widget_get_show_all" (ptr t_typ @-> returning (bool))
let get_show_default =
  foreign "gtk_app_chooser_widget_get_show_default" (ptr t_typ @-> returning (bool))
let get_show_fallback =
  foreign "gtk_app_chooser_widget_get_show_fallback" (ptr t_typ @-> returning (bool))
let get_show_other =
  foreign "gtk_app_chooser_widget_get_show_other" (ptr t_typ @-> returning (bool))
let get_show_recommended =
  foreign "gtk_app_chooser_widget_get_show_recommended" (ptr t_typ @-> returning (bool))
let set_default_text =
  foreign "gtk_app_chooser_widget_set_default_text" (ptr t_typ @-> string @-> returning (void))
let set_show_all =
  foreign "gtk_app_chooser_widget_set_show_all" (ptr t_typ @-> bool @-> returning (void))
let set_show_default =
  foreign "gtk_app_chooser_widget_set_show_default" (ptr t_typ @-> bool @-> returning (void))
let set_show_fallback =
  foreign "gtk_app_chooser_widget_set_show_fallback" (ptr t_typ @-> bool @-> returning (void))
let set_show_other =
  foreign "gtk_app_chooser_widget_set_show_other" (ptr t_typ @-> bool @-> returning (void))
let set_show_recommended =
  foreign "gtk_app_chooser_widget_set_show_recommended" (ptr t_typ @-> bool @-> returning (void))
