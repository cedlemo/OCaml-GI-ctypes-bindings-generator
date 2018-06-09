open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get =
  foreign "gtk_clipboard_get" (ptr Atom.t_typ @-> returning (t_typ))
let get_default =
  foreign "gtk_clipboard_get_default" (Display.t_typ @-> returning (t_typ))
let get_for_display =
  foreign "gtk_clipboard_get_for_display" (Display.t_typ @-> ptr Atom.t_typ @-> returning (t_typ))
let clear =
  foreign "gtk_clipboard_clear" (t_typ @-> returning (void))
let get_display =
  foreign "gtk_clipboard_get_display" (t_typ @-> returning (Display.t_typ))
let get_owner =
  foreign "gtk_clipboard_get_owner" (t_typ @-> returning (Object.t_typ))
(*Not implemented gtk_clipboard_request_contents type callback not implemented*)
(*Not implemented gtk_clipboard_request_image type callback not implemented*)
(*Not implemented gtk_clipboard_request_rich_text type callback not implemented*)
(*Not implemented gtk_clipboard_request_targets type callback not implemented*)
(*Not implemented gtk_clipboard_request_text type callback not implemented*)
(*Not implemented gtk_clipboard_request_uris type callback not implemented*)
(*Not implemented gtk_clipboard_set_can_store type C Array type for Types.Array tag not implemented*)
let set_image =
  foreign "gtk_clipboard_set_image" (t_typ @-> Pixbuf.t_typ @-> returning (void))
let set_text =
  foreign "gtk_clipboard_set_text" (t_typ @-> string @-> int32_t @-> returning (void))
let store =
  foreign "gtk_clipboard_store" (t_typ @-> returning (void))
let wait_for_contents =
  foreign "gtk_clipboard_wait_for_contents" (t_typ @-> ptr Atom.t_typ @-> returning (ptr_opt Selection_data.t_typ))
let wait_for_image =
  foreign "gtk_clipboard_wait_for_image" (t_typ @-> returning (Pixbuf.t_typ))
(*Not implemented gtk_clipboard_wait_for_rich_text return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_clipboard_wait_for_targets type C Array type for Types.Array tag not implemented*)
let wait_for_text =
  foreign "gtk_clipboard_wait_for_text" (t_typ @-> returning (string_opt))
(*Not implemented gtk_clipboard_wait_for_uris return type C Array type for Types.Array tag not handled*)
let wait_is_image_available =
  foreign "gtk_clipboard_wait_is_image_available" (t_typ @-> returning (bool))
let wait_is_rich_text_available =
  foreign "gtk_clipboard_wait_is_rich_text_available" (t_typ @-> Text_buffer.t_typ @-> returning (bool))
let wait_is_target_available =
  foreign "gtk_clipboard_wait_is_target_available" (t_typ @-> ptr Atom.t_typ @-> returning (bool))
let wait_is_text_available =
  foreign "gtk_clipboard_wait_is_text_available" (t_typ @-> returning (bool))
let wait_is_uris_available =
  foreign "gtk_clipboard_wait_is_uris_available" (t_typ @-> returning (bool))
