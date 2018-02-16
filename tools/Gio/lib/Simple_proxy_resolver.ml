open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_simple_proxy_resolver_new return type interface not handled*)
let set_default_proxy =
  foreign "g_simple_proxy_resolver_set_default_proxy" (ptr t_typ @-> string @-> returning (void))
let set_ignore_hosts =
  foreign "g_simple_proxy_resolver_set_ignore_hosts" (ptr t_typ @-> string @-> returning (void))
let set_uri_proxy =
  foreign "g_simple_proxy_resolver_set_uri_proxy" (ptr t_typ @-> string @-> string @-> returning (void))
