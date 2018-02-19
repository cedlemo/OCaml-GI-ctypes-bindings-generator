open Ctypes

type t
val t_typ : t structure typ

val f_context_id: (string, t structure) field
val f_context_name: (string, t structure) field
val f_domain: (string, t structure) field
val f_domain_dirname: (string, t structure) field
val f_default_locales: (string, t structure) field

