open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Selection_data"

let copy =
  foreign "gtk_selection_data_copy" (t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_selection_data_free" (t_typ @-> returning (void))
let get_data_type =
  foreign "gtk_selection_data_get_data_type" (t_typ @-> returning (ptr Atom.t_typ))
(*Not implemented gtk_selection_data_get_data_with_length return type C Array type for Types.Array tag not handled*)
let get_display =
  foreign "gtk_selection_data_get_display" (t_typ @-> returning (Display.t_typ))
let get_format =
  foreign "gtk_selection_data_get_format" (t_typ @-> returning (int32_t))
let get_length =
  foreign "gtk_selection_data_get_length" (t_typ @-> returning (int32_t))
let get_pixbuf =
  foreign "gtk_selection_data_get_pixbuf" (t_typ @-> returning (Pixbuf.t_typ))
let get_selection =
  foreign "gtk_selection_data_get_selection" (t_typ @-> returning (ptr Atom.t_typ))
let get_target =
  foreign "gtk_selection_data_get_target" (t_typ @-> returning (ptr Atom.t_typ))
(*Not implemented gtk_selection_data_get_targets type C Array type for Types.Array tag not implemented*)
let get_text =
  foreign "gtk_selection_data_get_text" (t_typ @-> returning (string_opt))
(*Not implemented gtk_selection_data_get_uris return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_selection_data_set type C Array type for Types.Array tag not implemented*)
let set_pixbuf =
  foreign "gtk_selection_data_set_pixbuf" (t_typ @-> Pixbuf.t_typ @-> returning (bool))
let set_text =
  foreign "gtk_selection_data_set_text" (t_typ @-> string @-> int32_t @-> returning (bool))
(*Not implemented gtk_selection_data_set_uris type C Array type for Types.Array tag not implemented*)
let targets_include_image =
  foreign "gtk_selection_data_targets_include_image" (t_typ @-> bool @-> returning (bool))
let targets_include_rich_text =
  foreign "gtk_selection_data_targets_include_rich_text" (t_typ @-> Text_buffer.t_typ @-> returning (bool))
let targets_include_text =
  foreign "gtk_selection_data_targets_include_text" (t_typ @-> returning (bool))
let targets_include_uri =
  foreign "gtk_selection_data_targets_include_uri" (t_typ @-> returning (bool))
