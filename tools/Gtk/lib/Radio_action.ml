open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_radio_action_new return type object not handled*)
let get_current_value =
  foreign "gtk_radio_action_get_current_value" (ptr t_typ @-> returning (int32_t))
let get_group =
  foreign "gtk_radio_action_get_group" (ptr t_typ @-> returning (ptr SList.t_typ))
(*Not implemented gtk_radio_action_join_group type object not implemented*)
let set_current_value =
  foreign "gtk_radio_action_set_current_value" (ptr t_typ @-> int32_t @-> returning (void))
let set_group =
  foreign "gtk_radio_action_set_group" (ptr t_typ @-> ptr_opt SList.t_typ @-> returning (void))
