open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Param_spec_pool"

(*Not implemented g_param_spec_pool_insert type gType not implemented*)
(*Not implemented g_param_spec_pool_list type gType not implemented*)
(*Not implemented g_param_spec_pool_list_owned type gType not implemented*)
(*Not implemented g_param_spec_pool_lookup type gType not implemented*)
let remove =
  foreign "g_param_spec_pool_remove" (ptr t_typ @-> ptr Param_spec.t_typ @-> returning (void))
let create =
  foreign "g_param_spec_pool_new" (bool @-> returning (ptr t_typ))
