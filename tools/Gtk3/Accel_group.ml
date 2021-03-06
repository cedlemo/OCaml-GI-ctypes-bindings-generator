open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_accel_group_new" (void @-> returning (ptr t_typ))
let from_accel_closure =
  foreign "gtk_accel_group_from_accel_closure" (ptr Closure.t_typ @-> returning (ptr_opt t_typ))
let activate =
  foreign "gtk_accel_group_activate" (t_typ @-> uint32_t @-> ptr Object.t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (bool))
let connect =
  foreign "gtk_accel_group_connect" (t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> Accel_flags.t_list_view @-> ptr Closure.t_typ @-> returning (void))
let connect_by_path =
  foreign "gtk_accel_group_connect_by_path" (t_typ @-> string @-> ptr Closure.t_typ @-> returning (void))
let disconnect =
  foreign "gtk_accel_group_disconnect" (t_typ @-> ptr_opt Closure.t_typ @-> returning (bool))
let disconnect_key =
  foreign "gtk_accel_group_disconnect_key" (t_typ @-> uint32_t @-> Modifier_type.t_list_view @-> returning (bool))
(*Not implemented gtk_accel_group_find type callback not implemented*)
let get_is_locked =
  foreign "gtk_accel_group_get_is_locked" (t_typ @-> returning (bool))
let get_modifier_mask =
  foreign "gtk_accel_group_get_modifier_mask" (t_typ @-> returning (Modifier_type.t_list_view))
let lock =
  foreign "gtk_accel_group_lock" (t_typ @-> returning (void))
(*Not implemented gtk_accel_group_query return type C Array type for Types.Array tag not handled*)
let unlock =
  foreign "gtk_accel_group_unlock" (t_typ @-> returning (void))
