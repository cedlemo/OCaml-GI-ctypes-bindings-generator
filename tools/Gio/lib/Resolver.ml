open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_resolver_get_default return type object not handled*)
(*Not implemented g_resolver_lookup_by_address type object not implemented*)
(*Not implemented g_resolver_lookup_by_address_async type object not implemented*)
(*Not implemented g_resolver_lookup_by_address_finish type interface not implemented*)
(*Not implemented g_resolver_lookup_by_name type object not implemented*)
(*Not implemented g_resolver_lookup_by_name_async type object not implemented*)
(*Not implemented g_resolver_lookup_by_name_finish type interface not implemented*)
(*Not implemented g_resolver_lookup_records type object not implemented*)
(*Not implemented g_resolver_lookup_records_async type object not implemented*)
(*Not implemented g_resolver_lookup_records_finish type interface not implemented*)
(*Not implemented g_resolver_lookup_service type object not implemented*)
(*Not implemented g_resolver_lookup_service_async type object not implemented*)
(*Not implemented g_resolver_lookup_service_finish type interface not implemented*)
let set_default =
  foreign "g_resolver_set_default" (ptr t_typ @-> returning (void))
