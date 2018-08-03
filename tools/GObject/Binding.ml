open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_flags =
  foreign "g_binding_get_flags" (t_typ @-> returning (Binding_flags.t_list_view))
let get_source =
  foreign "g_binding_get_source" (t_typ @-> returning (ptr Object.t_typ))
let get_source_property =
  foreign "g_binding_get_source_property" (t_typ @-> returning (string_opt))
let get_target =
  foreign "g_binding_get_target" (t_typ @-> returning (ptr Object.t_typ))
let get_target_property =
  foreign "g_binding_get_target_property" (t_typ @-> returning (string_opt))
let unbind =
  foreign "g_binding_unbind" (t_typ @-> returning (void))
