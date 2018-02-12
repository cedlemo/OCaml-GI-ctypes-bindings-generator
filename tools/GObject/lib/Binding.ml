open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_flags =
  foreign "g_binding_get_flags" (ptr t_typ @-> returning (Binding_flags.t_list_view))
(*Not implemented g_binding_get_source return type object not handled*)
let get_source_property =
  foreign "g_binding_get_source_property" (ptr t_typ @-> returning (string_opt))
(*Not implemented g_binding_get_target return type object not handled*)
let get_target_property =
  foreign "g_binding_get_target_property" (ptr t_typ @-> returning (string_opt))
let unbind =
  foreign "g_binding_unbind" (ptr t_typ @-> returning (void))
