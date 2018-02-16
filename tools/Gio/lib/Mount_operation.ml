open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_mount_operation_new return type object not handled*)
let get_anonymous =
  foreign "g_mount_operation_get_anonymous" (ptr t_typ @-> returning (bool))
let get_choice =
  foreign "g_mount_operation_get_choice" (ptr t_typ @-> returning (int32_t))
let get_domain =
  foreign "g_mount_operation_get_domain" (ptr t_typ @-> returning (string_opt))
let get_password =
  foreign "g_mount_operation_get_password" (ptr t_typ @-> returning (string_opt))
let get_password_save =
  foreign "g_mount_operation_get_password_save" (ptr t_typ @-> returning (Password_save.t_view))
let get_username =
  foreign "g_mount_operation_get_username" (ptr t_typ @-> returning (string_opt))
let reply =
  foreign "g_mount_operation_reply" (ptr t_typ @-> Mount_operation_result.t_view @-> returning (void))
let set_anonymous =
  foreign "g_mount_operation_set_anonymous" (ptr t_typ @-> bool @-> returning (void))
let set_choice =
  foreign "g_mount_operation_set_choice" (ptr t_typ @-> int32_t @-> returning (void))
let set_domain =
  foreign "g_mount_operation_set_domain" (ptr t_typ @-> string @-> returning (void))
let set_password =
  foreign "g_mount_operation_set_password" (ptr t_typ @-> string @-> returning (void))
let set_password_save =
  foreign "g_mount_operation_set_password_save" (ptr t_typ @-> Password_save.t_view @-> returning (void))
let set_username =
  foreign "g_mount_operation_set_username" (ptr t_typ @-> string @-> returning (void))
