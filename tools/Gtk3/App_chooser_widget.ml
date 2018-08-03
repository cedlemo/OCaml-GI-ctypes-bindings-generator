open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_app_chooser_widget_new" (string @-> returning (ptr Widget.t_typ))
let get_default_text =
  foreign "gtk_app_chooser_widget_get_default_text" (t_typ @-> returning (string_opt))
let get_show_all =
  foreign "gtk_app_chooser_widget_get_show_all" (t_typ @-> returning (bool))
let get_show_default =
  foreign "gtk_app_chooser_widget_get_show_default" (t_typ @-> returning (bool))
let get_show_fallback =
  foreign "gtk_app_chooser_widget_get_show_fallback" (t_typ @-> returning (bool))
let get_show_other =
  foreign "gtk_app_chooser_widget_get_show_other" (t_typ @-> returning (bool))
let get_show_recommended =
  foreign "gtk_app_chooser_widget_get_show_recommended" (t_typ @-> returning (bool))
let set_default_text =
  foreign "gtk_app_chooser_widget_set_default_text" (t_typ @-> string @-> returning (void))
let set_show_all =
  foreign "gtk_app_chooser_widget_set_show_all" (t_typ @-> bool @-> returning (void))
let set_show_default =
  foreign "gtk_app_chooser_widget_set_show_default" (t_typ @-> bool @-> returning (void))
let set_show_fallback =
  foreign "gtk_app_chooser_widget_set_show_fallback" (t_typ @-> bool @-> returning (void))
let set_show_other =
  foreign "gtk_app_chooser_widget_set_show_other" (t_typ @-> bool @-> returning (void))
let set_show_recommended =
  foreign "gtk_app_chooser_widget_set_show_recommended" (t_typ @-> bool @-> returning (void))
