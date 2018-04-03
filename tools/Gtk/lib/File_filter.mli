open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t
val create_from_gvariant :
  Variant.t structure ptr -> t
(*Not implemented gtk_file_filter_add_custom type callback not implemented*)
val add_mime_type :
  t -> string -> unit
val add_pattern :
  t -> string -> unit
val add_pixbuf_formats :
  t -> unit
val filter :
  t -> File_filter_info.t structure ptr -> bool
val get_name :
  t -> string option
val get_needed :
  t -> File_filter_flags.t_list
val set_name :
  t -> string option -> unit
val to_gvariant :
  t -> Variant.t structure ptr
