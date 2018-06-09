open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t
(*Not implemented gtk_about_dialog_add_credit_section type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_about_dialog_get_artists return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_about_dialog_get_authors return type C Array type for Types.Array tag not handled*)
val get_comments :
  t -> string option
val get_copyright :
  t -> string option
(*Not implemented gtk_about_dialog_get_documenters return type C Array type for Types.Array tag not handled*)
val get_license :
  t -> string option
val get_license_type :
  t -> License.t
val get_logo :
  t -> Pixbuf.t
val get_logo_icon_name :
  t -> string option
val get_program_name :
  t -> string option
val get_translator_credits :
  t -> string option
val get_version :
  t -> string option
val get_website :
  t -> string option
val get_website_label :
  t -> string option
val get_wrap_license :
  t -> bool
(*Not implemented gtk_about_dialog_set_artists type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_about_dialog_set_authors type C Array type for Types.Array tag not implemented*)
val set_comments :
  t -> string option -> unit
val set_copyright :
  t -> string option -> unit
(*Not implemented gtk_about_dialog_set_documenters type C Array type for Types.Array tag not implemented*)
val set_license :
  t -> string option -> unit
val set_license_type :
  t -> License.t -> unit
val set_logo :
  t -> Pixbuf.t -> unit
val set_logo_icon_name :
  t -> string option -> unit
val set_program_name :
  t -> string -> unit
val set_translator_credits :
  t -> string option -> unit
val set_version :
  t -> string option -> unit
val set_website :
  t -> string option -> unit
val set_website_label :
  t -> string -> unit
val set_wrap_license :
  t -> bool -> unit
