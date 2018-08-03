open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Selection_data"

let copy =
  foreign "gtk_selection_data_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "gtk_selection_data_free" (ptr t_typ @-> returning (void))
let get_data_type =
  foreign "gtk_selection_data_get_data_type" (ptr t_typ @-> returning (ptr Atom.t_typ))
(*Not implemented gtk_selection_data_get_data_with_length return type C Array type for Types.Array tag not handled*)
let get_display =
  foreign "gtk_selection_data_get_display" (ptr t_typ @-> returning (ptr Display.t_typ))
let get_format =
  foreign "gtk_selection_data_get_format" (ptr t_typ @-> returning (int32_t))
let get_length =
  foreign "gtk_selection_data_get_length" (ptr t_typ @-> returning (int32_t))
let get_pixbuf =
  foreign "gtk_selection_data_get_pixbuf" (ptr t_typ @-> returning (ptr_opt Pixbuf.t_typ))
let get_selection =
  foreign "gtk_selection_data_get_selection" (ptr t_typ @-> returning (ptr Atom.t_typ))
let get_target =
  foreign "gtk_selection_data_get_target" (ptr t_typ @-> returning (ptr Atom.t_typ))
(*Not implemented gtk_selection_data_get_targets type C Array type for Types.Array tag not implemented*)
let get_text =
  foreign "gtk_selection_data_get_text" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_selection_data_get_uris return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_selection_data_set type C Array type for Types.Array tag not implemented*)
let set_pixbuf =
  foreign "gtk_selection_data_set_pixbuf" (ptr t_typ @-> ptr Pixbuf.t_typ @-> returning (bool))
let set_text =
  foreign "gtk_selection_data_set_text" (ptr t_typ @-> string @-> int32_t @-> returning (bool))
(*Not implemented gtk_selection_data_set_uris type C Array type for Types.Array tag not implemented*)
let targets_include_image =
  foreign "gtk_selection_data_targets_include_image" (ptr t_typ @-> bool @-> returning (bool))
let targets_include_rich_text =
  foreign "gtk_selection_data_targets_include_rich_text" (ptr t_typ @-> ptr Text_buffer.t_typ @-> returning (bool))
let targets_include_text =
  foreign "gtk_selection_data_targets_include_text" (ptr t_typ @-> returning (bool))
let targets_include_uri =
  foreign "gtk_selection_data_targets_include_uri" (ptr t_typ @-> returning (bool))
