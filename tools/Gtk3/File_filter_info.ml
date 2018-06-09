open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "File_filter_info"

let f_contains = field t_typ "contains" (File_filter_flags.t_list_view)
let f_filename = field t_typ "filename" (string)
let f_uri = field t_typ "uri" (string)
let f_display_name = field t_typ "display_name" (string)
let f_mime_type = field t_typ "mime_type" (string)
let _ = seal t_typ

