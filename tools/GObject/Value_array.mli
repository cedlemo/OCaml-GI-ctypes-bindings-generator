open Ctypes

type t
val t_typ : t structure typ

val f_n_values: (Unsigned.uint32, t structure) field
val f_values: (Value.t structure ptr, t structure) field
val f_n_prealloced: (Unsigned.uint32, t structure) field

val create :
  Unsigned.uint32 -> t structure ptr
val append :
  t structure ptr -> Value.t structure ptr option -> t structure ptr
val copy :
  t structure ptr -> t structure ptr
val get_nth :
  t structure ptr -> Unsigned.uint32 -> Value.t structure ptr
val insert :
  t structure ptr -> Unsigned.uint32 -> Value.t structure ptr option -> t structure ptr
val prepend :
  t structure ptr -> Value.t structure ptr option -> t structure ptr
val remove :
  t structure ptr -> Unsigned.uint32 -> t structure ptr
(*Not implemented g_value_array_sort_with_data type callback not implemented*)
