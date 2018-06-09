open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_emblem_new type interface not implemented*)
(*Not implemented g_emblem_new_with_origin type interface not implemented*)
(*Not implemented g_emblem_get_icon return type interface not handled*)
let get_origin =
  foreign "g_emblem_get_origin" (t_typ @-> returning (Emblem_origin.t_view))
