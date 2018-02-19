open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_menu_bar_new return type object not handled*)
(*Not implemented gtk_menu_bar_new_from_model type object not implemented*)
val get_child_pack_direction:
  t structure ptr -> Pack_direction.t
val get_pack_direction:
  t structure ptr -> Pack_direction.t
val set_child_pack_direction:
  t structure ptr -> Pack_direction.t -> unit
val set_pack_direction:
  t structure ptr -> Pack_direction.t -> unit
