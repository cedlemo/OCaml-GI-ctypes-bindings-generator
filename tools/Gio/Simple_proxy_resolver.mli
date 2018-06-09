open Ctypes

type t
val t_typ : t typ

(*Not implemented g_simple_proxy_resolver_new return type interface not handled*)
val set_default_proxy :
  t -> string -> unit
val set_ignore_hosts :
  t -> string -> unit
val set_uri_proxy :
  t -> string -> string -> unit
