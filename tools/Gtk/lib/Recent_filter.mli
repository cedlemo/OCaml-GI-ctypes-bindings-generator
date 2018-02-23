open Ctypes

type t
val t_typ : t typ

val create:
  unit -> t
val add_age:
  t -> int32 -> unit
val add_application:
  t -> string -> unit
(*Not implemented gtk_recent_filter_add_custom type callback not implemented*)
val add_group:
  t -> string -> unit
val add_mime_type:
  t -> string -> unit
val add_pattern:
  t -> string -> unit
val add_pixbuf_formats:
  t -> unit
val filter:
  t -> Recent_filter_info.t structure ptr -> bool
val get_name:
  t -> string option
val get_needed:
  t -> Recent_filter_flags.t_list
val set_name:
  t -> string -> unit
