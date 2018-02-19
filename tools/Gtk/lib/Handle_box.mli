open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_handle_box_new return type object not handled*)
val get_child_detached:
  t structure ptr -> bool
val get_handle_position:
  t structure ptr -> Position_type.t
val get_shadow_type:
  t structure ptr -> Shadow_type.t
val get_snap_edge:
  t structure ptr -> Position_type.t
val set_handle_position:
  t structure ptr -> Position_type.t -> unit
val set_shadow_type:
  t structure ptr -> Shadow_type.t -> unit
val set_snap_edge:
  t structure ptr -> Position_type.t -> unit
