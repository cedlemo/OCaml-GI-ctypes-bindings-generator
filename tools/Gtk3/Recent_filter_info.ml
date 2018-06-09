open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Recent_filter_info"

let f_contains = field t_typ "contains" (Recent_filter_flags.t_list_view)
let f_uri = field t_typ "uri" (string)
let f_display_name = field t_typ "display_name" (string)
let f_mime_type = field t_typ "mime_type" (string)
(*Struct field Recent_filter_info : C Array type for Types.Array tag tag not implemented*)
(*Struct field Recent_filter_info : C Array type for Types.Array tag tag not implemented*)
let f_age = field t_typ "age" (int32_t)
let _ = seal t_typ

