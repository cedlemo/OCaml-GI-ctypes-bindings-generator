open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_about_dialog_new return type object not handled*)
(*Not implemented gtk_about_dialog_add_credit_section type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_about_dialog_get_artists return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_about_dialog_get_authors return type C Array type for Types.Array tag not handled*)
let get_comments =
  foreign "gtk_about_dialog_get_comments" (ptr t_typ @-> returning (string_opt))
let get_copyright =
  foreign "gtk_about_dialog_get_copyright" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_about_dialog_get_documenters return type C Array type for Types.Array tag not handled*)
let get_license =
  foreign "gtk_about_dialog_get_license" (ptr t_typ @-> returning (string_opt))
let get_license_type =
  foreign "gtk_about_dialog_get_license_type" (ptr t_typ @-> returning (License.t_view))
(*Not implemented gtk_about_dialog_get_logo return type object not handled*)
let get_logo_icon_name =
  foreign "gtk_about_dialog_get_logo_icon_name" (ptr t_typ @-> returning (string_opt))
let get_program_name =
  foreign "gtk_about_dialog_get_program_name" (ptr t_typ @-> returning (string_opt))
let get_translator_credits =
  foreign "gtk_about_dialog_get_translator_credits" (ptr t_typ @-> returning (string_opt))
let get_version =
  foreign "gtk_about_dialog_get_version" (ptr t_typ @-> returning (string_opt))
let get_website =
  foreign "gtk_about_dialog_get_website" (ptr t_typ @-> returning (string_opt))
let get_website_label =
  foreign "gtk_about_dialog_get_website_label" (ptr t_typ @-> returning (string_opt))
let get_wrap_license =
  foreign "gtk_about_dialog_get_wrap_license" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_about_dialog_set_artists type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_about_dialog_set_authors type C Array type for Types.Array tag not implemented*)
let set_comments =
  foreign "gtk_about_dialog_set_comments" (ptr t_typ @-> string_opt @-> returning (void))
let set_copyright =
  foreign "gtk_about_dialog_set_copyright" (ptr t_typ @-> string_opt @-> returning (void))
(*Not implemented gtk_about_dialog_set_documenters type C Array type for Types.Array tag not implemented*)
let set_license =
  foreign "gtk_about_dialog_set_license" (ptr t_typ @-> string_opt @-> returning (void))
let set_license_type =
  foreign "gtk_about_dialog_set_license_type" (ptr t_typ @-> License.t_view @-> returning (void))
(*Not implemented gtk_about_dialog_set_logo type object not implemented*)
let set_logo_icon_name =
  foreign "gtk_about_dialog_set_logo_icon_name" (ptr t_typ @-> string_opt @-> returning (void))
let set_program_name =
  foreign "gtk_about_dialog_set_program_name" (ptr t_typ @-> string @-> returning (void))
let set_translator_credits =
  foreign "gtk_about_dialog_set_translator_credits" (ptr t_typ @-> string_opt @-> returning (void))
let set_version =
  foreign "gtk_about_dialog_set_version" (ptr t_typ @-> string_opt @-> returning (void))
let set_website =
  foreign "gtk_about_dialog_set_website" (ptr t_typ @-> string_opt @-> returning (void))
let set_website_label =
  foreign "gtk_about_dialog_set_website_label" (ptr t_typ @-> string @-> returning (void))
let set_wrap_license =
  foreign "gtk_about_dialog_set_wrap_license" (ptr t_typ @-> bool @-> returning (void))
