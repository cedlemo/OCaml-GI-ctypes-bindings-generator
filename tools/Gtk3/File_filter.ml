open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_file_filter_new" (void @-> returning (ptr t_typ))
let create_from_gvariant =
  foreign "gtk_file_filter_new_from_gvariant" (ptr Variant.t_typ @-> returning (ptr t_typ))
(*Not implemented gtk_file_filter_add_custom type callback not implemented*)
let add_mime_type =
  foreign "gtk_file_filter_add_mime_type" (t_typ @-> string @-> returning (void))
let add_pattern =
  foreign "gtk_file_filter_add_pattern" (t_typ @-> string @-> returning (void))
let add_pixbuf_formats =
  foreign "gtk_file_filter_add_pixbuf_formats" (t_typ @-> returning (void))
let filter =
  foreign "gtk_file_filter_filter" (t_typ @-> ptr File_filter_info.t_typ @-> returning (bool))
let get_name =
  foreign "gtk_file_filter_get_name" (t_typ @-> returning (string_opt))
let get_needed =
  foreign "gtk_file_filter_get_needed" (t_typ @-> returning (File_filter_flags.t_list_view))
let set_name =
  foreign "gtk_file_filter_set_name" (t_typ @-> string_opt @-> returning (void))
let to_gvariant =
  foreign "gtk_file_filter_to_gvariant" (t_typ @-> returning (ptr Variant.t_typ))
