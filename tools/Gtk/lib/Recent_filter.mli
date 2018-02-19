open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_recent_filter_new return type object not handled*)
val add_age:
  t structure ptr -> int32 -> unit
val add_application:
  t structure ptr -> string -> unit
(*Not implemented gtk_recent_filter_add_custom type callback not implemented*)
val add_group:
  t structure ptr -> string -> unit
val add_mime_type:
  t structure ptr -> string -> unit
val add_pattern:
  t structure ptr -> string -> unit
val add_pixbuf_formats:
  t structure ptr -> unit
val filter:
  t structure ptr -> Recent_filter_info.t structure ptr -> bool
val get_name:
  t structure ptr -> string option
val get_needed:
  t structure ptr -> Recent_filter_flags.t_list
val set_name:
  t structure ptr -> string -> unit
