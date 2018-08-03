open Ctypes

type t
val t_typ : t typ

(*Not implemented g_emblemed_icon_new type interface not implemented*)
val add_emblem :
  t -> Emblem.t ptr -> unit
val clear_emblems :
  t -> unit
val get_emblems :
  t -> List.t structure (* Not implemented : interface *) ptr
(*Not implemented g_emblemed_icon_get_icon return type interface not handled*)
