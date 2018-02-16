open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_tls_password_new return type object not handled*)
let get_description =
  foreign "g_tls_password_get_description" (ptr t_typ @-> returning (string_opt))
let get_flags =
  foreign "g_tls_password_get_flags" (ptr t_typ @-> returning (Tls_password_flags.t_list_view))
let get_value =
  foreign "g_tls_password_get_value" (ptr t_typ @-> ptr_opt uint64_t @-> returning (ptr uint8_t))
let get_warning =
  foreign "g_tls_password_get_warning" (ptr t_typ @-> returning (string_opt))
let set_description =
  foreign "g_tls_password_set_description" (ptr t_typ @-> string @-> returning (void))
let set_flags =
  foreign "g_tls_password_set_flags" (ptr t_typ @-> Tls_password_flags.t_list_view @-> returning (void))
let set_value =
  foreign "g_tls_password_set_value" (ptr t_typ @-> ptr uint8_t @-> int64_t @-> returning (void))
(*Not implemented g_tls_password_set_value_full type callback not implemented*)
let set_warning =
  foreign "g_tls_password_set_warning" (ptr t_typ @-> string @-> returning (void))
