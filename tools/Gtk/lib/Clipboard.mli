open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_clipboard_get return type object not handled*)
(*Not implemented gtk_clipboard_get_default type object not implemented*)
(*Not implemented gtk_clipboard_get_for_display type object not implemented*)
val clear:
  t structure ptr -> unit
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
val set_text:
  t structure ptr -> string -> int32 -> unit
val store:
  t structure ptr -> unit
val wait_for_contents:
  t structure ptr -> Atom.t structure ptr -> Selection_data.t structure ptr option
(*Not implemented gtk_clipboard_wait_for_image return type object not handled*)
(*Not implemented gtk_clipboard_wait_for_rich_text type object not implemented*)
(*Not implemented gtk_clipboard_wait_for_targets type C Array type for Types.Array tag not implemented*)
val wait_for_text:
  t structure ptr -> string option
(*Not implemented gtk_clipboard_wait_for_uris return type C Array type for Types.Array tag not handled*)
val wait_is_image_available:
  t structure ptr -> bool
(*Not implemented gtk_clipboard_wait_is_rich_text_available type object not implemented*)
val wait_is_target_available:
  t structure ptr -> Atom.t structure ptr -> bool
val wait_is_text_available:
  t structure ptr -> bool
val wait_is_uris_available:
  t structure ptr -> bool
