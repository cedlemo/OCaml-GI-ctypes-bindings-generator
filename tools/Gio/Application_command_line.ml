open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_application_command_line_create_file_for_arg return type interface not handled*)
(*Not implemented g_application_command_line_get_arguments return type C Array type for Types.Array tag not handled*)
let get_cwd =
  foreign "g_application_command_line_get_cwd" (t_typ @-> returning (string_opt))
(*Not implemented g_application_command_line_get_environ return type C Array type for Types.Array tag not handled*)
let get_exit_status =
  foreign "g_application_command_line_get_exit_status" (t_typ @-> returning (int32_t))
let get_is_remote =
  foreign "g_application_command_line_get_is_remote" (t_typ @-> returning (bool))
let get_options_dict =
  foreign "g_application_command_line_get_options_dict" (t_typ @-> returning (ptr Variant_dict.t_typ))
let get_platform_data =
  foreign "g_application_command_line_get_platform_data" (t_typ @-> returning (ptr_opt Variant.t_typ))
let get_stdin =
  foreign "g_application_command_line_get_stdin" (t_typ @-> returning (Input_stream.t_typ))
let getenv =
  foreign "g_application_command_line_getenv" (t_typ @-> string @-> returning (string_opt))
let set_exit_status =
  foreign "g_application_command_line_set_exit_status" (t_typ @-> int32_t @-> returning (void))
