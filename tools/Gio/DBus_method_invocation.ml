open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_connection =
  foreign "g_dbus_method_invocation_get_connection" (t_typ @-> returning (DBus_connection.t_typ))
let get_interface_name =
  foreign "g_dbus_method_invocation_get_interface_name" (t_typ @-> returning (string_opt))
let get_message =
  foreign "g_dbus_method_invocation_get_message" (t_typ @-> returning (DBus_message.t_typ))
let get_method_info =
  foreign "g_dbus_method_invocation_get_method_info" (t_typ @-> returning (ptr DBus_method_info.t_typ))
let get_method_name =
  foreign "g_dbus_method_invocation_get_method_name" (t_typ @-> returning (string_opt))
let get_object_path =
  foreign "g_dbus_method_invocation_get_object_path" (t_typ @-> returning (string_opt))
let get_parameters =
  foreign "g_dbus_method_invocation_get_parameters" (t_typ @-> returning (ptr Variant.t_typ))
let get_property_info =
  foreign "g_dbus_method_invocation_get_property_info" (t_typ @-> returning (ptr DBus_property_info.t_typ))
let get_sender =
  foreign "g_dbus_method_invocation_get_sender" (t_typ @-> returning (string_opt))
let return_dbus_error =
  foreign "g_dbus_method_invocation_return_dbus_error" (t_typ @-> string @-> string @-> returning (void))
let return_error_literal =
  foreign "g_dbus_method_invocation_return_error_literal" (t_typ @-> uint32_t @-> int32_t @-> string @-> returning (void))
let return_gerror =
  foreign "g_dbus_method_invocation_return_gerror" (t_typ @-> ptr Error.t_typ @-> returning (void))
let return_value =
  foreign "g_dbus_method_invocation_return_value" (t_typ @-> ptr_opt Variant.t_typ @-> returning (void))
let return_value_with_unix_fd_list =
  foreign "g_dbus_method_invocation_return_value_with_unix_fd_list" (t_typ @-> ptr_opt Variant.t_typ @-> Unix_fdlist.t_typ @-> returning (void))
