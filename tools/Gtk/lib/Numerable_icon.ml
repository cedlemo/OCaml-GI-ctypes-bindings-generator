open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_numerable_icon_new type interface not implemented*)
(*Not implemented gtk_numerable_icon_new_with_style_context type interface not implemented*)
(*Not implemented gtk_numerable_icon_get_background_gicon return type interface not handled*)
let get_background_icon_name =
  foreign "gtk_numerable_icon_get_background_icon_name" (t_typ @-> returning (string_opt))
let get_count =
  foreign "gtk_numerable_icon_get_count" (t_typ @-> returning (int32_t))
let get_label =
  foreign "gtk_numerable_icon_get_label" (t_typ @-> returning (string_opt))
let get_style_context =
  foreign "gtk_numerable_icon_get_style_context" (t_typ @-> returning (Style_context.t_typ))
(*Not implemented gtk_numerable_icon_set_background_gicon type interface not implemented*)
let set_background_icon_name =
  foreign "gtk_numerable_icon_set_background_icon_name" (t_typ @-> string_opt @-> returning (void))
let set_count =
  foreign "gtk_numerable_icon_set_count" (t_typ @-> int32_t @-> returning (void))
let set_label =
  foreign "gtk_numerable_icon_set_label" (t_typ @-> string_opt @-> returning (void))
let set_style_context =
  foreign "gtk_numerable_icon_set_style_context" (t_typ @-> Style_context.t_typ @-> returning (void))
