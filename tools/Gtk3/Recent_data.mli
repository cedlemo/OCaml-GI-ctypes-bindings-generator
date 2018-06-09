open Ctypes

type t
val t_typ : t structure typ

val f_display_name: (string, t structure) field
val f_description: (string, t structure) field
val f_mime_type: (string, t structure) field
val f_app_name: (string, t structure) field
val f_app_exec: (string, t structure) field
(*Struct field Recent_data : C Array type for Types.Array tag tag not implemented*)
val f_is_private: (bool, t structure) field

