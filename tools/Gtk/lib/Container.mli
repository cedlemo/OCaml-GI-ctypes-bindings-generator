open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_container_add type object not implemented*)
val check_resize:
  t structure ptr -> unit
(*Not implemented gtk_container_child_get_property type object not implemented*)
(*Not implemented gtk_container_child_notify type object not implemented*)
(*Not implemented gtk_container_child_notify_by_pspec type object not implemented*)
(*Not implemented gtk_container_child_set_property type object not implemented*)
(*Not implemented gtk_container_child_type return type gType not handled*)
(*Not implemented gtk_container_forall type callback not implemented*)
(*Not implemented gtk_container_foreach type callback not implemented*)
val get_border_width:
  t structure ptr -> Unsigned.uint32
val get_children:
  t structure ptr -> List.t structure ptr
val get_focus_chain :
  t structure ptr -> (bool * List.t structure ptr)
(*Not implemented gtk_container_get_focus_child return type object not handled*)
(*Not implemented gtk_container_get_focus_hadjustment return type object not handled*)
(*Not implemented gtk_container_get_focus_vadjustment return type object not handled*)
(*Not implemented gtk_container_get_path_for_child type object not implemented*)
val get_resize_mode:
  t structure ptr -> Resize_mode.t
(*Not implemented gtk_container_propagate_draw type object not implemented*)
(*Not implemented gtk_container_remove type object not implemented*)
val resize_children:
  t structure ptr -> unit
val set_border_width:
  t structure ptr -> Unsigned.uint32 -> unit
val set_focus_chain:
  t structure ptr -> List.t structure ptr -> unit
(*Not implemented gtk_container_set_focus_child type object not implemented*)
(*Not implemented gtk_container_set_focus_hadjustment type object not implemented*)
(*Not implemented gtk_container_set_focus_vadjustment type object not implemented*)
val set_reallocate_redraws:
  t structure ptr -> bool -> unit
val set_resize_mode:
  t structure ptr -> Resize_mode.t -> unit
val unset_focus_chain:
  t structure ptr -> unit
