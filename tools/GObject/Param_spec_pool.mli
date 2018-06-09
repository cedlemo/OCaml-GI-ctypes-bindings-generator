open Ctypes

type t
val t_typ : t structure typ

(*Not implemented g_param_spec_pool_insert type gType not implemented*)
(*Not implemented g_param_spec_pool_list type gType not implemented*)
(*Not implemented g_param_spec_pool_list_owned type gType not implemented*)
(*Not implemented g_param_spec_pool_lookup type gType not implemented*)
val remove :
  t structure ptr -> Param_spec.t -> unit
val create :
  bool -> t structure ptr
