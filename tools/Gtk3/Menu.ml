open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_menu_new" (void @-> returning (Widget.t_typ))
let create_from_model =
  foreign "gtk_menu_new_from_model" (Menu_model.t_typ @-> returning (Widget.t_typ))
let get_for_attach_widget =
  foreign "gtk_menu_get_for_attach_widget" (Widget.t_typ @-> returning (ptr List.t_typ))
let attach =
  foreign "gtk_menu_attach" (t_typ @-> Widget.t_typ @-> uint32_t @-> uint32_t @-> uint32_t @-> uint32_t @-> returning (void))
(*Not implemented gtk_menu_attach_to_widget type callback not implemented*)
let detach =
  foreign "gtk_menu_detach" (t_typ @-> returning (void))
let get_accel_group =
  foreign "gtk_menu_get_accel_group" (t_typ @-> returning (Accel_group.t_typ))
let get_accel_path =
  foreign "gtk_menu_get_accel_path" (t_typ @-> returning (string_opt))
let get_active =
  foreign "gtk_menu_get_active" (t_typ @-> returning (Widget.t_typ))
let get_attach_widget =
  foreign "gtk_menu_get_attach_widget" (t_typ @-> returning (Widget.t_typ))
let get_monitor =
  foreign "gtk_menu_get_monitor" (t_typ @-> returning (int32_t))
let get_reserve_toggle_size =
  foreign "gtk_menu_get_reserve_toggle_size" (t_typ @-> returning (bool))
let get_tearoff_state =
  foreign "gtk_menu_get_tearoff_state" (t_typ @-> returning (bool))
let get_title =
  foreign "gtk_menu_get_title" (t_typ @-> returning (string_opt))
let place_on_monitor =
  foreign "gtk_menu_place_on_monitor" (t_typ @-> Monitor.t_typ @-> returning (void))
let popdown =
  foreign "gtk_menu_popdown" (t_typ @-> returning (void))
(*Not implemented gtk_menu_popup type callback not implemented*)
(*Not implemented gtk_menu_popup_at_pointer type union not implemented*)
(*Not implemented gtk_menu_popup_at_rect type union not implemented*)
(*Not implemented gtk_menu_popup_at_widget type union not implemented*)
(*Not implemented gtk_menu_popup_for_device type callback not implemented*)
let reorder_child =
  foreign "gtk_menu_reorder_child" (t_typ @-> Widget.t_typ @-> int32_t @-> returning (void))
let reposition =
  foreign "gtk_menu_reposition" (t_typ @-> returning (void))
let set_accel_group =
  foreign "gtk_menu_set_accel_group" (t_typ @-> Accel_group.t_typ @-> returning (void))
let set_accel_path =
  foreign "gtk_menu_set_accel_path" (t_typ @-> string_opt @-> returning (void))
let set_active =
  foreign "gtk_menu_set_active" (t_typ @-> uint32_t @-> returning (void))
let set_monitor =
  foreign "gtk_menu_set_monitor" (t_typ @-> int32_t @-> returning (void))
let set_reserve_toggle_size =
  foreign "gtk_menu_set_reserve_toggle_size" (t_typ @-> bool @-> returning (void))
let set_screen =
  foreign "gtk_menu_set_screen" (t_typ @-> Screen.t_typ @-> returning (void))
let set_tearoff_state =
  foreign "gtk_menu_set_tearoff_state" (t_typ @-> bool @-> returning (void))
let set_title =
  foreign "gtk_menu_set_title" (t_typ @-> string @-> returning (void))
