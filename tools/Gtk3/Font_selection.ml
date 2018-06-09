open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_font_selection_new" (void @-> returning (Widget.t_typ))
let get_face =
  foreign "gtk_font_selection_get_face" (t_typ @-> returning (Font_face.t_typ))
let get_face_list =
  foreign "gtk_font_selection_get_face_list" (t_typ @-> returning (Widget.t_typ))
let get_family =
  foreign "gtk_font_selection_get_family" (t_typ @-> returning (Font_family.t_typ))
let get_family_list =
  foreign "gtk_font_selection_get_family_list" (t_typ @-> returning (Widget.t_typ))
let get_font_name =
  foreign "gtk_font_selection_get_font_name" (t_typ @-> returning (string_opt))
let get_preview_entry =
  foreign "gtk_font_selection_get_preview_entry" (t_typ @-> returning (Widget.t_typ))
let get_preview_text =
  foreign "gtk_font_selection_get_preview_text" (t_typ @-> returning (string_opt))
let get_size =
  foreign "gtk_font_selection_get_size" (t_typ @-> returning (int32_t))
let get_size_entry =
  foreign "gtk_font_selection_get_size_entry" (t_typ @-> returning (Widget.t_typ))
let get_size_list =
  foreign "gtk_font_selection_get_size_list" (t_typ @-> returning (Widget.t_typ))
let set_font_name =
  foreign "gtk_font_selection_set_font_name" (t_typ @-> string @-> returning (bool))
let set_preview_text =
  foreign "gtk_font_selection_set_preview_text" (t_typ @-> string @-> returning (void))
