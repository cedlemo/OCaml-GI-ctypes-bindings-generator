open Ctypes

type t
val t_typ : t structure typ

val f_contains: (File_filter_flags.t_list, t structure) field
val f_filename: (string, t structure) field
val f_uri: (string, t structure) field
val f_display_name: (string, t structure) field
val f_mime_type: (string, t structure) field

