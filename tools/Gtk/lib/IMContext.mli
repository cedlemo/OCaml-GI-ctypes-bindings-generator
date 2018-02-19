open Ctypes

type t
val t_typ : t typ

val delete_surrounding:
  t structure ptr -> int32 -> int32 -> bool
val filter_keypress:
  t structure ptr -> Event_key.t structure ptr -> bool
val focus_in:
  t structure ptr -> unit
val focus_out:
  t structure ptr -> unit
val get_preedit_string :
  t structure ptr -> (string * Attr_list.t structure ptr * int32)
val get_surrounding :
  t structure ptr -> (bool * string * int32)
val reset:
  t structure ptr -> unit
(*Not implemented gtk_im_context_set_client_window type object not implemented*)
val set_cursor_location:
  t structure ptr -> Rectangle.t structure ptr -> unit
val set_surrounding:
  t structure ptr -> string -> int32 -> int32 -> unit
val set_use_preedit:
  t structure ptr -> bool -> unit
