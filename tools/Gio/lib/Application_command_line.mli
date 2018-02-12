open Ctypes

type t
val t_typ : t typ

(*Not implemented g_application_command_line_create_file_for_arg return type interface not handled*)
(*Not implemented g_application_command_line_get_arguments return type C Array type for Types.Array tag not handled*)
val get_cwd:
  t structure ptr -> string option
(*Not implemented g_application_command_line_get_environ return type C Array type for Types.Array tag not handled*)
val get_exit_status:
  t structure ptr -> int32
val get_is_remote:
  t structure ptr -> bool
val get_options_dict:
  t structure ptr -> Variant_dict.t structure ptr
val get_platform_data:
  t structure ptr -> Variant.t structure ptr option
(*Not implemented g_application_command_line_get_stdin return type object not handled*)
val getenv:
  t structure ptr -> string -> string option
val set_exit_status:
  t structure ptr -> int32 -> unit
