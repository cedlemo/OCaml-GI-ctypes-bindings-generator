open Ctypes

type t
val t_typ : t structure typ

val f_keyval: (Unsigned.uint32, t structure) field
val f_modifiers: (Modifier_type.t_list, t structure) field
val f_binding_set: (Binding_set.t structure ptr, t structure) field
val f_destroyed: (Unsigned.uint32, t structure) field
val f_in_emission: (Unsigned.uint32, t structure) field
val f_marks_unbound: (Unsigned.uint32, t structure) field
val f_set_next: (t structure ptr, t structure) field
val f_hash_next: (t structure ptr, t structure) field
val f_signals: (Binding_signal.t structure ptr, t structure) field

val add_signal_from_string :
  Binding_set.t structure ptr -> string -> Token_type.t
val add_signall :
  Binding_set.t structure ptr -> Unsigned.uint32 -> Modifier_type.t_list -> string -> SList.t structure (* Binding_arg.t structure *) ptr -> unit
val remove :
  Binding_set.t structure ptr -> Unsigned.uint32 -> Modifier_type.t_list -> unit
val skip :
  Binding_set.t structure ptr -> Unsigned.uint32 -> Modifier_type.t_list -> unit
