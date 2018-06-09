open Ctypes

type t
val t_typ : t typ

val get_default :
  unit -> t
val lookup_by_address :
  t -> Inet_address.t -> Cancellable.t -> (string option, Error.t structure ptr option) result
(*Not implemented g_resolver_lookup_by_address_async type callback not implemented*)
(*Not implemented g_resolver_lookup_by_address_finish type interface not implemented*)
val lookup_by_name :
  t -> string -> Cancellable.t -> (List.t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_resolver_lookup_by_name_async type callback not implemented*)
(*Not implemented g_resolver_lookup_by_name_finish type interface not implemented*)
val lookup_records :
  t -> string -> Resolver_record_type.t -> Cancellable.t -> (List.t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_resolver_lookup_records_async type callback not implemented*)
(*Not implemented g_resolver_lookup_records_finish type interface not implemented*)
val lookup_service :
  t -> string -> string -> string -> Cancellable.t -> (List.t structure ptr option, Error.t structure ptr option) result
(*Not implemented g_resolver_lookup_service_async type callback not implemented*)
(*Not implemented g_resolver_lookup_service_finish type interface not implemented*)
val set_default :
  t -> unit
