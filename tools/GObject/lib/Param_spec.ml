open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_blurb =
  foreign "g_param_spec_get_blurb" (ptr t_typ @-> returning (string_opt))
let get_default_value =
  foreign "g_param_spec_get_default_value" (ptr t_typ @-> returning (ptr Value.t_typ))
let get_name =
  foreign "g_param_spec_get_name" (ptr t_typ @-> returning (string_opt))
let get_name_quark =
  foreign "g_param_spec_get_name_quark" (ptr t_typ @-> returning (uint32_t))
let get_nick =
  foreign "g_param_spec_get_nick" (ptr t_typ @-> returning (string_opt))
let get_qdata =
  foreign "g_param_spec_get_qdata" (ptr t_typ @-> uint32_t @-> returning (ptr_opt void))
(*Not implemented g_param_spec_get_redirect_target return type object not handled*)
let set_qdata =
  foreign "g_param_spec_set_qdata" (ptr t_typ @-> uint32_t @-> ptr_opt void @-> returning (void))
let sink =
  foreign "g_param_spec_sink" (ptr t_typ @-> returning (void))
let steal_qdata =
  foreign "g_param_spec_steal_qdata" (ptr t_typ @-> uint32_t @-> returning (ptr_opt void))
