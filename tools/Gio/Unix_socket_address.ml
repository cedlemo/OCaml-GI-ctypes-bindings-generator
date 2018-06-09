open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "g_unix_socket_address_new" (string @-> returning (Socket_address.t_typ))
(*Not implemented g_unix_socket_address_new_abstract type C Array type for Types.Array tag not implemented*)
(*Not implemented g_unix_socket_address_new_with_type type C Array type for Types.Array tag not implemented*)
let abstract_names_supported =
  foreign "g_unix_socket_address_abstract_names_supported" (void @-> returning (bool))
let get_address_type =
  foreign "g_unix_socket_address_get_address_type" (t_typ @-> returning (Unix_socket_address_type.t_view))
let get_is_abstract =
  foreign "g_unix_socket_address_get_is_abstract" (t_typ @-> returning (bool))
let get_path =
  foreign "g_unix_socket_address_get_path" (t_typ @-> returning (string_opt))
let get_path_len =
  foreign "g_unix_socket_address_get_path_len" (t_typ @-> returning (uint64_t))
