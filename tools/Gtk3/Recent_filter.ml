open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_recent_filter_new" (void @-> returning (ptr t_typ))
let add_age =
  foreign "gtk_recent_filter_add_age" (t_typ @-> int32_t @-> returning (void))
let add_application =
  foreign "gtk_recent_filter_add_application" (t_typ @-> string @-> returning (void))
(*Not implemented gtk_recent_filter_add_custom type callback not implemented*)
let add_group =
  foreign "gtk_recent_filter_add_group" (t_typ @-> string @-> returning (void))
let add_mime_type =
  foreign "gtk_recent_filter_add_mime_type" (t_typ @-> string @-> returning (void))
let add_pattern =
  foreign "gtk_recent_filter_add_pattern" (t_typ @-> string @-> returning (void))
let add_pixbuf_formats =
  foreign "gtk_recent_filter_add_pixbuf_formats" (t_typ @-> returning (void))
let filter =
  foreign "gtk_recent_filter_filter" (t_typ @-> ptr Recent_filter_info.t_typ @-> returning (bool))
let get_name =
  foreign "gtk_recent_filter_get_name" (t_typ @-> returning (string_opt))
let get_needed =
  foreign "gtk_recent_filter_get_needed" (t_typ @-> returning (Recent_filter_flags.t_list_view))
let set_name =
  foreign "gtk_recent_filter_set_name" (t_typ @-> string @-> returning (void))
