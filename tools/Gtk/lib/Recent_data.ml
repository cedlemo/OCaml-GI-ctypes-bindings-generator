open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Recent_data"

let f_display_name = field t_typ "display_name" (string)
let f_description = field t_typ "description" (string)
let f_mime_type = field t_typ "mime_type" (string)
let f_app_name = field t_typ "app_name" (string)
let f_app_exec = field t_typ "app_exec" (string)
(*Struct field Recent_data : C Array type for Types.Array tag tag not implemented*)
let f_is_private = field t_typ "is_private" (bool)
let _ = seal t_typ

