open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Type_class"

(*Struct field Type_class : gType tag not implemented*)
let add_private =
  foreign "g_type_class_add_private" (ptr t_typ @-> uint64_t @-> returning (void))
(*Not implemented g_type_class_get_private type gType not implemented*)
let peek_parent =
  foreign "g_type_class_peek_parent" (ptr t_typ @-> returning (ptr t_typ))
let unref =
  foreign "g_type_class_unref" (ptr t_typ @-> returning (void))
let adjust_private_offset =
  foreign "g_type_class_adjust_private_offset" (ptr_opt void @-> ptr int32_t @-> returning (void))
(*Not implemented g_type_class_peek type gType not implemented*)
(*Not implemented g_type_class_peek_static type gType not implemented*)
(*Not implemented g_type_class_ref type gType not implemented*)
