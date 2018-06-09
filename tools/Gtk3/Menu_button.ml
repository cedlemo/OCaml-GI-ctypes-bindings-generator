open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_menu_button_new" (void @-> returning (Widget.t_typ))
let get_align_widget =
  foreign "gtk_menu_button_get_align_widget" (t_typ @-> returning (Widget.t_typ))
let get_direction =
  foreign "gtk_menu_button_get_direction" (t_typ @-> returning (Arrow_type.t_view))
let get_menu_model =
  foreign "gtk_menu_button_get_menu_model" (t_typ @-> returning (Menu_model.t_typ))
let get_popover =
  foreign "gtk_menu_button_get_popover" (t_typ @-> returning (Popover.t_typ))
let get_popup =
  foreign "gtk_menu_button_get_popup" (t_typ @-> returning (Menu.t_typ))
let get_use_popover =
  foreign "gtk_menu_button_get_use_popover" (t_typ @-> returning (bool))
let set_align_widget =
  foreign "gtk_menu_button_set_align_widget" (t_typ @-> Widget.t_typ @-> returning (void))
let set_direction =
  foreign "gtk_menu_button_set_direction" (t_typ @-> Arrow_type.t_view @-> returning (void))
let set_menu_model =
  foreign "gtk_menu_button_set_menu_model" (t_typ @-> Menu_model.t_typ @-> returning (void))
let set_popover =
  foreign "gtk_menu_button_set_popover" (t_typ @-> Widget.t_typ @-> returning (void))
let set_popup =
  foreign "gtk_menu_button_set_popup" (t_typ @-> Widget.t_typ @-> returning (void))
let set_use_popover =
  foreign "gtk_menu_button_set_use_popover" (t_typ @-> bool @-> returning (void))
