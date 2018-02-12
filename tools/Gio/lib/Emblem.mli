open Ctypes

type t
val t_typ : t typ

(*Not implemented g_emblem_new type interface not implemented*)
(*Not implemented g_emblem_new_with_origin type interface not implemented*)
(*Not implemented g_emblem_get_icon return type interface not handled*)
val get_origin:
  t structure ptr -> Emblem_origin.t
