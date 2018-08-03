open Ctypes

type t
val t_typ : t typ

(*Not implemented g_list_store_new type gType not implemented*)
val append :
  t -> Object.t ptr -> unit
val insert :
  t -> Unsigned.uint32 -> Object.t ptr -> unit
(*Not implemented g_list_store_insert_sorted type callback not implemented*)
val remove :
  t -> Unsigned.uint32 -> unit
val remove_all :
  t -> unit
(*Not implemented g_list_store_sort type callback not implemented*)
(*Not implemented g_list_store_splice type C Array type for Types.Array tag not implemented*)
