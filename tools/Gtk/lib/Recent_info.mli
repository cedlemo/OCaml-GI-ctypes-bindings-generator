open Ctypes

type t
val t_typ : t structure typ

(*Not implemented gtk_recent_info_create_app_info return type interface not handled*)
val exists:
  t structure ptr -> bool
val get_added:
  t structure ptr -> int64
val get_age:
  t structure ptr -> int32
val get_application_info :
  t structure ptr -> string -> (bool * string * Unsigned.uint32 * int64)
(*Not implemented gtk_recent_info_get_applications return type C Array type for Types.Array tag not handled*)
val get_description:
  t structure ptr -> string option
val get_display_name:
  t structure ptr -> string option
(*Not implemented gtk_recent_info_get_gicon return type interface not handled*)
(*Not implemented gtk_recent_info_get_groups return type C Array type for Types.Array tag not handled*)
val get_icon:
  t structure ptr -> int32 -> Pixbuf.t
val get_mime_type:
  t structure ptr -> string option
val get_modified:
  t structure ptr -> int64
val get_private_hint:
  t structure ptr -> bool
val get_short_name:
  t structure ptr -> string option
val get_uri:
  t structure ptr -> string option
val get_uri_display:
  t structure ptr -> string option
val get_visited:
  t structure ptr -> int64
val has_application:
  t structure ptr -> string -> bool
val has_group:
  t structure ptr -> string -> bool
val is_local:
  t structure ptr -> bool
val last_application:
  t structure ptr -> string option
val _match:
  t structure ptr -> t structure ptr -> bool
val incr_ref:
  t structure ptr -> t structure ptr
val unref:
  t structure ptr -> unit
