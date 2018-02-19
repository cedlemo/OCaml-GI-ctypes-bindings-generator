open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_file_filter_new return type object not handled*)
(*Not implemented gtk_file_filter_new_from_gvariant return type object not handled*)
(*Not implemented gtk_file_filter_add_custom type callback not implemented*)
let add_mime_type =
  foreign "gtk_file_filter_add_mime_type" (ptr t_typ @-> string @-> returning (void))
let add_pattern =
  foreign "gtk_file_filter_add_pattern" (ptr t_typ @-> string @-> returning (void))
let add_pixbuf_formats =
  foreign "gtk_file_filter_add_pixbuf_formats" (ptr t_typ @-> returning (void))
let filter =
  foreign "gtk_file_filter_filter" (ptr t_typ @-> ptr File_filter_info.t_typ @-> returning (bool))
let get_name =
  foreign "gtk_file_filter_get_name" (ptr t_typ @-> returning (string_opt))
let get_needed =
  foreign "gtk_file_filter_get_needed" (ptr t_typ @-> returning (File_filter_flags.t_list_view))
let set_name =
  foreign "gtk_file_filter_set_name" (ptr t_typ @-> string_opt @-> returning (void))
let to_gvariant =
  foreign "gtk_file_filter_to_gvariant" (ptr t_typ @-> returning (ptr Variant.t_typ))
