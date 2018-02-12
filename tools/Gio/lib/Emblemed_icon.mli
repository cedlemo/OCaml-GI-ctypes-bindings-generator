open Ctypes

type t
val t_typ : t typ

(*Not implemented g_emblemed_icon_new type interface not implemented*)
(*Not implemented g_emblemed_icon_add_emblem type object not implemented*)
val clear_emblems:
  t structure ptr -> unit
val get_emblems:
  t structure ptr -> List.t structure ptr
(*Not implemented g_emblemed_icon_get_icon return type interface not handled*)
