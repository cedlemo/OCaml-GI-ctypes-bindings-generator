open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_menu_new return type object not handled*)
(*Not implemented gtk_menu_new_from_model type object not implemented*)
(*Not implemented gtk_menu_get_for_attach_widget type object not implemented*)
(*Not implemented gtk_menu_attach type object not implemented*)
(*Not implemented gtk_menu_attach_to_widget type object not implemented*)
let detach =
  foreign "gtk_menu_detach" (ptr t_typ @-> returning (void))
(*Not implemented gtk_menu_get_accel_group return type object not handled*)
let get_accel_path =
  foreign "gtk_menu_get_accel_path" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_menu_get_active return type object not handled*)
(*Not implemented gtk_menu_get_attach_widget return type object not handled*)
let get_monitor =
  foreign "gtk_menu_get_monitor" (ptr t_typ @-> returning (int32_t))
let get_reserve_toggle_size =
  foreign "gtk_menu_get_reserve_toggle_size" (ptr t_typ @-> returning (bool))
let get_tearoff_state =
  foreign "gtk_menu_get_tearoff_state" (ptr t_typ @-> returning (bool))
let get_title =
  foreign "gtk_menu_get_title" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_menu_place_on_monitor type object not implemented*)
let popdown =
  foreign "gtk_menu_popdown" (ptr t_typ @-> returning (void))
(*Not implemented gtk_menu_popup type object not implemented*)
(*Not implemented gtk_menu_popup_at_pointer type union not implemented*)
(*Not implemented gtk_menu_popup_at_rect type object not implemented*)
(*Not implemented gtk_menu_popup_at_widget type object not implemented*)
(*Not implemented gtk_menu_popup_for_device type object not implemented*)
(*Not implemented gtk_menu_reorder_child type object not implemented*)
let reposition =
  foreign "gtk_menu_reposition" (ptr t_typ @-> returning (void))
(*Not implemented gtk_menu_set_accel_group type object not implemented*)
let set_accel_path =
  foreign "gtk_menu_set_accel_path" (ptr t_typ @-> string_opt @-> returning (void))
let set_active =
  foreign "gtk_menu_set_active" (ptr t_typ @-> uint32_t @-> returning (void))
let set_monitor =
  foreign "gtk_menu_set_monitor" (ptr t_typ @-> int32_t @-> returning (void))
let set_reserve_toggle_size =
  foreign "gtk_menu_set_reserve_toggle_size" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_menu_set_screen type object not implemented*)
let set_tearoff_state =
  foreign "gtk_menu_set_tearoff_state" (ptr t_typ @-> bool @-> returning (void))
let set_title =
  foreign "gtk_menu_set_title" (ptr t_typ @-> string @-> returning (void))
