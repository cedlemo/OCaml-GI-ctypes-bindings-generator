open Ctypes

type t
val t_typ : t typ

(*Not implemented gtk_combo_box_text_new return type object not handled*)
(*Not implemented gtk_combo_box_text_new_with_entry return type object not handled*)
val append:
  t structure ptr -> string option -> string -> unit
val append_text:
  t structure ptr -> string -> unit
val get_active_text:
  t structure ptr -> string option
val insert:
  t structure ptr -> int32 -> string option -> string -> unit
val insert_text:
  t structure ptr -> int32 -> string -> unit
val prepend:
  t structure ptr -> string option -> string -> unit
val prepend_text:
  t structure ptr -> string -> unit
val remove:
  t structure ptr -> int32 -> unit
val remove_all:
  t structure ptr -> unit
