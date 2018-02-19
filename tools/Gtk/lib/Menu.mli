open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_menu_new return type object not handled*)
(*Not implemented gtk_menu_new_from_model type object not implemented*)
(*Not implemented gtk_menu_get_for_attach_widget type object not implemented*)
(*Not implemented gtk_menu_attach type object not implemented*)
(*Not implemented gtk_menu_attach_to_widget type object not implemented*)
val detach:
  t structure ptr -> unit
(*Not implemented gtk_menu_get_accel_group return type object not handled*)
val get_accel_path:
  t structure ptr -> string option
(*Not implemented gtk_menu_get_active return type object not handled*)
(*Not implemented gtk_menu_get_attach_widget return type object not handled*)
val get_monitor:
  t structure ptr -> int32
val get_reserve_toggle_size:
  t structure ptr -> bool
val get_tearoff_state:
  t structure ptr -> bool
val get_title:
  t structure ptr -> string option
(*Not implemented gtk_menu_place_on_monitor type object not implemented*)
val popdown:
  t structure ptr -> unit
(*Not implemented gtk_menu_popup type object not implemented*)
(*Not implemented gtk_menu_popup_at_pointer type union not implemented*)
(*Not implemented gtk_menu_popup_at_rect type object not implemented*)
(*Not implemented gtk_menu_popup_at_widget type object not implemented*)
(*Not implemented gtk_menu_popup_for_device type object not implemented*)
(*Not implemented gtk_menu_reorder_child type object not implemented*)
val reposition:
  t structure ptr -> unit
(*Not implemented gtk_menu_set_accel_group type object not implemented*)
val set_accel_path:
  t structure ptr -> string option -> unit
val set_active:
  t structure ptr -> Unsigned.uint32 -> unit
val set_monitor:
  t structure ptr -> int32 -> unit
val set_reserve_toggle_size:
  t structure ptr -> bool -> unit
(*Not implemented gtk_menu_set_screen type object not implemented*)
val set_tearoff_state:
  t structure ptr -> bool -> unit
val set_title:
  t structure ptr -> string -> unit
