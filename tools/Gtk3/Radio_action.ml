open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_radio_action_new" (string @-> string_opt @-> string_opt @-> string_opt @-> int32_t @-> returning (t_typ))
let get_current_value =
  foreign "gtk_radio_action_get_current_value" (t_typ @-> returning (int32_t))
let get_group =
  foreign "gtk_radio_action_get_group" (t_typ @-> returning (ptr SList.t_typ))
let join_group =
  foreign "gtk_radio_action_join_group" (t_typ @-> t_typ @-> returning (void))
let set_current_value =
  foreign "gtk_radio_action_set_current_value" (t_typ @-> int32_t @-> returning (void))
let set_group =
  foreign "gtk_radio_action_set_group" (t_typ @-> ptr_opt SList.t_typ @-> returning (void))
