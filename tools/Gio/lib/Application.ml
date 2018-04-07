open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_application_new" (string_opt @-> Application_flags.t_list_view @-> returning (t_typ))
let get_default =
  foreign "g_application_get_default" (void @-> returning (t_typ))
let id_is_valid =
  foreign "g_application_id_is_valid" (string @-> returning (bool))
let activate =
  foreign "g_application_activate" (t_typ @-> returning (void))
let add_main_option =
  foreign "g_application_add_main_option" (t_typ @-> string @-> int8_t @-> Option_flags.t_list_view @-> Option_arg.t_view @-> string @-> string_opt @-> returning (void))
(*Not implemented g_application_add_main_option_entries type C Array type for Types.Array tag not implemented*)
let add_option_group =
  foreign "g_application_add_option_group" (t_typ @-> ptr Option_group.t_typ @-> returning (void))
let bind_busy_property =
  foreign "g_application_bind_busy_property" (t_typ @-> Object.t_typ @-> string @-> returning (void))
let get_application_id =
  foreign "g_application_get_application_id" (t_typ @-> returning (string_opt))
let get_dbus_connection =
  foreign "g_application_get_dbus_connection" (t_typ @-> returning (DBus_connection.t_typ))
let get_dbus_object_path =
  foreign "g_application_get_dbus_object_path" (t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_application_get_flags" (t_typ @-> returning (Application_flags.t_list_view))
let get_inactivity_timeout =
  foreign "g_application_get_inactivity_timeout" (t_typ @-> returning (uint32_t))
let get_is_busy =
  foreign "g_application_get_is_busy" (t_typ @-> returning (bool))
let get_is_registered =
  foreign "g_application_get_is_registered" (t_typ @-> returning (bool))
let get_is_remote =
  foreign "g_application_get_is_remote" (t_typ @-> returning (bool))
let get_resource_base_path =
  foreign "g_application_get_resource_base_path" (t_typ @-> returning (string_opt))
let hold =
  foreign "g_application_hold" (t_typ @-> returning (void))
let mark_busy =
  foreign "g_application_mark_busy" (t_typ @-> returning (void))
(*Not implemented g_application_open type C Array type for Types.Array tag not implemented*)
let quit =
  foreign "g_application_quit" (t_typ @-> returning (void))
let register self cancellable =
  let register_raw =
    foreign "g_application_register" (t_typ @-> Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = register_raw self cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let release =
  foreign "g_application_release" (t_typ @-> returning (void))
(*Not implemented g_application_run type C Array type for Types.Array tag not implemented*)
let send_notification =
  foreign "g_application_send_notification" (t_typ @-> string_opt @-> Notification.t_typ @-> returning (void))
(*Not implemented g_application_set_action_group type interface not implemented*)
let set_application_id =
  foreign "g_application_set_application_id" (t_typ @-> string_opt @-> returning (void))
let set_default =
  foreign "g_application_set_default" (t_typ @-> returning (void))
let set_flags =
  foreign "g_application_set_flags" (t_typ @-> Application_flags.t_list_view @-> returning (void))
let set_inactivity_timeout =
  foreign "g_application_set_inactivity_timeout" (t_typ @-> uint32_t @-> returning (void))
let set_resource_base_path =
  foreign "g_application_set_resource_base_path" (t_typ @-> string_opt @-> returning (void))
let unbind_busy_property =
  foreign "g_application_unbind_busy_property" (t_typ @-> Object.t_typ @-> string @-> returning (void))
let unmark_busy =
  foreign "g_application_unmark_busy" (t_typ @-> returning (void))
let withdraw_notification =
  foreign "g_application_withdraw_notification" (t_typ @-> string @-> returning (void))
