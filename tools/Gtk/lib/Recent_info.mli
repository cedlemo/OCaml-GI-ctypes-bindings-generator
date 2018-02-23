open Ctypes

type t
val t_typ : t structure typ

(*Not implemented gtk_recent_info_create_app_info return type interface not handled*)
val exists:
  t structure -> bool
val get_added:
  t structure -> int64
val get_age:
  t structure -> int32
val get_application_info :
  t structure -> string -> (bool * string * Unsigned.uint32 * int64)
(*Not implemented gtk_recent_info_get_applications return type C Array type for Types.Array tag not handled*)
val get_description:
  t structure -> string option
val get_display_name:
  t structure -> string option
(*Not implemented gtk_recent_info_get_gicon return type interface not handled*)
(*Not implemented gtk_recent_info_get_groups return type C Array type for Types.Array tag not handled*)
val get_icon:
  t structure -> int32 -> Pixbuf.t
val get_mime_type:
  t structure -> string option
val get_modified:
  t structure -> int64
val get_private_hint:
  t structure -> bool
val get_short_name:
  t structure -> string option
val get_uri:
  t structure -> string option
val get_uri_display:
  t structure -> string option
val get_visited:
  t structure -> int64
val has_application:
  t structure -> string -> bool
val has_group:
  t structure -> string -> bool
val is_local:
  t structure -> bool
val last_application:
  t structure -> string option
val _match:
  t structure -> t structure ptr -> bool
val incr_ref:
  t structure -> t structure ptr
val unref:
  t structure -> unit
