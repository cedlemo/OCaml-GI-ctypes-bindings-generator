open Ctypes

type t
val t_typ : t structure typ

val f_contains: (Recent_filter_flags.t_list, t structure) field
val f_uri: (string, t structure) field
val f_display_name: (string, t structure) field
val f_mime_type: (string, t structure) field
(*Struct field Recent_filter_info : C Array type for Types.Array tag tag not implemented*)
(*Struct field Recent_filter_info : C Array type for Types.Array tag tag not implemented*)
val f_age: (int32, t structure) field

