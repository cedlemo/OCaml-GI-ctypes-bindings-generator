open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_emblemed_icon_new type interface not implemented*)
(*Not implemented g_emblemed_icon_add_emblem type object not implemented*)
let clear_emblems =
  foreign "g_emblemed_icon_clear_emblems" (ptr t_typ @-> returning (void))
let get_emblems =
  foreign "g_emblemed_icon_get_emblems" (ptr t_typ @-> returning (ptr List.t_typ))
(*Not implemented g_emblemed_icon_get_icon return type interface not handled*)
