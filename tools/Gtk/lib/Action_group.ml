open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_action_group_new return type object not handled*)
(*Not implemented gtk_action_group_add_action type object not implemented*)
(*Not implemented gtk_action_group_add_action_with_accel type object not implemented*)
(*Not implemented gtk_action_group_get_accel_group return type object not handled*)
(*Not implemented gtk_action_group_get_action return type object not handled*)
let get_name =
  foreign "gtk_action_group_get_name" (ptr t_typ @-> returning (string_opt))
let get_sensitive =
  foreign "gtk_action_group_get_sensitive" (ptr t_typ @-> returning (bool))
let get_visible =
  foreign "gtk_action_group_get_visible" (ptr t_typ @-> returning (bool))
let list_actions =
  foreign "gtk_action_group_list_actions" (ptr t_typ @-> returning (ptr List.t_typ))
(*Not implemented gtk_action_group_remove_action type object not implemented*)
(*Not implemented gtk_action_group_set_accel_group type object not implemented*)
let set_sensitive =
  foreign "gtk_action_group_set_sensitive" (ptr t_typ @-> bool @-> returning (void))
(*Not implemented gtk_action_group_set_translate_func type callback not implemented*)
let set_translation_domain =
  foreign "gtk_action_group_set_translation_domain" (ptr t_typ @-> string_opt @-> returning (void))
let set_visible =
  foreign "gtk_action_group_set_visible" (ptr t_typ @-> bool @-> returning (void))
let translate_string =
  foreign "gtk_action_group_translate_string" (ptr t_typ @-> string @-> returning (string_opt))
