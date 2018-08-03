open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Closure"

let f_ref_count = field t_typ "ref_count" (uint32_t)
let f_meta_marshal_nouse = field t_typ "meta_marshal_nouse" (uint32_t)
let f_n_guards = field t_typ "n_guards" (uint32_t)
let f_n_fnotifiers = field t_typ "n_fnotifiers" (uint32_t)
let f_n_inotifiers = field t_typ "n_inotifiers" (uint32_t)
let f_in_inotify = field t_typ "in_inotify" (uint32_t)
let f_floating = field t_typ "floating" (uint32_t)
let f_derivative_flag = field t_typ "derivative_flag" (uint32_t)
let f_in_marshal = field t_typ "in_marshal" (uint32_t)
let f_is_invalid = field t_typ "is_invalid" (uint32_t)
(*Struct field Closure : callback tag not implemented*)
let f_data = field t_typ "data" (ptr void)
let f_notifiers = field t_typ "notifiers" (ptr Closure_notify_data.t_typ)
let _ = seal t_typ

let create_object =
  foreign "g_closure_new_object" (uint32_t @-> ptr Object.t_typ @-> returning (ptr t_typ))
let create_simple =
  foreign "g_closure_new_simple" (uint32_t @-> ptr_opt void @-> returning (ptr t_typ))
let invalidate =
  foreign "g_closure_invalidate" (ptr t_typ @-> returning (void))
(*Not implemented g_closure_invoke type C Array type for Types.Array tag not implemented*)
let incr_ref =
  foreign "g_closure_ref" (ptr t_typ @-> returning (ptr t_typ))
let sink =
  foreign "g_closure_sink" (ptr t_typ @-> returning (void))
let unref =
  foreign "g_closure_unref" (ptr t_typ @-> returning (void))
