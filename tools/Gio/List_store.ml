open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented g_list_store_new type gType not implemented*)
let append =
  foreign "g_list_store_append" (t_typ @-> ptr Object.t_typ @-> returning (void))
let insert =
  foreign "g_list_store_insert" (t_typ @-> uint32_t @-> ptr Object.t_typ @-> returning (void))
(*Not implemented g_list_store_insert_sorted type callback not implemented*)
let remove =
  foreign "g_list_store_remove" (t_typ @-> uint32_t @-> returning (void))
let remove_all =
  foreign "g_list_store_remove_all" (t_typ @-> returning (void))
(*Not implemented g_list_store_sort type callback not implemented*)
(*Not implemented g_list_store_splice type C Array type for Types.Array tag not implemented*)
