open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "IMContext_info"

let f_context_id = field t_typ "context_id" (string)
let f_context_name = field t_typ "context_name" (string)
let f_domain = field t_typ "domain" (string)
let f_domain_dirname = field t_typ "domain_dirname" (string)
let f_default_locales = field t_typ "default_locales" (string)
let _ = seal t_typ

