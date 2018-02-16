open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_name =
  foreign "g_menu_link_iter_get_name" (ptr t_typ @-> returning (string_opt))
(*Not implemented g_menu_link_iter_get_next type object not implemented*)
(*Not implemented g_menu_link_iter_get_value return type object not handled*)
let next =
  foreign "g_menu_link_iter_next" (ptr t_typ @-> returning (bool))
