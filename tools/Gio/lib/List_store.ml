open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_list_store_new type gType not implemented*)
(*Not implemented g_list_store_append type object not implemented*)
(*Not implemented g_list_store_insert type object not implemented*)
(*Not implemented g_list_store_insert_sorted type object not implemented*)
let remove =
  foreign "g_list_store_remove" (ptr t_typ @-> uint32_t @-> returning (void))
let remove_all =
  foreign "g_list_store_remove_all" (ptr t_typ @-> returning (void))
(*Not implemented g_list_store_sort type callback not implemented*)
(*Not implemented g_list_store_splice type C Array type for Types.Array tag not implemented*)
