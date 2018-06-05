open Ctypes

type t
val t_typ : t structure typ

val f_data: (unit ptr, t structure) field
val f_next: (t structure ptr, t structure) field
val f_prev: (t structure ptr, t structure) field
val f_ref_count: (Unsigned.uint32, t structure) field
val f_hook_id: (Unsigned.uint64, t structure) field
val f_flags: (Unsigned.uint32, t structure) field
val f_func: (unit ptr, t structure) field
(*Struct field Hook : callback tag not implemented*)

val compare_ids :
  t structure ptr -> t structure ptr -> int32
val destroy :
  Hook_list.t structure ptr -> Unsigned.uint64 -> bool
val destroy_link :
  Hook_list.t structure ptr -> t structure ptr -> unit
val free :
  Hook_list.t structure ptr -> t structure ptr -> unit
val insert_before :
  Hook_list.t structure ptr -> t structure ptr option -> t structure ptr -> unit
val prepend :
  Hook_list.t structure ptr -> t structure ptr -> unit
val unref :
  Hook_list.t structure ptr -> t structure ptr -> unit
