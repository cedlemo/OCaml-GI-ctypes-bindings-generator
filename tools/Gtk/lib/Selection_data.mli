open Ctypes

type t
val t_typ : t structure typ

val copy:
  t structure ptr -> t structure ptr
val free:
  t structure ptr -> unit
val get_data_type:
  t structure ptr -> Atom.t structure ptr
(*Not implemented gtk_selection_data_get_data_with_length return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_selection_data_get_display return type object not handled*)
val get_format:
  t structure ptr -> int32
val get_length:
  t structure ptr -> int32
(*Not implemented gtk_selection_data_get_pixbuf return type object not handled*)
val get_selection:
  t structure ptr -> Atom.t structure ptr
val get_target:
  t structure ptr -> Atom.t structure ptr
(*Not implemented gtk_selection_data_get_targets type C Array type for Types.Array tag not implemented*)
val get_text:
  t structure ptr -> string option
(*Not implemented gtk_selection_data_get_uris return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_selection_data_set type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_selection_data_set_pixbuf type object not implemented*)
val set_text:
  t structure ptr -> string -> int32 -> bool
(*Not implemented gtk_selection_data_set_uris type C Array type for Types.Array tag not implemented*)
val targets_include_image:
  t structure ptr -> bool -> bool
(*Not implemented gtk_selection_data_targets_include_rich_text type object not implemented*)
val targets_include_text:
  t structure ptr -> bool
val targets_include_uri:
  t structure ptr -> bool
