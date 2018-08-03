open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_mount_operation_new" (void @-> returning (ptr t_typ))
let get_anonymous =
  foreign "g_mount_operation_get_anonymous" (t_typ @-> returning (bool))
let get_choice =
  foreign "g_mount_operation_get_choice" (t_typ @-> returning (int32_t))
let get_domain =
  foreign "g_mount_operation_get_domain" (t_typ @-> returning (string_opt))
let get_password =
  foreign "g_mount_operation_get_password" (t_typ @-> returning (string_opt))
let get_password_save =
  foreign "g_mount_operation_get_password_save" (t_typ @-> returning (Password_save.t_view))
let get_username =
  foreign "g_mount_operation_get_username" (t_typ @-> returning (string_opt))
let reply =
  foreign "g_mount_operation_reply" (t_typ @-> Mount_operation_result.t_view @-> returning (void))
let set_anonymous =
  foreign "g_mount_operation_set_anonymous" (t_typ @-> bool @-> returning (void))
let set_choice =
  foreign "g_mount_operation_set_choice" (t_typ @-> int32_t @-> returning (void))
let set_domain =
  foreign "g_mount_operation_set_domain" (t_typ @-> string @-> returning (void))
let set_password =
  foreign "g_mount_operation_set_password" (t_typ @-> string @-> returning (void))
let set_password_save =
  foreign "g_mount_operation_set_password_save" (t_typ @-> Password_save.t_view @-> returning (void))
let set_username =
  foreign "g_mount_operation_set_username" (t_typ @-> string @-> returning (void))
