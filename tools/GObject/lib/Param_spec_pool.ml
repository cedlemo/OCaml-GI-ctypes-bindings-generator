open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Param_spec_pool"

(*Not implemented g_param_spec_pool_insert type object not implemented*)
(*Not implemented g_param_spec_pool_list type gType not implemented*)
(*Not implemented g_param_spec_pool_list_owned type gType not implemented*)
(*Not implemented g_param_spec_pool_lookup type gType not implemented*)
(*Not implemented g_param_spec_pool_remove type object not implemented*)
let create =
  foreign "g_param_spec_pool_new" (bool @-> returning (ptr t_typ))
