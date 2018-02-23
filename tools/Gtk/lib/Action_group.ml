open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_action_group_new" (string @-> returning (t_typ))
let add_action =
  foreign "gtk_action_group_add_action" (t_typ @-> Action.t_typ @-> returning (void))
let add_action_with_accel =
  foreign "gtk_action_group_add_action_with_accel" (t_typ @-> Action.t_typ @-> string_opt @-> returning (void))
let get_accel_group =
  foreign "gtk_action_group_get_accel_group" (t_typ @-> returning (Accel_group.t_typ))
let get_action =
  foreign "gtk_action_group_get_action" (t_typ @-> string @-> returning (Action.t_typ))
let get_name =
  foreign "gtk_action_group_get_name" (t_typ @-> returning (string_opt))
let get_sensitive =
  foreign "gtk_action_group_get_sensitive" (t_typ @-> returning (bool))
let get_visible =
  foreign "gtk_action_group_get_visible" (t_typ @-> returning (bool))
let list_actions =
  foreign "gtk_action_group_list_actions" (t_typ @-> returning (ptr List.t_typ))
let remove_action =
  foreign "gtk_action_group_remove_action" (t_typ @-> Action.t_typ @-> returning (void))
let set_accel_group =
  foreign "gtk_action_group_set_accel_group" (t_typ @-> Accel_group.t_typ @-> returning (void))
let set_sensitive =
  foreign "gtk_action_group_set_sensitive" (t_typ @-> bool @-> returning (void))
(*Not implemented gtk_action_group_set_translate_func type callback not implemented*)
let set_translation_domain =
  foreign "gtk_action_group_set_translation_domain" (t_typ @-> string_opt @-> returning (void))
let set_visible =
  foreign "gtk_action_group_set_visible" (t_typ @-> bool @-> returning (void))
let translate_string =
  foreign "gtk_action_group_translate_string" (t_typ @-> string @-> returning (string_opt))
