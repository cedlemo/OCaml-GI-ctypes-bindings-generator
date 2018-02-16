open Ctypes

type t
val t_typ : t typ

(*Not implemented g_list_store_new type gType not implemented*)
(*Not implemented g_list_store_append type object not implemented*)
(*Not implemented g_list_store_insert type object not implemented*)
(*Not implemented g_list_store_insert_sorted type object not implemented*)
val remove:
  t structure ptr -> Unsigned.uint32 -> unit
val remove_all:
  t structure ptr -> unit
(*Not implemented g_list_store_sort type callback not implemented*)
(*Not implemented g_list_store_splice type C Array type for Types.Array tag not implemented*)
