open Ctypes

type t
val t_typ : t structure typ

val copy:
  t structure -> t structure ptr
val free:
  t structure -> unit
val get_data_type:
  t structure -> Atom.t structure ptr
(*Not implemented gtk_selection_data_get_data_with_length return type C Array type for Types.Array tag not handled*)
val get_display:
  t structure -> Display.t
val get_format:
  t structure -> int32
val get_length:
  t structure -> int32
val get_pixbuf:
  t structure -> Pixbuf.t
val get_selection:
  t structure -> Atom.t structure ptr
val get_target:
  t structure -> Atom.t structure ptr
(*Not implemented gtk_selection_data_get_targets type C Array type for Types.Array tag not implemented*)
val get_text:
  t structure -> string option
(*Not implemented gtk_selection_data_get_uris return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_selection_data_set type C Array type for Types.Array tag not implemented*)
val set_pixbuf:
  t structure -> Pixbuf.t -> bool
val set_text:
  t structure -> string -> int32 -> bool
(*Not implemented gtk_selection_data_set_uris type C Array type for Types.Array tag not implemented*)
val targets_include_image:
  t structure -> bool -> bool
val targets_include_rich_text:
  t structure -> Text_buffer.t -> bool
val targets_include_text:
  t structure -> bool
val targets_include_uri:
  t structure -> bool
