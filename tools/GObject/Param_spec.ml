open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let get_blurb =
  foreign "g_param_spec_get_blurb" (t_typ @-> returning (string_opt))
let get_default_value =
  foreign "g_param_spec_get_default_value" (t_typ @-> returning (ptr Value.t_typ))
let get_name =
  foreign "g_param_spec_get_name" (t_typ @-> returning (string_opt))
let get_name_quark =
  foreign "g_param_spec_get_name_quark" (t_typ @-> returning (uint32_t))
let get_nick =
  foreign "g_param_spec_get_nick" (t_typ @-> returning (string_opt))
let get_qdata =
  foreign "g_param_spec_get_qdata" (t_typ @-> uint32_t @-> returning (ptr_opt void))
let get_redirect_target =
  foreign "g_param_spec_get_redirect_target" (t_typ @-> returning (ptr t_typ))
let set_qdata =
  foreign "g_param_spec_set_qdata" (t_typ @-> uint32_t @-> ptr_opt void @-> returning (void))
let sink =
  foreign "g_param_spec_sink" (t_typ @-> returning (void))
let steal_qdata =
  foreign "g_param_spec_steal_qdata" (t_typ @-> uint32_t @-> returning (ptr_opt void))
