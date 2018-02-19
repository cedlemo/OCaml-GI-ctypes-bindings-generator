open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_recent_filter_new return type object not handled*)
let add_age =
  foreign "gtk_recent_filter_add_age" (ptr t_typ @-> int32_t @-> returning (void))
let add_application =
  foreign "gtk_recent_filter_add_application" (ptr t_typ @-> string @-> returning (void))
(*Not implemented gtk_recent_filter_add_custom type callback not implemented*)
let add_group =
  foreign "gtk_recent_filter_add_group" (ptr t_typ @-> string @-> returning (void))
let add_mime_type =
  foreign "gtk_recent_filter_add_mime_type" (ptr t_typ @-> string @-> returning (void))
let add_pattern =
  foreign "gtk_recent_filter_add_pattern" (ptr t_typ @-> string @-> returning (void))
let add_pixbuf_formats =
  foreign "gtk_recent_filter_add_pixbuf_formats" (ptr t_typ @-> returning (void))
let filter =
  foreign "gtk_recent_filter_filter" (ptr t_typ @-> ptr Recent_filter_info.t_typ @-> returning (bool))
let get_name =
  foreign "gtk_recent_filter_get_name" (ptr t_typ @-> returning (string_opt))
let get_needed =
  foreign "gtk_recent_filter_get_needed" (ptr t_typ @-> returning (Recent_filter_flags.t_list_view))
let set_name =
  foreign "gtk_recent_filter_set_name" (ptr t_typ @-> string @-> returning (void))
