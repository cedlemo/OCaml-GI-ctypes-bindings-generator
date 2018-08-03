open Ctypes

type t
val t_typ : t typ

val get :
  Atom.t structure ptr -> t ptr
val get_default :
  Display.t ptr -> t ptr
val get_for_display :
  Display.t ptr -> Atom.t structure ptr -> t ptr
val clear :
  t -> unit
val get_display :
  t -> Display.t ptr
val get_owner :
  t -> Object.t ptr option
(*Not implemented gtk_clipboard_request_contents type callback not implemented*)
(*Not implemented gtk_clipboard_request_image type callback not implemented*)
(*Not implemented gtk_clipboard_request_rich_text type callback not implemented*)
(*Not implemented gtk_clipboard_request_targets type callback not implemented*)
(*Not implemented gtk_clipboard_request_text type callback not implemented*)
(*Not implemented gtk_clipboard_request_uris type callback not implemented*)
(*Not implemented gtk_clipboard_set_can_store type C Array type for Types.Array tag not implemented*)
val set_image :
  t -> Pixbuf.t ptr -> unit
val set_text :
  t -> string -> int32 -> unit
val store :
  t -> unit
val wait_for_contents :
  t -> Atom.t structure ptr -> Selection_data.t structure ptr option
val wait_for_image :
  t -> Pixbuf.t ptr option
(*Not implemented gtk_clipboard_wait_for_rich_text return type C Array type for Types.Array tag not handled*)
(*Not implemented gtk_clipboard_wait_for_targets type C Array type for Types.Array tag not implemented*)
val wait_for_text :
  t -> string option
(*Not implemented gtk_clipboard_wait_for_uris return type C Array type for Types.Array tag not handled*)
val wait_is_image_available :
  t -> bool
val wait_is_rich_text_available :
  t -> Text_buffer.t ptr -> bool
val wait_is_target_available :
  t -> Atom.t structure ptr -> bool
val wait_is_text_available :
  t -> bool
val wait_is_uris_available :
  t -> bool
