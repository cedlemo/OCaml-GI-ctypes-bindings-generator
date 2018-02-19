open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_action_group_new return type object not handled*)
(*Not implemented gtk_action_group_add_action type object not implemented*)
(*Not implemented gtk_action_group_add_action_with_accel type object not implemented*)
(*Not implemented gtk_action_group_get_accel_group return type object not handled*)
(*Not implemented gtk_action_group_get_action return type object not handled*)
val get_name:
  t structure ptr -> string option
val get_sensitive:
  t structure ptr -> bool
val get_visible:
  t structure ptr -> bool
val list_actions:
  t structure ptr -> List.t structure ptr
(*Not implemented gtk_action_group_remove_action type object not implemented*)
(*Not implemented gtk_action_group_set_accel_group type object not implemented*)
val set_sensitive:
  t structure ptr -> bool -> unit
(*Not implemented gtk_action_group_set_translate_func type callback not implemented*)
val set_translation_domain:
  t structure ptr -> string option -> unit
val set_visible:
  t structure ptr -> bool -> unit
val translate_string:
  t structure ptr -> string -> string option
