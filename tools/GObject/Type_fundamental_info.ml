open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Type_fundamental_info"

let f_type_flags = field t_typ "type_flags" (Type_fundamental_flags.t_list_view)
let _ = seal t_typ

