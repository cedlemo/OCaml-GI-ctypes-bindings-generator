open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_file_filter_new return type object not handled*)
(*Not implemented gtk_file_filter_new_from_gvariant return type object not handled*)
(*Not implemented gtk_file_filter_add_custom type callback not implemented*)
val add_mime_type:
  t structure ptr -> string -> unit
val add_pattern:
  t structure ptr -> string -> unit
val add_pixbuf_formats:
  t structure ptr -> unit
val filter:
  t structure ptr -> File_filter_info.t structure ptr -> bool
val get_name:
  t structure ptr -> string option
val get_needed:
  t structure ptr -> File_filter_flags.t_list
val set_name:
  t structure ptr -> string option -> unit
val to_gvariant:
  t structure ptr -> Variant.t structure ptr
