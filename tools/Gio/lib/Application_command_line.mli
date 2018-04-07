open Ctypes

type t
val t_typ : t typ

(*Not implemented g_application_command_line_create_file_for_arg return type interface not handled*)
(*Not implemented g_application_command_line_get_arguments return type C Array type for Types.Array tag not handled*)
val get_cwd :
  t -> string option
(*Not implemented g_application_command_line_get_environ return type C Array type for Types.Array tag not handled*)
val get_exit_status :
  t -> int32
val get_is_remote :
  t -> bool
val get_options_dict :
  t -> Variant_dict.t structure ptr
val get_platform_data :
  t -> Variant.t structure ptr option
val get_stdin :
  t -> Input_stream.t
val getenv :
  t -> string -> string option
val set_exit_status :
  t -> int32 -> unit
