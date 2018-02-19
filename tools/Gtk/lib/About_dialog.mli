open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_about_dialog_new return type object not handled*)
(*Not implemented gtk_about_dialog_add_credit_section type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_about_dialog_get_artists return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_about_dialog_get_authors return type C Array type for Types.Array tag not handled*)
val get_comments:
  t structure ptr -> string option
val get_copyright:
  t structure ptr -> string option
(*Not implemented gtk_about_dialog_get_documenters return type C Array type for Types.Array tag not handled*)
val get_license:
  t structure ptr -> string option
val get_license_type:
  t structure ptr -> License.t
(*Not implemented gtk_about_dialog_get_logo return type object not handled*)
val get_logo_icon_name:
  t structure ptr -> string option
val get_program_name:
  t structure ptr -> string option
val get_translator_credits:
  t structure ptr -> string option
val get_version:
  t structure ptr -> string option
val get_website:
  t structure ptr -> string option
val get_website_label:
  t structure ptr -> string option
val get_wrap_license:
  t structure ptr -> bool
(*Not implemented gtk_about_dialog_set_artists type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_about_dialog_set_authors type C Array type for Types.Array tag not implemented*)
val set_comments:
  t structure ptr -> string option -> unit
val set_copyright:
  t structure ptr -> string option -> unit
(*Not implemented gtk_about_dialog_set_documenters type C Array type for Types.Array tag not implemented*)
val set_license:
  t structure ptr -> string option -> unit
val set_license_type:
  t structure ptr -> License.t -> unit
(*Not implemented gtk_about_dialog_set_logo type object not implemented*)
val set_logo_icon_name:
  t structure ptr -> string option -> unit
val set_program_name:
  t structure ptr -> string -> unit
val set_translator_credits:
  t structure ptr -> string option -> unit
val set_version:
  t structure ptr -> string option -> unit
val set_website:
  t structure ptr -> string option -> unit
val set_website_label:
  t structure ptr -> string -> unit
val set_wrap_license:
  t structure ptr -> bool -> unit
