open Ctypes

type t
val t_typ : t structure typ

(*Struct field Type_class : gType tag not implemented*)
val add_private:
  t structure ptr -> Unsigned.uint64 -> unit
(*Not implemented g_type_class_get_private type gType not implemented*)
val peek_parent:
  t structure ptr -> t structure ptr
val unref:
  t structure ptr -> unit
val adjust_private_offset:
  unit ptr option -> int32 ptr -> unit
(*Not implemented g_type_class_peek type gType not implemented*)
(*Not implemented g_type_class_peek_static type gType not implemented*)
(*Not implemented g_type_class_ref type gType not implemented*)
