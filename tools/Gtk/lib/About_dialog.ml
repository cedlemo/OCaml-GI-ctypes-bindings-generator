open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_about_dialog_new" (void @-> returning (Widget.t_typ))
(*Not implemented gtk_about_dialog_add_credit_section type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_about_dialog_get_artists return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_about_dialog_get_authors return type C Array type for Types.Array tag not handled*)
let get_comments =
  foreign "gtk_about_dialog_get_comments" (t_typ @-> returning (string_opt))
let get_copyright =
  foreign "gtk_about_dialog_get_copyright" (t_typ @-> returning (string_opt))
(*Not implemented gtk_about_dialog_get_documenters return type C Array type for Types.Array tag not handled*)
let get_license =
  foreign "gtk_about_dialog_get_license" (t_typ @-> returning (string_opt))
let get_license_type =
  foreign "gtk_about_dialog_get_license_type" (t_typ @-> returning (License.t_view))
let get_logo =
  foreign "gtk_about_dialog_get_logo" (t_typ @-> returning (Pixbuf.t_typ))
let get_logo_icon_name =
  foreign "gtk_about_dialog_get_logo_icon_name" (t_typ @-> returning (string_opt))
let get_program_name =
  foreign "gtk_about_dialog_get_program_name" (t_typ @-> returning (string_opt))
let get_translator_credits =
  foreign "gtk_about_dialog_get_translator_credits" (t_typ @-> returning (string_opt))
let get_version =
  foreign "gtk_about_dialog_get_version" (t_typ @-> returning (string_opt))
let get_website =
  foreign "gtk_about_dialog_get_website" (t_typ @-> returning (string_opt))
let get_website_label =
  foreign "gtk_about_dialog_get_website_label" (t_typ @-> returning (string_opt))
let get_wrap_license =
  foreign "gtk_about_dialog_get_wrap_license" (t_typ @-> returning (bool))
(*Not implemented gtk_about_dialog_set_artists type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_about_dialog_set_authors type C Array type for Types.Array tag not implemented*)
let set_comments =
  foreign "gtk_about_dialog_set_comments" (t_typ @-> string_opt @-> returning (void))
let set_copyright =
  foreign "gtk_about_dialog_set_copyright" (t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_about_dialog_set_documenters type C Array type for Types.Array tag not implemented*)
let set_license =
  foreign "gtk_about_dialog_set_license" (t_typ @-> string_opt @-> returning (void))
let set_license_type =
  foreign "gtk_about_dialog_set_license_type" (t_typ @-> License.t_view @-> returning (void))
let set_logo =
  foreign "gtk_about_dialog_set_logo" (t_typ @-> Pixbuf.t_typ @-> returning (void))
let set_logo_icon_name =
  foreign "gtk_about_dialog_set_logo_icon_name" (t_typ @-> string_opt @-> returning (void))
let set_program_name =
  foreign "gtk_about_dialog_set_program_name" (t_typ @-> string @-> returning (void))
let set_translator_credits =
  foreign "gtk_about_dialog_set_translator_credits" (t_typ @-> string_opt @-> returning (void))
let set_version =
  foreign "gtk_about_dialog_set_version" (t_typ @-> string_opt @-> returning (void))
let set_website =
  foreign "gtk_about_dialog_set_website" (t_typ @-> string_opt @-> returning (void))
let set_website_label =
  foreign "gtk_about_dialog_set_website_label" (t_typ @-> string @-> returning (void))
let set_wrap_license =
  foreign "gtk_about_dialog_set_wrap_license" (t_typ @-> bool @-> returning (void))
