open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_application_command_line_create_file_for_arg return type interface not handled*)
(*Not implemented g_application_command_line_get_arguments return type C Array type for Types.Array tag not handled*)
let get_cwd =
  foreign "g_application_command_line_get_cwd" (ptr t_typ @-> returning (string_opt))
(*Not implemented g_application_command_line_get_environ return type C Array type for Types.Array tag not handled*)
let get_exit_status =
  foreign "g_application_command_line_get_exit_status" (ptr t_typ @-> returning (int32_t))
let get_is_remote =
  foreign "g_application_command_line_get_is_remote" (ptr t_typ @-> returning (bool))
let get_options_dict =
  foreign "g_application_command_line_get_options_dict" (ptr t_typ @-> returning (ptr Variant_dict.t_typ))
let get_platform_data =
  foreign "g_application_command_line_get_platform_data" (ptr t_typ @-> returning (ptr_opt Variant.t_typ))
(*Not implemented g_application_command_line_get_stdin return type object not handled*)
let getenv =
  foreign "g_application_command_line_getenv" (ptr t_typ @-> string @-> returning (string_opt))
let set_exit_status =
  foreign "g_application_command_line_set_exit_status" (ptr t_typ @-> int32_t @-> returning (void))
