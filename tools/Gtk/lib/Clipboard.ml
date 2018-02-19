open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_clipboard_get return type object not handled*)
(*Not implemented gtk_clipboard_get_default type object not implemented*)
(*Not implemented gtk_clipboard_get_for_display type object not implemented*)
let clear =
  foreign "gtk_clipboard_clear" (ptr t_typ @-> returning (void))
(*Not implemented gtk_clipboard_get_display return type object not handled*)
(*Not implemented gtk_clipboard_get_owner return type object not handled*)
(*Not implemented gtk_clipboard_request_contents type callback not implemented*)
(*Not implemented gtk_clipboard_request_image type callback not implemented*)
(*Not implemented gtk_clipboard_request_rich_text type object not implemented*)
(*Not implemented gtk_clipboard_request_targets type callback not implemented*)
(*Not implemented gtk_clipboard_request_text type callback not implemented*)
(*Not implemented gtk_clipboard_request_uris type callback not implemented*)
(*Not implemented gtk_clipboard_set_can_store type C Array type for Types.Array tag not implemented*)
(*Not implemented gtk_clipboard_set_image type object not implemented*)
let set_text =
  foreign "gtk_clipboard_set_text" (ptr t_typ @-> string @-> int32_t @-> returning (void))
let store =
  foreign "gtk_clipboard_store" (ptr t_typ @-> returning (void))
let wait_for_contents =
  foreign "gtk_clipboard_wait_for_contents" (ptr t_typ @-> ptr Atom.t_typ @-> returning (ptr_opt Selection_data.t_typ))
(*Not implemented gtk_clipboard_wait_for_image return type object not handled*)
(*Not implemented gtk_clipboard_wait_for_rich_text type object not implemented*)
(*Not implemented gtk_clipboard_wait_for_targets type C Array type for Types.Array tag not implemented*)
let wait_for_text =
  foreign "gtk_clipboard_wait_for_text" (ptr t_typ @-> returning (string_opt))
(*Not implemented gtk_clipboard_wait_for_uris return type C Array type for Types.Array tag not handled*)
let wait_is_image_available =
  foreign "gtk_clipboard_wait_is_image_available" (ptr t_typ @-> returning (bool))
(*Not implemented gtk_clipboard_wait_is_rich_text_available type object not implemented*)
let wait_is_target_available =
  foreign "gtk_clipboard_wait_is_target_available" (ptr t_typ @-> ptr Atom.t_typ @-> returning (bool))
let wait_is_text_available =
  foreign "gtk_clipboard_wait_is_text_available" (ptr t_typ @-> returning (bool))
let wait_is_uris_available =
  foreign "gtk_clipboard_wait_is_uris_available" (ptr t_typ @-> returning (bool))
